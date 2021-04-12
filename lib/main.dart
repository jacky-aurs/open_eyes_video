import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_page.dart';

void main() {
  runApp(MyApp());
  if(Platform.isAndroid){
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
