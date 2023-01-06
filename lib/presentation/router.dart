import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/bussiness_logic/cubit/navigation/navigation_cubit.dart';
import 'package:inova/bussiness_logic/cubit/navigation/navigation_items.dart';
import 'package:inova/bussiness_logic/cubit/user/user_cubit.dart';
import 'package:inova/bussiness_logic/cubit/vaga/vaga_cubit.dart';
import 'package:inova/data/interfaces/repository/vaga_loader.dart';
import 'package:inova/data/repository/user_repository.dart';
import 'package:inova/presentation/pages/home/home_page.dart';
import 'package:inova/presentation/pages/user/user_page.dart';

class AppRouter extends StatefulWidget {
  const AppRouter({Key? key}) : super(key: key);

  @override
  AppRouterState createState() => AppRouterState();
}

class AppRouterState extends State<AppRouter> {
  double bottomBarIconSize = 32;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.index,
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
            onTap: (index) {
              if (index == 0) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(BarItem.home);
              } else if (index == 1) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(BarItem.perfil);
              }
            },
          );
        },
      ),
      body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
        if (state.navBarItem == BarItem.home) {
          return BlocProvider(
            create: (context) => VagaCubit(VagaRepository()),
            child: const HomePage(),
          );
        } else if (state.navBarItem == BarItem.perfil) {
          return BlocProvider(
            create: (context) => UserCubit(UserListRepository()),
            child: const UserPage(),
          );
        }
        return Container();
      }),
    );
  }
}
