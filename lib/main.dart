import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_page.dart';

void main() {
  //设置状态栏为白底黑字
  const SystemUiOverlayStyle dark = SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF000000),
    systemNavigationBarDividerColor: null,
    statusBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  );

  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(dark);
}
