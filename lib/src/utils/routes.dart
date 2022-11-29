import 'package:flutter/material.dart';
import 'package:inova/src/pages/login/login_page.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  RoutesState createState() => RoutesState();
}

class RoutesState extends State<Routes> {
  @override
  Widget build(BuildContext context) {
    return const Login();
  }
}
