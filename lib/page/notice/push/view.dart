import 'package:douban/repository/mine_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class pushPage extends StatelessWidget {
  final pushLogic logic = Get.put(pushLogic());

  @override
  Widget build(BuildContext context) {
    getData();
    return ListView(
      children: [],
    );
  }
}

void getData() {
  MineRespository.getMessage("")
      .then((value) =>{

  });
}
