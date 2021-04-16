import 'package:douban/utils/screen_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreItem extends StatelessWidget {
  final String text;
  final int value;

  const MoreItem({Key key, @required this.text, @required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          switch (value) {
            case 0:
              break;
            case 1:
              break;
            case 2:
              break;
            case 3:
              break;
            case 4:
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
                  fontSize: 14,
                ),
              ),
            )));
  }
}
