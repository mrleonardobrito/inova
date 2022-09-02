import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/user/edit_user_page_widgets/bottom_section_widget.dart';
import 'package:whatinif/src/pages/user/edit_user_page_widgets/header_section_widget.dart';
import 'package:whatinif/src/pages/user/edit_user_page_widgets/main_section_widget.dart';


class EditUser extends StatefulWidget {
  const EditUser({Key? key}) : super(key: key);

  @override
  _EditUserState createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  int showAbas = 1;
  bool _isInitialValue = true;

  int _myDuration = 2;

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
          )
        )
    );
  }
}
