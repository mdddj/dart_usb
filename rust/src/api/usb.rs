use flutter_rust_bridge::frb;
use rusb::{Device, GlobalContext, Version};

#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
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
}

/// get all usb infos
pub fn get_usb_infos() -> Vec<UsbInfo> {
    rusb::devices().unwrap().iter().map(|i| i.into()).collect()
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
        };
    }
}

impl Into<UsbVersion> for Version {
    fn into(self) -> UsbVersion {
        UsbVersion(self.0, self.1, self.2)
    }
}
