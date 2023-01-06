import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/presentation/router.dart';

import 'bussiness_logic/cubit/navigation/navigation_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationCubit>(
        create: (context) => NavigationCubit(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: AppRouter(),
        ));
  }
}
