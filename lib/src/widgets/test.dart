import 'package:flutter/material.dart';
import 'package:inova/src/utils/data.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  TestPageState createState() => TestPageState();
}

class TestPageState extends State<TestPage> {
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
            decoration: const BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: Center(
              child: Text(
                'Press',
                style: TextStyle(
                  color: getColor("white"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
