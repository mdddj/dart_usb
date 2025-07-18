import 'package:dart_usb/frb_generated.dart';

Future<void> initUsbLibrary() async {
  await RustLib.init();
}
