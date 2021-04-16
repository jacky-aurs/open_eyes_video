import 'package:douban/page/community/view.dart';
import 'package:douban/page/home/view.dart';
import 'package:douban/page/mine/view.dart';
import 'package:douban/page/notice/view.dart';
import 'package:douban/utils/constants_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class HomeMainPage extends StatelessWidget {
  final HomeMainPageLogic logic = Get.put(HomeMainPageLogic());
  HomePage homePage;
  CommunityPage communityPage;
  NoticePage noticePage;
  MinePage minePage;

  CurrentPage() {
    switch (logic.currentIndex.value) {
      case 0:
        if (homePage == null) {
          homePage = new HomePage();
        }
        return homePage;
      case 1:
        if (communityPage == null) {
          communityPage = new CommunityPage();
        }
        return communityPage;
      case 2:
        if (noticePage == null) {
          noticePage = new NoticePage();
        }
        return noticePage;
      case 3:
        if (minePage == null) {
          minePage = new MinePage();
        }
        return minePage;
    }
    var a = logic.currentIndex.value;
    print("当前点击的下标 $a");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: ThemeData(
          brightness: Brightness.light,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: logic.currentIndex.value,
          onTap: (value) {
            logic.changeIndex(value);
          },
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Obx(() => Image.asset(
                      logic.currentIndex.value == 0
                          ? Constancts.IMAGE_TAB + 'ic_tab_home_active.png'
                          : Constancts.IMAGE_TAB + 'ic_tab_home_normal.png',
                      height: 20.0,
                      width: 20.0,
                    )),
                title: Obx(() => Text(
                      Constancts.TAB_HOME,
                      style: TextStyle(
                          fontSize: 10.0,
                          color: logic.currentIndex.value == 0
                              ? Color(0xFF4a0b6d)
                              : Colors.black45),
                    ))),
            BottomNavigationBarItem(
                icon: Obx(() => Image.asset(
                      logic.currentIndex.value == 1
                          ? Constancts.IMAGE_TAB + 'ic_tab_subject_normal.png'
                          : Constancts.IMAGE_TAB + 'ic_tab_subject_active.png',
                      height: 20.0,
                      width: 20.0,
                    )),
                title: Obx(() => Text(
                      Constancts.TAB_BOOK_VIDE,
                      style: TextStyle(
                          fontSize: 10.0,
                          color: logic.currentIndex.value == 1
                              ? Color(0xFF4a0b6d)
                              : Colors.black45),
                    ))),
            BottomNavigationBarItem(
                icon: Obx(() => Image.asset(
                      logic.currentIndex.value == 2
                          ? Constancts.IMAGE_TAB + 'ic_tab_group_normal.png'
                          : Constancts.IMAGE_TAB + 'ic_tab_group_active.png',
                      height: 20.0,
                      width: 20.0,
                    )),
                title: Obx(() => Text(
                      Constancts.TAB_GROUP,
                      style: TextStyle(
                          fontSize: 10.0,
                          color: logic.currentIndex.value == 2
                              ? Color(0xFF4a0b6d)
                              : Colors.black45),
                    ))),
            BottomNavigationBarItem(
                icon: Obx(() => Image.asset(
                      logic.currentIndex.value == 3
                          ? Constancts.IMAGE_TAB + 'ic_tab_shiji_active.png'
                          : Constancts.IMAGE_TAB + 'ic_tab_shiji_normal.png',
                      height: 20.0,
                      width: 20.0,
                    )),
                title: Obx(() => Text(
                      Constancts.TAB_BAZAAR,
                      style: TextStyle(
                          fontSize: 10.0,
                          color: logic.currentIndex.value == 3
                              ? Color(0xFF4a0b6d)
                              : Colors.black45),
                    ))),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
      body: Obx(() => CurrentPage()),
    );
  }
}
