use std::{thread, time::Duration};

use flutter_rust_bridge::frb;
use rusb::{Device, DeviceHandle, GlobalContext, Version};

use crate::frb_generated::{StreamSink, FLUTTER_RUST_BRIDGE_HANDLER};


#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[derive(Debug, PartialEq, Eq, Clone, Copy, Hash, PartialOrd, Ord)]
pub struct UsbVersion(pub u8, pub u8, pub u8);

#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
pub struct UsbInfo {
    pub bus_number: u8,
    pub address: u8,
    pub vendor_id: u16,
    pub product_id: u16,
    pub num_configurations: u8,
    pub max_packet_size: u8,
    pub protocol_code: u8,
    pub sub_class_code: u8,
    pub class_code: u8,
    pub serial_number_string_index: Option<u8>,
    pub product_string_index: Option<u8>,
    pub manufacturer_string_index: Option<u8>,
    pub usb_version: UsbVersion,
    pub device_version: UsbVersion,
    pub descriptor_type: u8,
    pub length: u8,
    device_origin: Device<GlobalContext>,
}

/// get all usb infos
pub fn get_usb_infos() -> Vec<UsbInfo> {
    rusb::devices().unwrap().iter().map(|i| i.into()).collect()
}

impl UsbInfo {
    //打开设备
    pub fn open(&self) -> Result<UsbHandle, String> {
        let r = self.device_origin.open();
        match r {
            Ok(ok) => Ok(UsbHandle { handle: ok }),
            Err(e) => Err(e.to_string()),
        }
    }

    // 读取设备的名字
    pub fn read_usb_name(&self) -> Result<UsbName, String> {
        match self.device_origin.open() {
            Ok(handle) => {
                let timeout = Duration::from_secs(60);
                if let Ok(languages) = handle.read_languages(timeout) {
                    if languages.len() > 0 {
                        let language = languages[0];
                        let device_desc = self.device_origin.device_descriptor().unwrap();
                        let manufacturer_name = handle
                            .read_manufacturer_string(language, &device_desc, timeout)
                            .ok();
                        let product_name = handle
                            .read_product_string(language, &device_desc, timeout)
                            .ok();
                        let serial_number = handle
                            .read_serial_number_string(language, &device_desc, timeout)
                            .ok();
                        Ok(UsbName {
                            manufacturer_name: manufacturer_name,
                            product_name: product_name,
                            serial_number: serial_number,
                        })
                    } else {
                        Err("Unable to obtain device name".to_string())
                    }
                } else {
                    Err("Unable to obtain device name".to_string())
                }
            }
            Err(e) => Err(e.to_string()),
        }
    }
}

pub struct UsbHandle {
    handle: DeviceHandle<GlobalContext>,
}

#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
pub struct UsbName {
    pub manufacturer_name: Option<String>,
    pub product_name: Option<String>,
    pub serial_number: Option<String>,
}

impl UsbHandle {
    ///写数据
    pub fn write_data(&self, endpoint: u8, buf: &[u8], timeout: u64) -> Result<usize, String> {
        let r = self
            .handle
            .write_bulk(endpoint, buf, Duration::from_millis(timeout));
        match r {
            Ok(size) => Ok(size),
            Err(e) => Err(e.to_string()),
        }
    }
}

impl Into<UsbInfo> for Device<GlobalContext> {
    fn into(self) -> UsbInfo {
        let address = self.address();
        let desc = self.device_descriptor().unwrap();
        return UsbInfo {
            bus_number: self.bus_number(),
            address: address,
            vendor_id: desc.vendor_id(),
            product_id: desc.product_id(),
            num_configurations: desc.num_configurations(),
            max_packet_size: desc.max_packet_size(),
            protocol_code: desc.protocol_code(),
            sub_class_code: desc.sub_class_code(),
            class_code: desc.class_code(),
            serial_number_string_index: desc.serial_number_string_index(),
            product_string_index: desc.product_string_index(),
            manufacturer_string_index: desc.manufacturer_string_index(),
            usb_version: desc.usb_version().into(),
            device_version: desc.device_version().into(),
            descriptor_type: desc.descriptor_type(),
            length: desc.length(),
            device_origin: self,
        };
    }
}

impl Into<UsbVersion> for Version {
    fn into(self) -> UsbVersion {
        UsbVersion(self.0, self.1, self.2)
    }
}


///监听USB事件,它在线程池中执行
pub fn listen_usb_event_handle(listen: StreamSink<Vec<UsbInfo>>,sleep: Option<u64>) {
    FLUTTER_RUST_BRIDGE_HANDLER.thread_pool().0.execute(move ||{
        let infos = get_usb_infos();
        let _ = listen.add(infos);
        thread::sleep(Duration::from_millis(sleep.map_or(500, |v|v)))
    });
}