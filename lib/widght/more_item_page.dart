import 'package:douban/utils/screen_utils.dart';
import 'package:douban/widght/WebViewPage.dart';
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
              WebView webView =new WebView(url: "https://www.eyepetizer.net/agreement.html", title: '用户隐私');
              Get.to(webView);
              break;
            case 2:
              WebView webView =new WebView(url: "https://www.kaiyanapp.com/legal_notices.html", title: '隐私政策');
              Get.to(webView);
              break;
            case 3:
              WebView webView =new WebView(url: "https://www.eyepetizer.net/right.html", title: '视频功能声明');
              Get.to(webView);
              break;
            case 4:
              WebView webView =new WebView(url: "https://www.eyepetizer.net/right.html", title: '版权举报');
              Get.to(webView);
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
