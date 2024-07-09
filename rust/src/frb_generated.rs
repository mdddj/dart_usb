// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.1.0.

#![allow(
    non_camel_case_types,
    unused,
    non_snake_case,
    clippy::needless_return,
    clippy::redundant_closure_call,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::unused_unit,
    clippy::double_parens,
    clippy::let_and_return,
    clippy::too_many_arguments,
    clippy::match_single_binding,
    clippy::clone_on_copy,
    clippy::let_unit_value,
    clippy::deref_addrof,
    clippy::explicit_auto_deref,
    clippy::borrow_deref_ref,
    clippy::needless_borrow
)]

// Section: imports

use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::{transform_result_dco, Lifetimeable, Lockable};
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: boilerplate

flutter_rust_bridge::frb_generated_boilerplate!(
    default_stream_sink_codec = SseCodec,
    default_rust_opaque = RustOpaqueMoi,
    default_rust_auto_opaque = RustAutoOpaqueMoi,
);
pub(crate) const FLUTTER_RUST_BRIDGE_CODEGEN_VERSION: &str = "2.1.0";
pub(crate) const FLUTTER_RUST_BRIDGE_CODEGEN_CONTENT_HASH: i32 = 690733595;

// Section: executor

flutter_rust_bridge::frb_generated_default_handler!();

// Section: wire_funcs

fn wire__crate__api__usb__get_usb_infos_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "get_usb_infos",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let message = unsafe {
                flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(
                    ptr_,
                    rust_vec_len_,
                    data_len_,
                )
            };
            let mut deserializer =
                flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            deserializer.end();
            move |context| {
                transform_result_sse::<_, ()>((move || {
                    let output_ok = Result::<_, ()>::Ok(crate::api::usb::get_usb_infos())?;
                    Ok(output_ok)
                })())
            }
        },
    )
}

// Section: dart2rust

impl SseDecode for Vec<crate::api::usb::UsbInfo> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut len_ = <i32>::sse_decode(deserializer);
        let mut ans_ = vec![];
        for idx_ in 0..len_ {
            ans_.push(<crate::api::usb::UsbInfo>::sse_decode(deserializer));
        }
        return ans_;
    }
}

impl SseDecode for Option<u8> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        if (<bool>::sse_decode(deserializer)) {
            return Some(<u8>::sse_decode(deserializer));
        } else {
            return None;
        }
    }
}

impl SseDecode for u16 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u16::<NativeEndian>().unwrap()
    }
}

impl SseDecode for u8 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u8().unwrap()
    }
}

impl SseDecode for () {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {}
}

impl SseDecode for crate::api::usb::UsbInfo {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut var_busNumber = <u8>::sse_decode(deserializer);
        let mut var_address = <u8>::sse_decode(deserializer);
        let mut var_vendorId = <u16>::sse_decode(deserializer);
        let mut var_productId = <u16>::sse_decode(deserializer);
        let mut var_numConfigurations = <u8>::sse_decode(deserializer);
        let mut var_maxPacketSize = <u8>::sse_decode(deserializer);
        let mut var_protocolCode = <u8>::sse_decode(deserializer);
        let mut var_subClassCode = <u8>::sse_decode(deserializer);
        let mut var_classCode = <u8>::sse_decode(deserializer);
        let mut var_serialNumberStringIndex = <Option<u8>>::sse_decode(deserializer);
        let mut var_productStringIndex = <Option<u8>>::sse_decode(deserializer);
        let mut var_manufacturerStringIndex = <Option<u8>>::sse_decode(deserializer);
        let mut var_usbVersion = <crate::api::usb::UsbVersion>::sse_decode(deserializer);
        let mut var_deviceVersion = <crate::api::usb::UsbVersion>::sse_decode(deserializer);
        let mut var_descriptorType = <u8>::sse_decode(deserializer);
        let mut var_length = <u8>::sse_decode(deserializer);
        return crate::api::usb::UsbInfo {
            bus_number: var_busNumber,
            address: var_address,
            vendor_id: var_vendorId,
            product_id: var_productId,
            num_configurations: var_numConfigurations,
            max_packet_size: var_maxPacketSize,
            protocol_code: var_protocolCode,
            sub_class_code: var_subClassCode,
            class_code: var_classCode,
            serial_number_string_index: var_serialNumberStringIndex,
            product_string_index: var_productStringIndex,
            manufacturer_string_index: var_manufacturerStringIndex,
            usb_version: var_usbVersion,
            device_version: var_deviceVersion,
            descriptor_type: var_descriptorType,
            length: var_length,
        };
    }
}

impl SseDecode for crate::api::usb::UsbVersion {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut var_field0 = <u8>::sse_decode(deserializer);
        let mut var_field1 = <u8>::sse_decode(deserializer);
        let mut var_field2 = <u8>::sse_decode(deserializer);
        return crate::api::usb::UsbVersion(var_field0, var_field1, var_field2);
    }
}

impl SseDecode for i32 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_i32::<NativeEndian>().unwrap()
    }
}

impl SseDecode for bool {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u8().unwrap() != 0
    }
}

fn pde_ffi_dispatcher_primary_impl(
    func_id: i32,
    port: flutter_rust_bridge::for_generated::MessagePort,
    ptr: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len: i32,
    data_len: i32,
) {
    // Codec=Pde (Serialization + dispatch), see doc to use other codecs
    match func_id {
        1 => wire__crate__api__usb__get_usb_infos_impl(port, ptr, rust_vec_len, data_len),
        _ => unreachable!(),
    }
}

fn pde_ffi_dispatcher_sync_impl(
    func_id: i32,
    ptr: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len: i32,
    data_len: i32,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartSse {
    // Codec=Pde (Serialization + dispatch), see doc to use other codecs
    match func_id {
        _ => unreachable!(),
    }
}

// Section: rust2dart

// Codec=Dco (DartCObject based), see doc to use other codecs
impl flutter_rust_bridge::IntoDart for crate::api::usb::UsbInfo {
    fn into_dart(self) -> flutter_rust_bridge::for_generated::DartAbi {
        [
            self.bus_number.into_into_dart().into_dart(),
            self.address.into_into_dart().into_dart(),
            self.vendor_id.into_into_dart().into_dart(),
            self.product_id.into_into_dart().into_dart(),
            self.num_configurations.into_into_dart().into_dart(),
            self.max_packet_size.into_into_dart().into_dart(),
            self.protocol_code.into_into_dart().into_dart(),
            self.sub_class_code.into_into_dart().into_dart(),
            self.class_code.into_into_dart().into_dart(),
            self.serial_number_string_index.into_into_dart().into_dart(),
            self.product_string_index.into_into_dart().into_dart(),
            self.manufacturer_string_index.into_into_dart().into_dart(),
            self.usb_version.into_into_dart().into_dart(),
            self.device_version.into_into_dart().into_dart(),
            self.descriptor_type.into_into_dart().into_dart(),
            self.length.into_into_dart().into_dart(),
        ]
        .into_dart()
    }
}
impl flutter_rust_bridge::for_generated::IntoDartExceptPrimitive for crate::api::usb::UsbInfo {}
impl flutter_rust_bridge::IntoIntoDart<crate::api::usb::UsbInfo> for crate::api::usb::UsbInfo {
    fn into_into_dart(self) -> crate::api::usb::UsbInfo {
        self
    }
}
// Codec=Dco (DartCObject based), see doc to use other codecs
impl flutter_rust_bridge::IntoDart for crate::api::usb::UsbVersion {
    fn into_dart(self) -> flutter_rust_bridge::for_generated::DartAbi {
        [
            self.0.into_into_dart().into_dart(),
            self.1.into_into_dart().into_dart(),
            self.2.into_into_dart().into_dart(),
        ]
        .into_dart()
    }
}
impl flutter_rust_bridge::for_generated::IntoDartExceptPrimitive for crate::api::usb::UsbVersion {}
impl flutter_rust_bridge::IntoIntoDart<crate::api::usb::UsbVersion>
    for crate::api::usb::UsbVersion
{
    fn into_into_dart(self) -> crate::api::usb::UsbVersion {
        self
    }
}

impl SseEncode for Vec<crate::api::usb::UsbInfo> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <i32>::sse_encode(self.len() as _, serializer);
        for item in self {
            <crate::api::usb::UsbInfo>::sse_encode(item, serializer);
        }
    }
}

impl SseEncode for Option<u8> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <bool>::sse_encode(self.is_some(), serializer);
        if let Some(value) = self {
            <u8>::sse_encode(value, serializer);
        }
    }
}

impl SseEncode for u16 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_u16::<NativeEndian>(self).unwrap();
    }
}

impl SseEncode for u8 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_u8(self).unwrap();
    }
}

impl SseEncode for () {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {}
}

impl SseEncode for crate::api::usb::UsbInfo {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <u8>::sse_encode(self.bus_number, serializer);
        <u8>::sse_encode(self.address, serializer);
        <u16>::sse_encode(self.vendor_id, serializer);
        <u16>::sse_encode(self.product_id, serializer);
        <u8>::sse_encode(self.num_configurations, serializer);
        <u8>::sse_encode(self.max_packet_size, serializer);
        <u8>::sse_encode(self.protocol_code, serializer);
        <u8>::sse_encode(self.sub_class_code, serializer);
        <u8>::sse_encode(self.class_code, serializer);
        <Option<u8>>::sse_encode(self.serial_number_string_index, serializer);
        <Option<u8>>::sse_encode(self.product_string_index, serializer);
        <Option<u8>>::sse_encode(self.manufacturer_string_index, serializer);
        <crate::api::usb::UsbVersion>::sse_encode(self.usb_version, serializer);
        <crate::api::usb::UsbVersion>::sse_encode(self.device_version, serializer);
        <u8>::sse_encode(self.descriptor_type, serializer);
        <u8>::sse_encode(self.length, serializer);
    }
}

impl SseEncode for crate::api::usb::UsbVersion {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <u8>::sse_encode(self.0, serializer);
        <u8>::sse_encode(self.1, serializer);
        <u8>::sse_encode(self.2, serializer);
    }
}

impl SseEncode for i32 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_i32::<NativeEndian>(self).unwrap();
    }
}

impl SseEncode for bool {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_u8(self as _).unwrap();
    }
}

#[cfg(not(target_family = "wasm"))]
mod io {
    // This file is automatically generated, so please do not edit it.
    // Generated by `flutter_rust_bridge`@ 2.1.0.

    // Section: imports

    use super::*;
    use flutter_rust_bridge::for_generated::byteorder::{
        NativeEndian, ReadBytesExt, WriteBytesExt,
    };
    use flutter_rust_bridge::for_generated::{transform_result_dco, Lifetimeable, Lockable};
    use flutter_rust_bridge::{Handler, IntoIntoDart};

    // Section: boilerplate

    flutter_rust_bridge::frb_generated_boilerplate_io!();
}
#[cfg(not(target_family = "wasm"))]
pub use io::*;

/// cbindgen:ignore
#[cfg(target_family = "wasm")]
mod web {
    // This file is automatically generated, so please do not edit it.
    // Generated by `flutter_rust_bridge`@ 2.1.0.

    // Section: imports

    use super::*;
    use flutter_rust_bridge::for_generated::byteorder::{
        NativeEndian, ReadBytesExt, WriteBytesExt,
    };
    use flutter_rust_bridge::for_generated::wasm_bindgen;
    use flutter_rust_bridge::for_generated::wasm_bindgen::prelude::*;
    use flutter_rust_bridge::for_generated::{transform_result_dco, Lifetimeable, Lockable};
    use flutter_rust_bridge::{Handler, IntoIntoDart};

    // Section: boilerplate

    flutter_rust_bridge::frb_generated_boilerplate_web!();
}
#[cfg(target_family = "wasm")]
pub use web::*;
