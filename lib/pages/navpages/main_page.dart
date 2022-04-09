import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:techthermoxapp/pages/detail_page.dart';
import 'package:techthermoxapp/pages/login_page.dart';
import 'package:techthermoxapp/pages/navpages/log_in.dart';
import 'package:techthermoxapp/pages/home_page.dart';
import 'package:techthermoxapp/pages/navpages/menu.dart';
import 'package:techthermoxapp/pages/navpages/bar_item.dart';
import 'package:techthermoxapp/pages/navpages/mypage.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  _mainpageState createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  List pages = [
    HomePage(),
    DetailPage(),
    Menu(),
    LoginPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(title: Text("Menu"), icon: Icon(Icons.menu)),
          BottomNavigationBarItem(
            title: Text("About Us"),
            icon: Icon(Icons.poll),
          ),
          BottomNavigationBarItem(
            title: Text("My"),
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
