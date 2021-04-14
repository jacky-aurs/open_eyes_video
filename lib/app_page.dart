import 'dart:async';

import 'package:douban/page/splash_page/view.dart';
import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: splash_pagePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
