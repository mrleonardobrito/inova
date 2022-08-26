import 'package:flutter/material.dart';
import 'package:whatinif/src/widget/bottom_bar_navigator.dart';

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
          child: Text('Dando inicio a tela de editar usuário'),
        )
    );
  }
}
