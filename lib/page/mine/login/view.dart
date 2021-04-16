import 'package:douban/page/mine/register/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class LoginPage extends StatelessWidget {
  final LoginLogic logic = Get.put(LoginLogic());

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController verificationCodeController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            '登录',
            style: TextStyle(color: Colors.black, fontSize: 15.0),
          ),
          leading: InkWell(
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            ),
            onTap: () {
              Get.back();
            },
          )),
      body: Container(
        alignment: Alignment.topCenter,
        color: Colors.white,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: 40)),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color:  Colors.black),
              height: 40,
              margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Padding(
                padding: EdgeInsets.only(left: 10,top: 15),
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  obscureText: false,
                  cursorColor: Colors.white,
                  controller: phoneController,
                  decoration: InputDecoration(
                      hintText: "请输入手机号",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.white),
                      border: InputBorder.none),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.black),
              height: 40,
              margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Padding(
                padding: EdgeInsets.only(left: 10,top: 15),
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  obscureText: true,
                  cursorColor: Colors.white,
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: "请输入密码",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.white),
                      border: InputBorder.none),

                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
                width: 230,
                height: 45,
                child: RaisedButton(
                  onPressed: () {
                    // HttpManager.getInstance(Address.ACCOUNT_BASE_URL)
                  },
                  child: Text("登录",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  textColor: Colors.white,
                  disabledTextColor: Colors.white54,
                  color: Colors.black,
                  shape: StadiumBorder(),
                )),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
                  width: 230,
                  height: 45,
                  child: RaisedButton(
                    onPressed: () {
                      // register(
                      //     phoneController.text,
                      //     verificationCodeController.text,
                      //     passwordController.text);
                      Get.off(RegisterPage());
                    },
                    child: Text("注册",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    textColor: Colors.white,
                    disabledTextColor: Colors.white54,
                    color: Color(0xFF4a0b6d),
                    shape: StadiumBorder(),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
