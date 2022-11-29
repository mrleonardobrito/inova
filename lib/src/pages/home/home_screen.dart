import 'package:flutter/material.dart';
import 'package:inova/src/pages/user/user_page.dart';

import 'home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> screens = [const HomePage(), const UserPage()];

  double bottomBarIconSize = 32;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: height * 0.10,
        child: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.house_rounded,
                size: bottomBarIconSize,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Perfil',
              icon: Icon(
                Icons.account_circle_rounded,
                size: bottomBarIconSize,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(
      () {
        _currentIndex = index;
      },
    );
  }
}
