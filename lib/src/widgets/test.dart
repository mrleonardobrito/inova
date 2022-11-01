import 'package:flutter/material.dart';

import 'package:inova/src/utils/data/variables/variables.dart';
import 'package:inova/src/utils/data/variables/list_variables.dart';
import 'package:inova/src/utils/data/functions/functions.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: Center(
              child: Text(
                'Press',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
