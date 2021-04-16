import 'package:douban/page/mine/register/view.dart';
import 'package:douban/utils/screen_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MineItem extends StatelessWidget {
  final String text;
  final int value;

  const MineItem({Key key, @required this.text, @required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          switch (value) {
            case 0:
              Get.to(RegisterPage());
              break;
            case 1:
              Get.snackbar("提示", "请先登录APP");
              break;
            case 2:
              Get.snackbar("提示", "请先登录APP");
              break;
            case 3:
              Get.snackbar("提示", "请先登录APP");
              break;
            case 4:
              Get.snackbar("提示", "请先登录APP");
              break;
          }
        },
        child: Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.topCenter,
              height: 80,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            )));
  }
}
