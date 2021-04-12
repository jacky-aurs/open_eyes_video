import 'package:flutter/material.dart';
import '../utils/constants_page.dart';
class BazaarPage extends StatefulWidget {
  @override
  _BazaarPageState createState() => _BazaarPageState();
}

class _BazaarPageState extends State<BazaarPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Text(Constancts.TAB_BAZAAR),
    );
  }
}
