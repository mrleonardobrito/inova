import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/blocs/cubit/user_cubit.dart';
import 'package:inova/repository/user/user_repository.dart';
import 'package:inova/src/pages/home/home_screen.dart';
import 'package:inova/src/pages/register/register_page.dart';
import 'package:inova/src/pages/user/user_page.dart';
import 'package:inova/src/utils/routes.dart';
import 'package:inova/src/widgets/user/user_projects.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => UserCubit(UserListRepository()),
        child: HomeScreen(),
      ),
    );
  }
}
