import 'package:douban/page/bazaar_page.dart';
import 'package:douban/page/book_video_page.dart';
import 'package:douban/page/group_page.dart';
import 'package:douban/page/home_page.dart';
import 'package:douban/utils/constants_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class HomeMainPage extends StatelessWidget {
  final HomeMainPageLogic logic = Get.put(HomeMainPageLogic());
  HomePage homePage;
  BazaarPage bazaarPage;
  BookVideoPage bookVideoPage;
  GroupPage groupPage;

  CurrentPage() {
    switch (logic.currentIndex.value) {
      case 0:
        if (homePage == null) {
          homePage = new HomePage();
        }
        return homePage;
      case 1:
        if (bookVideoPage == null) {
          bookVideoPage = new BookVideoPage();
        }
        return bookVideoPage;
      case 2:
        if (groupPage == null) {
          groupPage = new GroupPage();
        }
        return bookVideoPage;
      case 3:
        if (bazaarPage == null) {
          bazaarPage = new BazaarPage();
        }
        return bazaarPage;
    }
    var a = logic.currentIndex.value;
    print("当前点击的下标 $a");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
                    height: 30.0,
                    width: 30.0,
                  )),
              title: Obx(() => Text(
                    Constancts.TAB_HOME,
                    style: TextStyle(
                        fontSize: 12.0,
                        color: logic.currentIndex.value == 0
                            ? Colors.green
                            : Colors.black45),
                  ))),
          BottomNavigationBarItem(
              icon: Obx(() => Image.asset(
                    logic.currentIndex.value == 1
                        ? Constancts.IMAGE_TAB + 'ic_tab_subject_active.png'
                        : Constancts.IMAGE_TAB + 'ic_tab_subject_normal.png',
                    height: 30.0,
                    width: 30.0,
                  )),
              title: Obx(() => Text(
                    Constancts.TAB_BOOK_VIDE,
                    style: TextStyle(
                        fontSize: 12.0,
                        color: logic.currentIndex.value == 1
                            ? Colors.green
                            : Colors.black45),
                  ))),
          BottomNavigationBarItem(
              icon: Obx(() => Image.asset(
                    logic.currentIndex.value == 2
                        ? Constancts.IMAGE_TAB + 'ic_tab_group_active.png'
                        : Constancts.IMAGE_TAB + 'ic_tab_group_normal.png',
                    height: 30.0,
                    width: 30.0,
                  )),
              title: Obx(() => Text(
                    Constancts.TAB_GROUP,
                    style: TextStyle(
                        fontSize: 12.0,
                        color: logic.currentIndex.value == 2
                            ? Colors.green
                            : Colors.black45),
                  ))),
          BottomNavigationBarItem(
              icon: Obx(() => Image.asset(
                    logic.currentIndex.value == 3
                        ? Constancts.IMAGE_TAB + 'ic_tab_shiji_active.png'
                        : Constancts.IMAGE_TAB + 'ic_tab_shiji_normal.png',
                    height: 30.0,
                    width: 30.0,
                  )),
              title: Obx(() => Text(
                    Constancts.TAB_BAZAAR,
                    style: TextStyle(
                        fontSize: 12.0,
                        color: logic.currentIndex.value == 3
                            ? Colors.green
                            : Colors.black45),
                  ))),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      body: CurrentPage(),
    );
  }
}
