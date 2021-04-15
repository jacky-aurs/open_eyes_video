import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'app_page.dart';
import 'package:get/get.dart';

void main() async {
  //设置状态栏为白底黑字
  const SystemUiOverlayStyle dark = SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF000000),
    systemNavigationBarDividerColor: null,
    statusBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init(); //初始化数据持久化存储
  runApp(GetMaterialApp(home: MyApp()));
  SystemChrome.setSystemUIOverlayStyle(dark);
}
