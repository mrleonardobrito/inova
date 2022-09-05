import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatinif/src/pages/user/user_page.dart';
import 'package:image_picker/image_picker.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      height: _height,
      width: _width,
      color: Color(0xFFB2B8D2),
      child: Stack(
        children: [
          Center(
            child: Container(
              height: _height * 0.23,
              width: _width - _width * 0.15,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: (_height * 0.23) / 2.5,
                  child: Column(
                    children: [
                      Container(
                        height: _height * 0.05,
                        width: _width / 1.35,
                        decoration: BoxDecoration(
                            color: Color(0xFF4065FC),
                            borderRadius: BorderRadius.circular(5)),
                        child: TextButton(
                          onPressed: () {},
                          onLongPress: (){print('mim de papai');},
                          child: Text(
                            'Entrar no aplicativo',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: GestureDetector(
                          onTap: () {
                            print('Teste');
                          },
                          child: Text(
                            'Ainda não é cadastrado? Clique aqui.',
                            style:
                            TextStyle(fontSize: 10, color: Color(0xFF3A64FA), decoration: TextDecoration.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}
