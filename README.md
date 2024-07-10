# dart_usb

dart library for obtaining USB interface information

## Getting Started

```yaml
dart_usb: any
```

## init

```dart
void main(){
  initUsbLibrary();
}
```

## api 


### get usb list

```dart
List<UsbInfo> usbList = await getUsbInfos();

// print
for (var element in usbList) {
    print(element.vendorId);
    print(element.productId);
}
```

### get usb name

```
UsbName name = await UsbInfo.readUsbName();
print(name.productName);
print(name.manufacturerName);
print(name.serialNumber);
```





## UsbInfo Object

```dart

@freezed
@meta.immutable
class UsbInfo with _$UsbInfo {
  const factory UsbInfo({
    required int busNumber,
    required int address,
    required int vendorId,
    required int productId,
    required int numConfigurations,
    required int maxPacketSize,
    required int protocolCode,
    required int subClassCode,
    required int classCode,
    int? serialNumberStringIndex,
    int? productStringIndex,
    int? manufacturerStringIndex,
    required UsbVersion usbVersion,
    required UsbVersion deviceVersion,
    required int descriptorType,
    required int length,
  }) = _UsbInfo;
}

@freezed
@meta.immutable
class UsbVersion with _$UsbVersion {
  const factory UsbVersion({
    required int field0,
    required int field1,
    required int field2,
  }) = _UsbVersion;
}

```