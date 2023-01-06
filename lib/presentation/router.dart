import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/bussiness_logic/cubit/user/user_cubit.dart';
import 'package:inova/bussiness_logic/cubit/vaga/vaga_cubit.dart';
import 'package:inova/data/interfaces/repository/vaga_loader.dart';
import 'package:inova/data/repository/database/vaga_dao.dart';
import 'package:inova/data/repository/user_repository.dart';
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
