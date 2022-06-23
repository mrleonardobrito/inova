import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/home_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
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
                height: 90,
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
                          child: Text('   Editar perfil   '),
                          onPressed: () {
                            print("Capeta");
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
                        child: const Text(
                          'Emanuel Vilela',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: const Text(
                          '914 - 4° ano',
                          style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: const Text(
                          'Gosto de programar e fazer aplicativos. Estou cursando o ensino médio no Instituto Federal de Alagoas.',
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
                  height: MediaQuery.of(context).size.height * .5,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 15),
                  color: Color(0xFFF5F5F5),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 50,
                              color: Color(0xFF3357EB),
                              child: Center(
                                child: const Text(
                                  'Projetos',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 50,
                              color: Color(0xFF3B64FA),
                              child: Center(
                                child: const Text(
                                  'Repertório',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 50,
                              color: Color(0xFF3B64FA),
                              child: Center(
                                child: const Text(
                                  'Teste',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Container(
                                height: 280,
                                width: MediaQuery.of(context).size.width - 20,
                                child: ListView(
                                  children: [
                                    Container(
                                        height: 107,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: ListView(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'JusBrasil',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                  Spacer(),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.calendar_month,
                                                        size: 18,
                                                        color:
                                                            Color(0xFFBFBFBF),
                                                      ),
                                                      const Text(
                                                        '02/03/2022',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11,
                                                          color:
                                                              Color(0xFFBFBFBF),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                'Daniel Lacert Fireman',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xFF878787),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                'Aplicativo para pipipipopopo pipipipopopo pipipipopopo pipipipopopo',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Container(
                                        height: 107,
                                        margin: EdgeInsets.only(top: 10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 15),
                                          child: ListView(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'LEAD',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.calendar_month,
                                                        size: 18,
                                                        color:
                                                            Color(0xFFBFBFBF),
                                                      ),
                                                      const Text(
                                                        'Em andamento',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11,
                                                          color:
                                                              Color(0xFFBFBFBF),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                'Felipe Alencar',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xFF878787),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                'Site para pipipipopopo pipipipopopo pipipipopopo pipipipopopo e teco teco no biticuteco',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          Positioned(
            top: 40,
            left: 10,
            child: ClipRRect(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black),
                child: Image.asset(
                  "images/xereque.png",
                  height: 100,
                  width: 100,
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
