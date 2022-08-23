import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/user/user_page.dart';

import 'home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> screens = [HomePage(), UserPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.house_rounded,
              )),
          BottomNavigationBarItem(
              label: 'Perfil',
              icon: Icon(
                Icons.account_circle_rounded,
              ))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
