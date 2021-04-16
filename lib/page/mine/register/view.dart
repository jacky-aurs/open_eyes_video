import 'package:douban/widght/CountDownButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'logic.dart';

class RegisterPage extends StatelessWidget {
  final RegisterLogic logic = Get.put(RegisterLogic());

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController verificationCodeController = TextEditingController();

    // GlobalKey<_CountDownState> countDownKey = GlobalKey();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            '注册',
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
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.black),
              margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 15,
                ),
                child: TextField(
                  controller: phoneController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  maxLength: 11,
                  decoration: InputDecoration(
                    hintText: "请输入手机号",
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  style: TextStyle(),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: Expanded(
                          flex: 1,
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black),
                            child: TextField(
                              cursorColor: Colors.blueAccent,
                              controller: verificationCodeController,
                              decoration: InputDecoration(
                                  hintText: "请输入验证码",
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                  border: InputBorder.none),
                            ),
                          )),
                    ),
                    SizedBox(width: 10),
                    CountDownButton(
                        text: "获取验证码",
                        period: 60,
                        interval: 1,
                        onCountDownStart: () {
                          // getVerificationCode(phoneController.text);
                        })
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.black),
              height: 40,
              margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Padding(
                padding: EdgeInsets.only(left: 10,top: 15),
                child: TextField(
                  obscureText: true,
                  cursorColor: Colors.blueAccent,
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: "请输入密码",
                      hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
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
                    // register(
                    //     phoneController.text,
                    //     verificationCodeController.text,
                    //     passwordController.text);
                  },
                  child: Text("注册",
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
                    },
                    child: Text("登录",
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
