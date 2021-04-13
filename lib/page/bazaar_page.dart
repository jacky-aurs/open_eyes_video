import 'package:douban/widght/seach_page.dart';
import 'package:flutter/material.dart';
import '../utils/constants_page.dart';

class BazaarPage extends StatefulWidget {
  @override
  _BazaarPageState createState() => _BazaarPageState();
}

class _BazaarPageState extends State<BazaarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new SeachPage(seachTitle: Constancts.BAZAAR_SEACH),
    );
  }
}
