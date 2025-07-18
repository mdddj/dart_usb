import 'dart:convert';

import 'package:dart_usb/api/usb.dart';
import 'package:dart_usb/dart_usb.dart';
import 'package:flutter/material.dart';
import 'dart:async';

Future<void> main() async {
  await initUsbLibrary();
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
    final name = usbInfo.readUsbName();
    print(name.productName);
    print(name.manufacturerName);
    print(name.serialNumber);
  }

  Future<void> writeData(UsbInfo info) async {
    UsbHandle handle = info.open();
    handle.writeData(
        endpoint: 0x01,
        buf: "hello world".codeUnits,
        timeout: BigInt.from(1000));
  }

  void listenData() {
    // 500 毫秒
    listenUsbEventHandle(sleep: BigInt.from(500)).listen(
      (event) {
        print('usb devices : ${event}');
      },
    );
  }

  ///监听usb口数据
  Future<void> listenString(UsbInfo info) async {
    final handle = info.open(); //打开操作端口
    handle.setActiveConfiguration(config: 1); //设置设备配置(通常1)
    handle.claimInterface(iface: 0); //申明接口
    ///监听数据,endpoint:端点
    handle
        .readInterrupt(endpoint: 0x81, timeout: BigInt.from(1000))
        .listen((str) {
      print("监听到数据字符串:$str");
    });

    //handle.releaseInterface(iface: 0); 释放接口
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Dart usb plugin example'),
          ),
          body: ListView(
            children: [
              TextButton(
                  onPressed: () async {
                    usbs = getUsbInfos();
                    setState(() {});
                    for (var element in usbs) {
                      printName(element);
                    }
                  },
                  child: Text("Scan usb ...")),
              ...usbs.map(
                (e) {
                  return ListTile(
                      title: Text(
                          'vendor id: ${e.vendorId} product name:  ${e.readUsbName().productName}'),
                      trailing: ElevatedButton(
                          onPressed: () {
                            listenString(e);
                          },
                          child: const Text('listen data')));
                },
              )
            ],
          )),
    );
  }
}
