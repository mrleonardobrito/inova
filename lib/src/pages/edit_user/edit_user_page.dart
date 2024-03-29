import 'package:flutter/material.dart';
import 'package:inova/src/widgets/edit_user/bottom_section_widget.dart';
import 'package:inova/src/widgets/edit_user/header_section_widget.dart';
import 'package:inova/src/widgets/edit_user/main_section_widget.dart';

class EditUser extends StatefulWidget {
  const EditUser({Key? key}) : super(key: key);

  @override
  _EditUserState createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.36,
          width: MediaQuery.of(context).size.width,
          child: HeaderSectionWidget(),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.52,
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: MainSectionWidget(),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.12,
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: BottomSectionWidget(),
        ),
      ],
    )));
  }
}
