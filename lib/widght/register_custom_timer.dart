import 'package:flutter/material.dart';
import 'dart:async';

///倒计时通用控件
class RegisterCustomDownTimer extends StatefulWidget {
  Function onTimerFinish;

  RegisterCustomDownTimer({this.onTimerFinish}) : super();

  @override
  _RegisterCustomDownTimer createState() => _RegisterCustomDownTimer();
}

class _RegisterCustomDownTimer extends State<RegisterCustomDownTimer> {
  Timer _timer;
  int _countDownTimer = 5;

  @override
  void initState() {
    super.initState();
    startCountDownTimer();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _timer.cancel();
        _countDownTimer = 0;
        widget.onTimerFinish();
      },
      child: Text(
        _countDownTimer != 0 ? "跳过 $_countDownTimer" : "跳过 0",
        style: TextStyle(
            fontSize: 14.0,
            color: Colors.white,
            decoration: TextDecoration.none),
      ),
    );
  }

  void startCountDownTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_countDownTimer < 1) {
          widget.onTimerFinish();
          _timer.cancel();
        } else {
          _countDownTimer = _countDownTimer - 1;
        }
        print(_countDownTimer);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer != null) {
      _timer.cancel();
    }
  }
}
