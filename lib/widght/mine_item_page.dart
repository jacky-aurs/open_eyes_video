import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              height: 80,
              child: Text(
                text,
                style: TextStyle(color: Colors.black87, fontSize: 16,fontWeight: FontWeight.w100),
              ),
            )));
  }
}
