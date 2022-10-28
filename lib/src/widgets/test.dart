import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/user/edit_user_page/edit_user_page.dart';
import 'package:whatinif/src/pages/user/user_page_widgets/user_projects.dart';
import 'package:whatinif/src/pages/user/user_page_widgets/user_repertory.dart';
import 'package:whatinif/src/utils/data.dart';

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
          onPressed: () {
          },
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
