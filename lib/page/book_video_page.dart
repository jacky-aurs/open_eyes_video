import 'package:douban/widght/seach_page.dart';
import 'package:flutter/material.dart';
import '../utils/constants_page.dart';
class BookVideoPage extends StatefulWidget {
  @override
  _BookVideoPageState createState() => _BookVideoPageState();
}

class _BookVideoPageState extends State<BookVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new SeachPage(seachTitle: Constancts.BOOK_VIDEO_SEACH),
    );
  }
}
