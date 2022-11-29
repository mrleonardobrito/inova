import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/blocs/cubit/user_cubit.dart';
import 'package:inova/repository/user/user_repository.dart';
import 'package:inova/src/pages/home/home_screen.dart';
import 'package:inova/src/pages/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => UserCubit(UserListRepository()),
        child: const Login(),
      ),
    );
  }
}
