import 'package:douban/utils/constants_page.dart';
import 'package:douban/widght/seach_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class NoticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NoticeLogic logic = Get.put(NoticeLogic());
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
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
              Center(child: Text('1'),),
              Center(child: Text('2'),),
              Center(child: Text('3'),)
            ],
          ),
        ),
      ),
    );
  }
}
