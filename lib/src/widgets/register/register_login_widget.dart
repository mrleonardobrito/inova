import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterLoginWidget extends StatefulWidget {
  const RegisterLoginWidget({Key? key}) : super(key: key);

  @override
  RegisterLoginWidgetState createState() => RegisterLoginWidgetState();
}

class RegisterLoginWidgetState extends State<RegisterLoginWidget> {
  bool showPassword = false;
  bool showConfirmPassword = false;

  var maskFormatter = MaskTextInputFormatter(
    mask: '+55 (##) ####-####',
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height,
      width: width,
      color: const Color(0xFF3A64FA),
      child: Column(
        children: [
          Container(
            height: height * 0.25,
            width: width,
            color: Colors.transparent,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Whatinif?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: height * 0.75,
            width: width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
