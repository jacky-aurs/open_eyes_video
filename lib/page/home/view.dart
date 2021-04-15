import 'package:douban/utils/constants_page.dart';
import 'package:douban/utils/shared_preferences_util.dart';
import 'package:douban/widght/seach_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class HomePage extends StatelessWidget {
  final HomeLogic logic = Get.put(HomeLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new SeachPage(seachTitle: Constancts.HOME_SEAACH_TITLE),
    );
  }
}
