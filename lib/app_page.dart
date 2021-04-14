import 'dart:async';

import 'package:douban/get_page/splash_page/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_page.dart';

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//
//
//     return MaterialApp(
//       color: Colors.white,
//       debugShowCheckedModeBanner: false,
//       home: SplashPage(),
//     );
//   }
// }

class Controller extends GetxController {}

class MyApp extends StatelessWidget {
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: splash_pagePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
