import 'dart:io';
import 'package:device_info/device_info.dart';
import 'package:get/get.dart';

class MineLogic extends GetxController {
  RxString packageVersionInfo = "Unknown".obs;

  void versionInfo() async {
    DeviceInfoPlugin deviceInfo = new DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      packageVersionInfo = androidInfo.version.release.obs;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      packageVersionInfo = iosInfo.systemVersion.toString().obs;
    }
  }
}
