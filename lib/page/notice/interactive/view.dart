import 'package:douban/page/mine/login/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

///互动
class interactivePage extends StatelessWidget {
  final interactiveLogic logic = Get.put(interactiveLogic());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            Get.to(LoginPage());
          },
          child: Text(
            '暂无互动消息,请先登录 \n 登录接口没请求通 \n 登录不能使用',
            style: TextStyle(color: Colors.grey[200], fontSize: 12),
          ),
        ),
      ),
    );
  }
}
