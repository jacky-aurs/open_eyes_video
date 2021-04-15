import 'package:douban/widght/more_item_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MorePage extends StatelessWidget {
  final MoreLogic logic = Get.put(MoreLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('更多',style: TextStyle(
          color: Colors.black,
          fontSize: 15
        ),),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20),
        scrollDirection: Axis.vertical,
        reverse: true,///是否滑动到底部
        physics: AlwaysScrollableScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              MoreItem(text: '会员中心',value: 0,),
              MoreItem(text: '用户协议',value: 1,),
              MoreItem(text: '隐私政策',value: 2,),
              MoreItem(text: '视频功能声明',value: 3,),
              MoreItem(text: '版权举报',value: 4,),
            ],
          ),
        ),
      ),
    );
  }
}
