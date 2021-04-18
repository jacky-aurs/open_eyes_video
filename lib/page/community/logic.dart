import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunityLogic extends GetxController with SingleGetTickerProviderMixin{
    TabController tabController;
    final List<Tab> tabs = [
      Tab(text: '推荐',),
      Tab(text: '关注',),
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
