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
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      margin: EdgeInsets.only(right: 10),
                                      child: Text('Daniel Fireman',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                          )),
                                    ),

                                    Container(
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(right: 30),
                                      child: Text('Micaele Rayanne',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                          )),
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
                          )),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 30, right: 27),
                          child: Text('Insira suas informações',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                        ),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 76, top:43),
                            child: Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          textStyle: const TextStyle(fontSize: 12),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Inserir Curriculo'),
                                      )
                                  ),
                                  Icon(Icons.school_rounded, color: Colors.green),
                                  Container(
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          textStyle: const TextStyle(fontSize: 12),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Enviar Diploma'),
                                      )
                                  ),

                                ]
                              )
                            )

                          )
                  //       Container(
                  //         child: Padding(
                  //             padding: EdgeInsets.only(top: 43, left: 70),
                  //           child: Row(
                  //               children: [
                  //                 Container(
                  //                   alignment: Alignment.bottomLeft,
                  //                   margin: EdgeInsets.only(right: 10),
                  //                   child: Text('Inserir Curriculo',
                  //                       style: TextStyle(
                  //                         fontSize: 13,
                  //                         fontWeight: FontWeight.w400,
                  //                       )),
                  //                 ),
                  //
                  //                 Container(
                  //                   alignment: Alignment.bottomRight,
                  //                   margin: EdgeInsets.only(right: 10),
                  //                   child: Text('Enviar Diploma',
                  //                       style: TextStyle(
                  //                         fontSize: 13,
                  //                         fontWeight: FontWeight.w400,
                  //                       )),
                  //                 )
                  //               ]
                  //           )
                  //
                  //
                  //         )
                  //       )
                      ],
                   ))
                   ,


                ),
              ],
            )));
  }
}
