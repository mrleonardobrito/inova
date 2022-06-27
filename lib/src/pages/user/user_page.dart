import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/home_page.dart';
import 'package:whatinif/src/pages/user/user_widgets/user_projects.dart';
import 'package:whatinif/src/pages/user/user_widgets/user_repertory.dart';
import 'package:whatinif/src/widget/bottom_bar_navigator.dart';
import 'package:whatinif/src/pages/user/edit_user_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int showAbas = 1;

  @override
  Widget build(BuildContext context) {
    const userData = {
      "nome": "Emanuel Vilela",
      "descricaoAcademica": "4° ano - 914",
      "descricao":
          "Gosto de programar e fazer aplicativos. Estou cursando o ensino médio no Instituto Federal de Alagoas.",
    };

    const carouselItems = ["Projetos", "Repertório", "Teste"];

    const projectData = [
      {
        "nome": "DadosJusBrasil",
        "orientador": "Daniel Lacert Fireman",
        "descricao":
            'Aplicativo para pipipipopopo pipipipopopo pipipipopopo pipipipopopo',
        "dataTermino": "02/03/2017",
      },
      {
        "nome": "Meta",
        "orientador": "Felipe Alencar",
        "descricao":
            'Estágio em parceria com o Mark Zuckerberg para a produção do Whatsapp 2',
        "dataTermino": "02/03/2022",
      },
      {
        "nome": "Facebook",
        "orientador": "Mark Zuckerberg",
        "descricao":
            'Estágio feito para mudar a foto de perfil do Marquinhos, em que ele não sabia mudar',
        "dataTermino": "Em andamento",
      },
      {
        "nome": "uTorrent Mobile",
        "orientador": "Tarsis Marinho",
        "descricao": 'Aplicativo para piratear arquivos',
        "dataTermino": "31/08/2020",
      },
    ];

    int widgetTitleNavHeight = 50;

    double stars = 1;

    final halfStarIcon = const Icon(Icons.star_half, color: Color(0xFF4065FC));
    final starIcon = const Icon(Icons.star, color: Color(0xFF4065FC));
    final emptyStar = const Icon(Icons.star_border, color: Color(0xFF4065FC));


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
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.086,
                color: const Color(0xff4065FC),
              ),
              Container(
                color: Color(0xFFF5F5F5),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xff4065FC))),
                          color: Colors.white,
                          textColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 7, horizontal: 13),
                            child: Text(
                              'Editar perfil',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditUser()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Color(0xFFF5F5F5),
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          '${userData["nome"]}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: Text(
                          '${userData["descricaoAcademica"]}',
                          style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          '${userData["descricao"]}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 15),
                  color: Color(0xFFF5F5F5),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showAbas = 1;
                                  print(showAbas);
                                });
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                height: 50,
                                color: showAbas == 1
                                    ? Color(0xFF3357EB)
                                    : Color(0xFF3B64FA),
                                child: Center(
                                  child: Text(
                                    '${carouselItems[0]}',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showAbas = 2;
                                });
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                height: 50,
                                color: showAbas == 2
                                    ? Color(0xFF3357EB)
                                    : Color(0xFF3B64FA),
                                child: Center(
                                  child: Text(
                                    '${carouselItems[1]}',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showAbas = 3;
                                });
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                height: 50,
                                color: showAbas == 3
                                    ? Color(0xFF3357EB)
                                    : Color(0xFF3B64FA),
                                child: Center(
                                  child: Text(
                                    '${carouselItems[2]}',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: showAbas == 1
                                ? Projetos()
                                : showAbas == 2
                                    ? Repertorio()
                                    : showAbas == 3
                                        ? Text('Tres')
                                        : Text('Deu errado'),
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
          Positioned(
            top: 35,
            left: 15,
            child: ClipRRect(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black),
                child: Image.asset(
                  "images/xereque.png",
                  height: 95,
                  width: 95,
                  fit: BoxFit.fitHeight,
                ),
              ),
              borderRadius: BorderRadius.circular(150),
            ),
          ),
        ],
      ),
    );
  }
}
