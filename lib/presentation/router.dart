import 'package:flutter/material.dart';
import 'package:inova/presentation/pages/home/home_page.dart';
import 'package:inova/presentation/pages/user/user_page.dart';

class AppRouter extends StatefulWidget {
  const AppRouter({Key? key}) : super(key: key);

  @override
  AppRouterState createState() => AppRouterState();
}

class AppRouterState extends State<AppRouter> {
  int _currentIndex = 0;

  final cubits = [const HomePage(), const UserPage()];
  double bottomBarIconSize = 32;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: cubits[_currentIndex],
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
