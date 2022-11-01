import 'package:flutter/material.dart';
import 'package:inova/src/pages/home/home_screen.dart';
import 'package:inova/src/pages/login/login_page.dart';
import 'package:inova/src/pages/user/user_page.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeScreen());
  }
}
