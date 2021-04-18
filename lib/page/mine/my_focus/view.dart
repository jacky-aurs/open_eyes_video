
import 'dart:math';

import 'package:douban/page/mine/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class myFocusPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final myFocusLogic _logic = Get.put(myFocusLogic());

    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text('我的关注',style: TextStyle(color: Colors.black,fontSize: 15),),
            leading: InkWell(
              child: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
              onTap: (){
                Get.back();
              },
            ),
            bottom: TabBar(
              controller: _logic.tabController,
              tabs: _logic.tabs,
              unselectedLabelColor: Colors.black,
              labelColor: Color(0xFF4a0b6d),
              indicatorColor: Colors.white,
              // indicatorColor: Colors.blueAccent,
            ),
          ),
          body: TabBarView(
            controller: _logic.tabController,
            children: [
              // MinePage(),
              // MinePage(),

              Center(child: Text('1'),),
              Center(child: Text('2'),)
            ],
          ),
      ),
    );
  }
}
