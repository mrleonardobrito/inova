import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterLoginWidget extends StatefulWidget {
  const RegisterLoginWidget({Key? key}) : super(key: key);

  @override
  _RegisterLoginWidgetState createState() => _RegisterLoginWidgetState();
}

class _RegisterLoginWidgetState extends State<RegisterLoginWidget> {
  bool _showPassword = false;
  bool _showConfirmPassword = false;

  var maskFormatter = new MaskTextInputFormatter(
    mask: '+55 (##) ####-####',
  );

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      height: _height,
      width: _width,
      color: Color(0xFF3A64FA),
      child: Column(
        children: [
          Container(
            height: _height * 0.25,
            width: _width,
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Whatinif?',
                  style: TextStyle(color: Colors.black, fontSize: 23,decoration: TextDecoration.none),
                ),
              ),
            )
          ),
          Container(
            height: _height * 0.75,
            width: _width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
          ),
        ],
      ),
    );
  }
}
