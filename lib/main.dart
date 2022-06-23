import 'package:flutter/material.dart';
import 'src/pages/user_page.dart';
import 'src/pages/home_page.dart';
import 'src/widget/bottom_bar_navigator.dart';

void main() {
  runApp(
    const MaterialApp(
      home: BottomBar(),
    ),
  );
}
