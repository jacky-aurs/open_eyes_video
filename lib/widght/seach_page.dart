import 'package:douban/utils/screenutils_page.dart';
import 'package:flutter/material.dart';

class SeachPage extends StatefulWidget {
  final String seachTitle;

  const SeachPage({Key key, @required this.seachTitle}) : super(key: key);

  @override
  _SeachPageState createState() => _SeachPageState(seachTitle);
}

class _SeachPageState extends State<SeachPage> {
  final seachTitle;

  _SeachPageState(this.seachTitle);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: ScreenUtils.getInstance().statusBarHeight + 10),
        height: 40.0,
        width: ScreenUtils.screenW(context),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  height: 40.0,
                  margin: EdgeInsets.only(left: 10),
                  width: ScreenUtils.getInstance().screenWidth - 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black12),
                  child: TextField(
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        hintText: seachTitle,
                        hintStyle: TextStyle(color: Colors.black26),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[400],
                        )),
                  ),
                )),
            Container(
              height: 40.0,
              width: 40.0,
              child: SizedBox(
                  height: 30.0,
                  width: 30.0,
                  child: IconButton(
                      icon: Icon(
                        Icons.email,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        print("email被点击了");
                      })),
            )
          ],
        ));
  }
}
