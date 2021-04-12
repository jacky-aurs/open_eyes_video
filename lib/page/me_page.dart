import 'package:flutter/material.dart';
import '../utils/constants_page.dart';
class MePage extends StatefulWidget {
  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Text(Constancts.TAB_ME),
    );
  }
}
