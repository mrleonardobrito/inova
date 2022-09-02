import 'package:flutter/material.dart';

class MainSectionWidget extends StatefulWidget {
  const MainSectionWidget({Key? key}) : super(key: key);

  @override
  _MainSectionWidgetState createState() => _MainSectionWidgetState();
}

class _MainSectionWidgetState extends State<MainSectionWidget> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    double textFieldRadius = 10;

    print(_width);

    final listViewMargin = EdgeInsets.only(right: 10);

    int _itemsCount = 6;

    final itemList = 0;

    const projectData = [
      {
        "nome": "DIT",
        "orientador": "Tarsis Marinho",
        "descricao":
            'Aplicativo para pipipipopopo pipipipopopo pipipipopopo pipipipopopo',
        "dataTermino": "02/03/2017",
      },
      {
        "nome": "LEAD",
        "orientador": "Daniel Lacert Fireman",
        "descricao":
            'Estágio em parceria com o Mark Zuckerberg para a produção do Whatsapp 2',
        "dataTermino": "02/03/2022",
      },
      {
        "nome": "LEAD",
        "orientador": "Daniel Lacert Fireman",
        "descricao":
        'Estágio em parceria com o Mark Zuckerberg para a produção do Whatsapp 2',
        "dataTermino": "02/03/2022",
      },
      {
        "nome": "LEAD",
        "orientador": "Daniel Lacert Fireman",
        "descricao":
        'Estágio em parceria com o Mark Zuckerberg para a produção do Whatsapp 2',
        "dataTermino": "02/03/2022",
      },
      {
        "nome": "LEAD",
        "orientador": "Daniel Lacert Fireman",
        "descricao":
        'Estágio em parceria com o Mark Zuckerberg para a produção do Whatsapp 2',
        "dataTermino": "02/03/2022",
      },
    ];

    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            Container(
              height: 1,
              margin: EdgeInsets.only(bottom: 20),
              width: _width - 35,
              color: Color(0xFF9D9D9D),
            ),
            Container(
              width: _width,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 7, bottom: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Descrição do usuário',
                        style: TextStyle(
                            color: Color(0xFF3B64FA),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      minLines: 5,
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
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
                      margin: EdgeInsets.only(top: 20),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            GestureDetector(
                                child: Row(
                              children: [
                                Icon(
                                  Icons.picture_as_pdf_rounded,
                                  size: 31,
                                  color: Color(0xFF4065FC),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Inserir currículo',
                                    style: TextStyle(
                                        color: Color(0xFF4065FC), fontSize: 13),
                                  ),
                                )
                              ],
                            )),
                            Spacer(),
                            GestureDetector(
                                child: Row(
                              children: [
                                Icon(
                                  Icons.school,
                                  size: 31,
                                  color: Color(0xFF4065FC),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Inserir diploma',
                                    style: TextStyle(
                                        color: Color(0xFF4065FC), fontSize: 13),
                                  ),
                                )
                              ],
                            )),
                          ],
                        ),
                      )),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        margin: EdgeInsets.only(top: 20, left: 0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(bottom: 10, left: 15),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Projetos do usuário',
                                  style: TextStyle(
                                      color: Color(0xFF4065FC),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                                height: 100,
                                width: _width,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: projectData.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: listViewMargin,
                                        width: 100.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE8ECFF),
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Text(
                                            '${projectData[index]["nome"]}'),
                                      );
                                    }))
                          ],
                        )),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
