import 'dart:convert';

import 'package:dart_usb/api/usb.dart';
import 'package:dart_usb/dart_usb.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  initUsbLibrary();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int sumResult;
  late Future<int> sumAsyncResult;
  List<UsbInfo> usbs = [];

  @override
  void initState() {
    super.initState();
  }

  ///读取名称
  Future<void> printName(UsbInfo usbInfo) async {
    final name = await usbInfo.readUsbName();
    print(name.productName);
    print(name.manufacturerName);
    print(name.serialNumber);
  }

  Future<void> writeData(UsbInfo info) async {
    UsbHandle handle = await info.open();
    handle.writeData(
        endpoint: 3, buf: "hello world".codeUnits, timeout: BigInt.from(1000));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Native Packages'),
          ),
          body: ListView(
            children: [
              TextButton(
                  onPressed: () async {
                    usbs = await getUsbInfos();
                    setState(() {});
                    for (var element in usbs) {
                      print(element.vendorId);
                      print(element.productId);
                      printName(element);
                    }
                  },
                  child: Text("Get")),
              Text('${jsonEncode(usbs)}')
            ],
          )),
    );
  }
}
