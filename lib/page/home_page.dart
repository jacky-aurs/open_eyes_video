import 'package:flutter/material.dart';
import '../utils/constants_page.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Text(Constancts.TAB_HOME),
    );
  }
}
