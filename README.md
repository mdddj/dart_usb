# dart_usb

dart library for obtaining USB interface information


![./images/Snipaste_2025-07-18_10-32-05.png](./images/Snipaste_2025-07-18_10-32-05.png)


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

### listen

```dart
  void listenData() {
    // 500 mills
    listenUsbEventHandle(sleep: BigInt.from(500)).listen(
      (event) {
        print('usb devices : ${event}');
      },
    );
  }
```



Macos 

> You need to open USB permission on macOS

![macos](./images/macos.png)


> in m1 mac , you need exclude arm64 , and run in rosetta

![macos02](./images/mac02.png)