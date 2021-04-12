import 'package:douban/page/bazaar_page.dart';
import 'package:douban/page/book_video_page.dart';
import 'package:douban/page/group_page.dart';
import 'package:douban/page/me_page.dart';
import 'package:flutter/material.dart';
import 'utils/constants_page.dart';
import './utils/constants_page.dart';
import './page/home_page.dart';

class HomeMainPage extends StatefulWidget {
  @override
  _HomeMainPageState createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  int _currentIndex = 0;

  HomePage homePage;
  BazaarPage bazaarPage;
  MePage mePage;
  BookVideoPage bookVideoPage;
  GroupPage groupPage;

  CurrentPage() {
    switch (_currentIndex) {
      case 0:
        if (homePage == null) {
          homePage = new HomePage();
        }
        return homePage;
      case 1:
        if (bookVideoPage == null) {
          bookVideoPage = new BookVideoPage();
        }
        return bookVideoPage;
      case 2:
        if (groupPage == null) {
          groupPage = new GroupPage();
        }
        return bookVideoPage;
      case 3:
        if (bazaarPage == null) {
          bazaarPage = new BazaarPage();
        }
        return bazaarPage;
      case 4:
        if (mePage == null) {
          mePage = new MePage();
        }
        return mePage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        backgroundColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                _currentIndex == 0
                    ? Constancts.IMAGE_TAB + 'ic_tab_home_active.png'
                    : Constancts.IMAGE_TAB + 'ic_tab_home_normal.png',
                height: 28.0,
                width: 32.0,
              ),
              title: Text(
                Constancts.TAB_HOME,
                style: TextStyle(
                    fontSize: 14.0,
                    color: _currentIndex == 0 ? Colors.green : Colors.black45),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                _currentIndex == 1
                    ? Constancts.IMAGE_TAB + 'ic_tab_subject_active.png'
                    : Constancts.IMAGE_TAB + 'ic_tab_subject_normal.png',
                height: 28.0,
                width: 32.0,
              ),
              title: Text(
                Constancts.TAB_BOOK_VIDE,
                style: TextStyle(
                    fontSize: 14.0,
                    color: _currentIndex == 1 ? Colors.green : Colors.black45),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                _currentIndex == 2
                    ? Constancts.IMAGE_TAB + 'ic_tab_group_active.png'
                    : Constancts.IMAGE_TAB + 'ic_tab_group_normal.png',
                height: 28.0,
                width: 32.0,
              ),
              title: Text(
                Constancts.TAB_GROUP,
                style: TextStyle(
                    fontSize: 14.0,
                    color: _currentIndex == 2 ? Colors.green : Colors.black45),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                _currentIndex == 3
                    ? Constancts.IMAGE_TAB + 'ic_tab_shiji_active.png'
                    : Constancts.IMAGE_TAB + 'ic_tab_shiji_normal.png',
                height: 28.0,
                width: 32.0,
              ),
              title: Text(
                Constancts.TAB_BAZAAR,
                style: TextStyle(
                    fontSize: 14.0,
                    color: _currentIndex == 3 ? Colors.green : Colors.black45),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                _currentIndex == 4
                    ? Constancts.IMAGE_TAB + 'ic_tab_profile_active.png'
                    : Constancts.IMAGE_TAB + 'ic_tab_profile_normal.png',
                height: 28.0,
                width: 32.0,
              ),
              title: Text(
                Constancts.TAB_ME,
                style: TextStyle(
                    fontSize: 14.0,
                    color: _currentIndex == 4 ? Colors.green : Colors.black45),
              ))
        ],
        type: BottomNavigationBarType.fixed,
      ),
      body: CurrentPage(),
    );
  }
}
