import 'package:flutter/material.dart';

class RegisterVaga extends StatefulWidget {
  const RegisterVaga({Key? key}) : super(key: key);

  @override
  _RegisterVagaState createState() => _RegisterVagaState();
}

double textFieldRadius = 10;

class _RegisterVagaState extends State<RegisterVaga> {
  bool isChecked = true;
  bool check = true;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    const people = [
      {"pessoa": "Micaele Rayanne", "cargo": "Colaborador"},
      {"pessoa": "Daniel Fireman", "cargo": "Coordenador"},
      {"pessoa": "Eduardo Fireboy", "cargo": "Colaborador"},
      {"pessoa": "Felipe Alencar", "cargo": "Coordenador"},
    ];

    double checkBoxSize = 20;

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
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 20),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          width: _width,
                          height: 50,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: people.length,
                            itemBuilder: (context, index) {
                              return Container(
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(right: 10),
                                child: Row(
                                  children: [
                                    Center(
                                      child: Container(
                                        margin: EdgeInsets.only(right: 5),
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(60)),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          3.7,
                                      height: 28,
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                                '${people[index]["pessoa"]}',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.normal,
                                                )),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              '${people[index]["cargo"]}',
                                              style: TextStyle(
                                                fontSize: 8,
                                                color: Color(0xFFC5C2C2),
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        )),
                  ),
                ],
              ),
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
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 30, right: 27),
                        child: Text('Insira suas informações',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ))),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 50, top: 43),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.picture_as_pdf_rounded,
                                    color: Color(0XFF3B64FA),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: const Text('Inserir Curriculo'),
                                  )
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.school_rounded,
                                    color: Color(0xFF3B64FA),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: const Text('Enviar Diploma'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 265,
                      margin: EdgeInsets.only(top: 15),
                      color: Color(0xFF9D9D9D),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40, top: 20),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.insert_comment_rounded,
                              color: Color(0XFF3B64FA),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, left: 10),
                              child: const Text('Inserir Comentário'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: _width - _width * 0.15,
                      child: TextFormField(
                        minLines: 5,
                        maxLines: 5,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(textFieldRadius),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(textFieldRadius),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            disabledBorder: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xFFE8ECFF),
                            hintText: "Digite aqui...",
                            hintStyle: TextStyle(fontSize: 14)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 55, right: 40, top: 10),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  isChecked = !isChecked;
                                  print(isChecked);
                                });
                              },
                              child: Container(
                                  margin: EdgeInsets.only(right: 5),
                                  height: checkBoxSize,
                                  width: checkBoxSize,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFE8ECFF),
                                      borderRadius: BorderRadius.circular(60)),
                                  child: isChecked == true
                                      ? Container(
                                          height: checkBoxSize,
                                          width: checkBoxSize,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFE8ECFF),
                                              borderRadius:
                                                  BorderRadius.circular(60)),
                                        )
                                      : Center(
                                          child: Icon(
                                            Icons.check_circle_rounded,
                                            color: Color(0xFF3B64FA),
                                            size: 24,
                                          ),
                                        ))),
                          Text("Maior de Idade?"),
                          Spacer(),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  check = !check;
                                  print(check);
                                });
                              },
                              child: Container(
                                  margin: EdgeInsets.only(right: 5),
                                  height: checkBoxSize,
                                  width: checkBoxSize,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFE8ECFF),
                                      borderRadius: BorderRadius.circular(60)),
                                  child: check == true
                                      ? Container(
                                          height: checkBoxSize,
                                          width: checkBoxSize,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFE8ECFF),
                                              borderRadius:
                                                  BorderRadius.circular(60)),
                                        )
                                      : Center(
                                          child: Icon(
                                            Icons.check_circle_rounded,
                                            color: Color(0xFF3B64FA),
                                            size: 24,
                                          ),
                                        ))),
                          Text("Curso superior?"),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(left: 50, top: 43),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.handshake_rounded,
                                    color: Color(0XFF3B64FA),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: const Text(
                                        'Concordo com os termos de whatinif'),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 90),
                      alignment: Alignment.bottomCenter,
                      width: _width - 10,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFF3B64FA),
                          borderRadius: BorderRadius.circular(15)),
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                            child: Text(
                          'Concluir',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
