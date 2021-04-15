import 'dart:io';

import 'package:douban/utils/constants_page.dart';
import 'package:douban/utils/device_info.dart';
import 'package:douban/utils/screen_utils.dart';
import 'package:douban/widght/mine_item_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MinePage extends StatelessWidget {
  final MineLogic logic = Get.put(MineLogic());
  final Future<String> deveInfo = "Unknown" as Future<String>;

  @override
  Widget build(BuildContext context) {
    const SystemUiOverlayStyle dark = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Color(0xFFF5F5F5),
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(dark);
    // Future<String> deveInfo = DeviceInfo().getDeviceInfo();
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 210,
              color: Colors.grey[100],
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                  top: ScreenUtils.getInstance().statusBarHeight),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80.0),
                              color: Colors.black12),
                          child: Image.asset(
                            Constancts.IMAGE_TAB_MINE + 'mine_ava.png',
                            height: 80,
                            width: 80,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "点击登录即可评论",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      Constancts.IMAGE_TAB_MINE +
                                          'mine_favorites.png',
                                      height: 20,
                                      width: 20,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        '收藏',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                                onTap: () {
                                  print('收藏');
                                },
                              ),
                              SizedBox(
                                width: 1,
                                height: 20,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(color: Colors.grey),
                                ),
                              ),
                              InkWell(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      Constancts.IMAGE_TAB_MINE +
                                          'mine_cache.png',
                                      height: 20,
                                      width: 20,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        '缓存',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                                onTap: () {
                                  print('缓存');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      Constancts.IMAGE_TAB_MINE + 'ic_action_more_grey.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                MineItem(text: "我的关注", value: 0),
                MineItem(text: "观看记录", value: 1),
                MineItem(text: "我的徽章", value: 2),
                MineItem(text: "功能设置", value: 3),
                MineItem(text: "成为作者", value: 4),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 80,
                        child: Obx(
                          () => Text(
                            "version ${logic.packageVersionInfo.value}",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        )))
              ],
            )
          ],
        ));
  }
}
