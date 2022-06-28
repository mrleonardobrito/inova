import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatinif/src/utils/vaga.dart';

class VagaPage extends StatelessWidget{
  final Vaga vaga;

  VagaPage({Key? key, required this.vaga}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xFF4065FC),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.85,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                    color: Color(0xFFEFEFEF),
                  ),
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 10.0, right: 10.0, bottom: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        padding: EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10.0, bottom: 5.0),
                                child: Text(vaga.titulo, style: titleStyle),
                              ),
                              Spacer(),
                              Container(
                                margin: const EdgeInsets.only(top: 2.0, bottom: 10.0),
                                child: Text(vaga.horas, style: titleStyle)
                              ),
                            ]
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 10.0),
                              child: Text('Professores: ' + vaga.professores.join(', '), style: professoresStyle),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 10.0),
                              child: Text('Vagas Disponiveis: ' + vaga.vagasDisponiveis, style: vagabolsaStyle),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 10.0),
                              child: Text('Bolsa Disponivel: ' + vaga.bolsaDisponivel, style: vagabolsaStyle),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 10.0),
                              child: Row(children: [
                                Text('Avaliação do usuário: ', style: professoresStyle),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFF4065FC),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFF4065FC),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFF4065FC),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFF4065FC),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star_half_sharp,
                                        color: Color(0xFF4065FC),
                                        size: 20,
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ]),
                    ),
                      Container(
                        child: Text('ere'),
                      )
                  ]
                )
              )
            ),
          ])
    );
  }
}

const TextStyle titleStyle = TextStyle(
  fontSize: 20,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);
const TextStyle professoresStyle = TextStyle(
  fontSize: 14,
  color: Color(0xFF808080)
);
const TextStyle vagabolsaStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: Colors.black
);
const TextStyle title2Style = TextStyle(

);
const TextStyle title3Style = TextStyle(

);
const TextStyle textoStyle = TextStyle(

);

