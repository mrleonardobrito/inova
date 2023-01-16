import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/data/user_repository.dart';
import 'package:inova/presentation/bloc/cubit/user/user_cubit.dart';
import 'package:inova/presentation/bloc/cubit/vaga/vaga_cubit.dart';
import 'package:inova/presentation/pages/home/home_page.dart';
import 'package:inova/presentation/pages/user/user_page.dart';

class AppRouter extends StatefulWidget {
  const AppRouter({Key? key}) : super(key: key);

  @override
  State<AppRouter> createState() => _AppRouterState();
}

class _AppRouterState extends State<AppRouter> {
  int _currentIndex = 0;

  Widget _getCurrentScreen(int index) {
    switch (index) {
      case 0:
        return BlocProvider(
          create: (context) => VagaCubit(),
          child: const HomePage(),
        );
      case 1:
        return BlocProvider(
          create: (context) => UserCubit(UserListRepository()),
          child: const UserPage(),
        );
      default:
        return BlocProvider(
          create: (context) => VagaCubit(),
          child: const HomePage(),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getCurrentScreen(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Perfil',
          ),
        ],
        onTap: (newIndex) {
          setState(
            () {
              _currentIndex = newIndex;
            },
          );
        },
      ),
    );
  }
}
