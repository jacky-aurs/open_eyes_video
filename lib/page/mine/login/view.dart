import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class LoginPage extends StatelessWidget {
  final LoginLogic logic = Get.put(LoginLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '登录',
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
