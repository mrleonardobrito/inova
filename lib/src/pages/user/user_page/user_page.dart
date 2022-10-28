import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/user/edit_user_page/edit_user_page.dart';
import 'package:whatinif/src/pages/user/user_page_widgets/user_projects.dart';
import 'package:whatinif/src/pages/user/user_page_widgets/user_repertory.dart';
import 'package:whatinif/src/utils/data.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: height * userScreenComponentsSize[0]["size"],
                  width: width,
                  decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                ),
                Container(
                  height: height * userScreenComponentsSize[1]["size"],
                  width: width,
                  decoration: BoxDecoration(color: Color(0xFF4065FC)),
                ),
                Container(
                  height: height * userScreenComponentsSize[2]["size"],
                  width: width,
                  decoration:
                      BoxDecoration(color: getColor("naviGrey")),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: Colors.black //BorderSide
                                          ), //B
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(40)),
                                    ),
                                    child: TextButton(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft:
                                                const Radius.circular(40.0),
                                            topRight:
                                                const Radius.circular(40.0),
                                          ),
                                        ),
                                        height: height * 0.04,
                                        width: width * 0.30,
                                        child: Center(
                                          child: Text(
                                            'Editar perfil',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Colors.black),
                                          ),
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
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 7),
                                    child: Text(
                                      '${userData["descricaoAcademica"]}',
                                      style: TextStyle(
                                          color: Color(0xFF808080),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    '${userData["descricao"]}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: height * userScreenComponentsSize[3]["size"],
                  width: width,
                  decoration: BoxDecoration(color: Color(0xFF4065FC)),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              showAbas = 1;
                              print(showAbas);
                            },
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          color: showAbas == 1
                              ? Color(0xFFD8DFFC)
                              : Color(0xFF3B64FA),
                          child: Center(
                            child: Text(
                              '${carouselItems[0]}',
                              style: TextStyle(
                                fontSize: 14,
                                color: showAbas == 1
                                    ? Color(0xFF3B64FA)
                                    : Color(0xFFD8DFFC),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              showAbas = 2;
                            },
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          color: showAbas == 2
                              ? Color(0xFFD8DFFC)
                              : Color(0xFF3B64FA),
                          child: Center(
                            child: Text(
                              '${carouselItems[1]}',
                              style: TextStyle(
                                fontSize: 14,
                                color: showAbas == 2
                                    ? Color(0xFF3B64FA)
                                    : Color(0xFFD8DFFC),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              showAbas = 3;
                            },
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          color: showAbas == 3
                              ? Color(0xFFD8DFFC)
                              : Color(0xFF3B64FA),
                          child: Center(
                            child: Text(
                              '${carouselItems[2]}',
                              style: TextStyle(
                                fontSize: 14,
                                color: showAbas == 3
                                    ? Color(0xFF3B64FA)
                                    : Color(0xFFD8DFFC),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * userScreenComponentsSize[4]["size"],
                  width: width,
                  decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2 +
                        (0.06 * MediaQuery.of(context).size.height / 2),
                    child: Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: showAbas == 1
                            ? Projetos()
                            : showAbas == 2
                                ? Repertorio()
                                : showAbas == 3
                                    ? Text('eita')
                                    : Text('Deu errado'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: (height * 0.11) * 1.35,
              left: width * 0.05,
              child: ClipRRect(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black),
                  child: Image.asset(
                    "images/xereque.png",
                    height: height * 0.11,
                    width: height * 0.11,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                borderRadius: BorderRadius.circular(150),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
