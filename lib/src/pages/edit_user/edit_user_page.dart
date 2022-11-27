import 'package:flutter/material.dart';
import 'package:inova/src/widgets/edit_user/bottom_section_widget.dart';
import 'package:inova/src/widgets/edit_user/header_section_widget.dart';
import 'package:inova/src/widgets/edit_user/main_section_widget.dart';

class EditUser extends StatefulWidget {
  const EditUser({Key? key}) : super(key: key);

  @override
  EditUserState createState() => EditUserState();
}

class EditUserState extends State<EditUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.36,
          width: MediaQuery.of(context).size.width,
          child: const HeaderSectionWidget(),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.52,
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: const MainSectionWidget(),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.12,
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: const BottomSectionWidget(),
        ),
      ],
    ),);
  }
}
