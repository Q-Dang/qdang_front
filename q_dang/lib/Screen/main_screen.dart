import 'package:flutter/material.dart';
import 'package:q_dang/Screen/my_page_screen.dart';

import '../Component/main_appbar.dart';
import '../Component/my_page_appbar.dart';
import '../Constant/colors.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = <Widget>[
    HomeScreen(
      name: "홍길동",
    ),
    MyPageScreen(
      name: "홍길동",
    )
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: selecAppBar(),
            body: Container(
              child: screens.elementAt(_selectedIndex),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "마이페이지"),
              ],
              backgroundColor: Colors.white,
              unselectedIconTheme: const IconThemeData(color: ksecondaryColor),
              unselectedItemColor: ksecondaryColor,
              selectedItemColor: kprimaryColor,
              selectedIconTheme: const IconThemeData(color: kprimaryColor),
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            )));
  }

  PreferredSizeWidget selecAppBar() {
    if (_selectedIndex == 1) {
      return const MyPageAppBar();
    }
    return const MainAppBar();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
