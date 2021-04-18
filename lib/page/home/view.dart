import 'package:douban/utils/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logic.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeLogic logic = Get.put(HomeLogic());

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: TabBar(
            controller: logic.tabController,
            tabs: logic.tabs,
            unselectedLabelColor: Colors.black,
            labelColor: Color(0xFF4a0b6d),
            indicatorColor: Colors.white,
          ),
          body: TabBarView(
            controller: logic.tabController,
            children: [
              Center(child: Text('1'),),
              Center(child: Text('2'),)
            ],
          ),
        ),
      ),
    );
  }
}
