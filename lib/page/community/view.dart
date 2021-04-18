import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CommunityPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final CommunityLogic logic = Get.put(CommunityLogic());
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: TabBar(
            controller:  logic.tabController,
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
