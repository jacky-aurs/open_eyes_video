import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoticeLogic extends GetxController with SingleGetTickerProviderMixin{
  TabController tabController;
  final List<Tab> tabs = [
    Tab(text: '推送',),
    Tab(text: '互动',),
    Tab(text: '私信',),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = new TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }
}
