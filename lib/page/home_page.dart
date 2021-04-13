import 'package:douban/widght/seach_page.dart';
import 'package:flutter/material.dart';

import '../utils/constants_page.dart';
import 'package:douban/utils/shared_preferences_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    SharePrefenceUtils.saveData(SharePrefenceUtils.IS_LOGIN_KEY, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new SeachPage(seachTitle: Constancts.HOME_SEAACH_TITLE),
    );
  }
}
