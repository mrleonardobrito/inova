import 'package:flutter/material.dart';
import '../pages/user/user_page.dart';
import '../pages/home/home_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  final screens = [
    HomePage(), UserPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:
        BottomNavigationBar(
          iconSize: 27,
          selectedItemColor: Color(0xFF3B64FA),
          unselectedItemColor: Color(0xFFB4BECE),
          selectedFontSize: 15,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.house_rounded,
              ),),
            BottomNavigationBarItem(
              label: 'Perfil',
              icon: Icon(
                Icons.account_circle_rounded,
              ),)
          ],
        ),
        body: screens[currentIndex]);
  }
}
