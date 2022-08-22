import 'package:flutter/material.dart';
import 'package:whatinif/src/widget/bottom_bar_navigator.dart';

class RegisterVaga extends StatefulWidget {
  const RegisterVaga({Key? key}) : super(key: key);

  @override
  _RegisterVagaState createState() => _RegisterVagaState();
}

class _RegisterVagaState extends State<RegisterVaga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFF4065FC),
            child: ListView(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: ListView(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          child: Padding(
                              padding: EdgeInsets.only(top: 60, left: 23),
                              child: Text(
                                  'LEAD - Laboratório de Engenharia e Base de Dados',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ))),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                                padding: EdgeInsets.only(top: 16, left: 70),
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text('Fireman',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text('Micaele'),
                                    )
                                  ],
                                ))),
                      ],
                    )),
                Container(
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ))),
                ),
              ],
            )));
  }
}
