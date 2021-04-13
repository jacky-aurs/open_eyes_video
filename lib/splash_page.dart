import 'package:douban/home_main_page.dart';
import 'package:douban/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/constants_page.dart';
import './utils/screenutils_page.dart';
import 'widght/timer_countdown_page.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Widget homePage = new HomeMainPage();
  bool isShowHomePage = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Offstage(
          offstage: isShowHomePage,
          child: homePage,
        ),
        Offstage(
          offstage: !isShowHomePage,
          child: Container(
            child: Stack(
              fit: StackFit.loose,
              children: [
                Image.asset(
                  Constancts.IMAGE_ASSETS + "splash.png",
                  fit: BoxFit.cover,
                  height: ScreenUtils.screenH(context),
                  width: ScreenUtils.screenW(context),
                ),
                SafeArea(
                    child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 30.0,
                    width: 65.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200]),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 20.0, right: 10.0),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: TimerCountPage(
                        onTimerFinish: () {
                          print("倒计时结束--------");
                          setState(() {
                            isShowHomePage = false;
                            print(isShowHomePage);
                          });
                        },
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}