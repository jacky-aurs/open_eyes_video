import 'package:douban/page/notice/interactive/view.dart';
import 'package:douban/page/notice/push/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class NoticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NoticeLogic logic = Get.put(NoticeLogic());
    return MaterialApp(
      color: Colors.white,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: TabBar(
            controller: logic.tabController,
            tabs: logic.tabs,
            unselectedLabelColor: Colors.black45,
            labelColor: Colors.black,
            indicatorColor: Colors.white,
          ),
          body: TabBarView(
            controller: logic.tabController,
            children: [
              pushPage(),
              interactivePage(),
              Center(
                child: Text('3'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
