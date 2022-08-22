import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/login_page.dart';
import 'package:whatinif/src/pages/register_page.dart';
import 'package:whatinif/src/pages/user/edit_user_page.dart';
import 'package:whatinif/src/pages/vaga/info_vaga.dart';
import 'src/pages/user/user_page.dart';
import 'src/pages/home_page.dart';
import 'src/widget/bottom_bar_navigator.dart';

void main() {
  runApp(
    const MaterialApp(
      home: InfoVaga(),
    ),
  );
}
