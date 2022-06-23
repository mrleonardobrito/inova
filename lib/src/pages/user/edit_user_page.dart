import 'package:flutter/material.dart';
import 'package:whatinif/src/widget/bottom_bar_navigator.dart';

class EditUser extends StatefulWidget {
  const EditUser({Key? key}) : super(key: key);

  @override
  _EditUserState createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  @override
  Widget build(BuildContext context) {
    const projectData = [
      {
        "nome": "DadosJusBrasil",
        "orientador": "Daniel Lacert Fireman",
        "descricao":
            'Aplicativo para pipipipopopo pipipipopopo pipipipopopo pipipipopopo',
        "dataInicio": "02/03/2004",
      },
      {
        "nome": "Twitter",
        "orientador": "Daniel Lacert Fireman",
        "descricao":
            'Aplicativo para pipipipopopo pipipipopopo pipipipopopo pipipipopopo',
        "dataInicio": "02/03/2004",
      },
      {
        "nome": "Facebook",
        "orientador": "Daniel Lacert Fireman",
        "descricao":
            'Aplicativo para pipipipopopo pipipipopopo pipipipopopo pipipipopopo',
        "dataInicio": "02/03/2004",
      },
      {
        "nome": "Thornhub",
        "orientador": "Daniel Lacert Fireman",
        "descricao":
            'Aplicativo para pipipipopopo pipipipopopo pipipipopopo pipipipopopo',
        "dataInicio": "02/03/2004",
      },
    ];
    return Scaffold(
        appBar: AppBar(
          leading: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomBar()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.white,
            ),
            child: Icon(
              Icons.arrow_back_sharp,
              color: Colors.black,
              size: 25,
            ),
          ),
          title: Text(
            'Voltar',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: ListView.builder(
              itemCount: projectData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                      height: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: ListView(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '${projectData[index]["nome"]}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      size: 18,
                                      color: Color(0xFFBFBFBF),
                                    ),
                                    Text(
                                      '${projectData[index]["dataInicio"]}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                        color: Color(0xFFBFBFBF),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              '${projectData[index]["orientador"]}',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF878787),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '${projectData[index]["descricao"]}',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      )),
                );
              }),
        ));
  }
}
