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
                            color: Color(0xFFEFEFEF),
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
                                      Row(children: [
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
                                              padding: EdgeInsets.only(
                                                  left: 20, top: 20),
                                              child: Text(
                                                'Descrição completa da vaga',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ))),
                                      Container(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20, top: 15),
                                              child: Text(
                                                'Proposta',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ))),
                                      Container(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20, top: 15),
                                              child: Text(
                                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                              ))),
                                      Container(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20, top: 15),
                                              child: Text(
                                                'Oque irei fazer na vaga?',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ))),
                                      Container(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20, top: 15),
                                              child: Text(
                                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                              ))),
                                      Container(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20, top: 15),
                                              child: Text(
                                                'Categorias',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ))),
                                      Container(
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 13),
                                            child: Wrap(
                                              children: [
                                                Container(
                                                  height: 25,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFF9AAEFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              55)),
                                                  child: Center(
                                                    child: Text(
                                                      'Projeto',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 65,
                                                  margin:
                                                      EdgeInsets.only(left: 10),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFF9AAEFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              55)),
                                                  child: Center(
                                                    child: Text(
                                                      'Informatica',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 100,
                                                  margin:
                                                      EdgeInsets.only(left: 10),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFF9AAEFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              55)),
                                                  child: Center(
                                                    child: Text(
                                                      'Programação Web',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 45,
                                                  margin:
                                                      EdgeInsets.only(left: 10),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFF9AAEFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              55)),
                                                  child: Center(
                                                    child: Text(
                                                      'API',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 52,
                                                  margin:
                                                      EdgeInsets.only(left: 10),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFF9AAEFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              55)),
                                                  child: Center(
                                                    child: Text(
                                                      'Frontend',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 51,
                                                  margin:
                                                      EdgeInsets.only(top: 10),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFF9AAEFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              55)),
                                                  child: Center(
                                                    child: Text(
                                                      'Backend',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 50,
                                                  margin: EdgeInsets.only(
                                                      left: 10, top: 10),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFF9AAEFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              55)),
                                                  child: Center(
                                                    child: Text(
                                                      'SCRUM',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 100,
                                                  margin: EdgeInsets.only(
                                                      left: 10, top: 10),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFF9AAEFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              55)),
                                                  child: Center(
                                                    child: Text(
                                                      'Metodologia Ágil',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 80,
                                                  margin: EdgeInsets.only(
                                                      left: 10, top: 10),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFF9AAEFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              55)),
                                                  child: Center(
                                                    child: Text(
                                                      'Data Science',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                      Container(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20, top: 15),
                                              child: Text(
                                                'Conhecimentos Necessários',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ))),
                                      Container(
                                          child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 20, top: 10),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                  '- Conhecimento básico em ciências de dados',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 20, top: 10),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                '- Conhecimento em tecnologias web: HTML, CSS e JS',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 20, top: 10),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                '- Facilidade em escrever e revisar código',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 20, top: 10),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                '- Conhecimento em metodologia ágil',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 20, top: 10),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                '- Saber usar GitHub',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 20, top: 10),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                '- Conhecimento em Excel(opcional)',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),

                                        ],
                                      )),
                                      Container(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20, top: 15),
                                              child: Text(
                                                'Ao final da prática o aluno haverá',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ))),
                                      Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 20, top: 10),
                                                child: Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Text(
                                                    '- Experiência profissional comprovada',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 20, top: 10),
                                                child: Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Text(
                                                    '- Conhecimento sobre como produzir APIs',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 20, top: 10, bottom: 25),
                                                child: Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Text(
                                                    '- Prática em metodologias ágeis de trabalho',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          Container(
                                            height: 40,
                                            width: MediaQuery.of(context).size.width *0.75,
                                            margin: EdgeInsets.only(bottom: 25),
                                            decoration: BoxDecoration(
                                                color: Color(0xFF4065FC),
                                                borderRadius:
                                                BorderRadius.circular(
                                                    10)),
                                            child: TextButton(
                                              child: Text(
                                                  'Tenho interesse na vaga!!!',
                                                  style: TextStyle(
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                              ),
                                              style: TextButton.styleFrom(
                                                primary: Colors.white,
                                              ),
                                              onPressed: () {
                                                print('Pressed');
                                              },
                                            ),
                                          )
                                            ],
                                          )),
                                    ], // children
                                  ),
                                ),
                              ],
                            ))))
              ],
            )));
  }
}
