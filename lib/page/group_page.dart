import 'package:douban/widght/seach_page.dart';
import 'package:flutter/material.dart';
import '../utils/constants_page.dart';

class GroupPage extends StatefulWidget {
  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new SeachPage(seachTitle: Constancts.GROUP_SEACH),
    );
  }
}
