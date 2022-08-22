import 'package:flutter/material.dart';
import 'package:whatinif/src/widget/bottom_bar_navigator.dart';

class InfoVaga extends StatefulWidget {
  const InfoVaga({Key? key}) : super(key: key);

  @override
  _InfoVagaState createState() => _InfoVagaState();
}

class _InfoVagaState extends State<InfoVaga> {
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
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                ),
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
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: ListView(
                                    children: [
                                      Row(children: [
                                        Container(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 30),
                                            child: Text(
                                              'DadosJusBr',
                                              style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 165, top: 30),
                                            child: Text(
                                              '400h',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                      Container(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20, top: 15),
                                              child: Text(
                                                'Professores:  Daniel Fireman e Felipe Alencar',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ))),
                                      Container(
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 15),
                                            child: Text(
                                              'Vagas Disponiveis: 4 ',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )),
                                      ),
                                      Container(
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 15),
                                            child: Text(
                                              'Bolsa Disponível: R400,00 - R850,00 ',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )),
                                      ),
                                      Row(
                                          children: [
                                        Container(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 15),
                                            child: Text(
                                              'Avaliação dos Usuarios:',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20, top: 13),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.star,
                                                      color: Colors.blueAccent,
                                                      size: 20),
                                                  Icon(Icons.star,
                                                      color: Colors.blueAccent,
                                                      size: 20),
                                                  Icon(Icons.star,
                                                      color: Colors.blueAccent,
                                                      size: 20),
                                                  Icon(Icons.star,
                                                      color: Colors.blueAccent,
                                                      size: 20),
                                                  Icon(Icons.star,
                                                      color: Colors.blueAccent,
                                                      size: 20),
                                                ],
                                              )),
                                        )
                                      ]),
                                      Container(
                                        child: Padding(
                                          padding: EdgeInsets.only (
                                              left: 20, top: 13),
                                          ) ,
                                        ),
                                      )
                                    ], // children
                                  ),
                                ),
                              ],
                            ))))
              ],
            )));
  }
}
