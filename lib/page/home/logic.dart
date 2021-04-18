import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeLogic extends GetxController with SingleGetTickerProviderMixin{
    TabController tabController;
    final List<Tab> tabs = [
      Tab(text: '发现',),
      Tab(text: '日报',)
    ];

    @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = new TabController(length: tabs.length, vsync: this);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    tabController.dispose();
    super.onClose();
  }
}
