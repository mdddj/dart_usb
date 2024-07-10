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

## Api


#### get usb list

```dart
List<UsbInfo> usbList = await getUsbInfos();

// print
for (var element in usbList) {
    print(element.vendorId);
    print(element.productId);
}
```

#### get usb name

```dart
 Future<void> printName(UsbInfo usbInfo) async {
    final name = await usbInfo.readUsbName();
    print(name.productName);
    print(name.manufacturerName);
    print(name.serialNumber);
  }
```

#### write data 
```dart
  Future<void> writeData(UsbInfo info) async {
    UsbHandle handle = await info.open();
    handle.writeData(
        endpoint: 3, buf: "hello world".codeUnits, timeout: BigInt.from(1000));
  }
```



