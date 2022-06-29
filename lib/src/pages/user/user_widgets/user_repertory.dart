import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/home_page.dart';
import 'package:whatinif/src/pages/user/user_comments_page.dart';
import 'package:whatinif/src/widget/bottom_bar_navigator.dart';
import 'package:whatinif/src/pages/user/edit_user_page.dart';

class Repertorio extends StatefulWidget {
  const Repertorio({Key? key}) : super(key: key);

  @override
  _RepertorioState createState() => _RepertorioState();
}

class _RepertorioState extends State<Repertorio> {
  int showAbas = 1;
  final _height = 90.0;
  List numberLineArr = [1, 2, 3, 4, 5];
  List sizeLineArr = [220, 140, 40, 23, 12];
  final _lineHeight = 17.0;

  returnLine(numberLine, sizeLine) {
    return ListView(physics: const NeverScrollableScrollPhysics(), children: [
      Container(
          width: MediaQuery.of(context).size.width / 3 - 10,
          child: Row(children: [
            Text(
              "${numberLineArr[numberLine]}",
              style: TextStyle(color: Color(0xFF4065FC), fontSize: 15),
            ),
            Spacer(),
            Container(
                width: MediaQuery.of(context).size.width / 2.15 - 10,
                height: 9,
                child: Expanded(
                    child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.all(Radius.circular(60))),
                    ),
                    Container(
                      width: sizeLineArr[sizeLine],
                      decoration: BoxDecoration(
                          color: Color(0xFF4065FC),
                          borderRadius: BorderRadius.all(Radius.circular(60))),
                    ),
                  ],
                )))
          ]))
    ]);
  }

  double _commentOpacity = .5;
  bool _showGhostCard = false;

  @override
  Widget build(BuildContext context) {
    double stars = 4.5;

    Widget halfStarIcon = const Icon(
      Icons.star_half,
      color: Color(0xFF4065FC),
      size: 26,
    );
    Widget starIcon = const Icon(
      Icons.star,
      color: Color(0xFF4065FC),
      size: 26,
    );
    Widget emptyStar = const Icon(
      Icons.star_border,
      color: Color(0xFF4065FC),
      size: 26,
    );

    final colorLineBackground = Colors.transparent;
    final _marginTopContainer = 25.0;
    final _heightContainer = 40.0;

    verificaEstrela() {
      if (stars < 1 && stars > 0) {
        print('meia estrela');
        return Row(children: [
          halfStarIcon,
          emptyStar,
          emptyStar,
          emptyStar,
          emptyStar
        ]);
      } else if (stars == 1) {
        print('uma estrela');
        return Row(
            children: [starIcon, emptyStar, emptyStar, emptyStar, emptyStar]);
      } else if (stars < 2 && stars > 1) {
        print('uma estrela e meia');
        return Row(children: [
          starIcon,
          halfStarIcon,
          emptyStar,
          emptyStar,
          emptyStar
        ]);
      } else if (stars == 2) {
        print('duas estrelas');
        return Row(
            children: [starIcon, starIcon, emptyStar, emptyStar, emptyStar]);
      } else if (stars < 3 && stars > 2) {
        print('duas estrelas e meia');
        return Row(
            children: [starIcon, starIcon, halfStarIcon, emptyStar, emptyStar]);
      } else if (stars == 3) {
        print('três estrelas');
        return Row(
            children: [starIcon, starIcon, starIcon, emptyStar, emptyStar]);
      } else if (stars < 4 && stars > 3) {
        print('três estrela e meia');
        return Row(
            children: [starIcon, starIcon, starIcon, halfStarIcon, emptyStar]);
      } else if (stars == 4) {
        print('quatro estrelas');
        return Row(
            children: [starIcon, starIcon, starIcon, starIcon, emptyStar]);
      } else if (stars < 5 && stars > 4) {
        print('quatro estrelas e meia');
        return Row(
            children: [starIcon, starIcon, starIcon, starIcon, halfStarIcon]);
      } else if (stars == 5) {
        print('cinco estrelas');
        return Row(
            children: [starIcon, starIcon, starIcon, starIcon, starIcon]);
      } else if (stars > 5) {
        print('cinco estrelas');
        return Row(
            children: [starIcon, starIcon, starIcon, starIcon, starIcon]);
      } else if (stars < 0) {
        print('número de estrelas inválido');
      }
    }

    Widget star = Icon(Icons.star, size: 12, color: Color(0xFF4065FC));
    String commentText =
        'Trabalho sensacional feito pelo aluno. Esse mlk merece 5k de salário pq ele é foda. O melhor aluno da minha vida. Foram 5 meses desenvolvendo o aplicativo e pipipipopopo e tals tals tals ';

    return Container(
      height: MediaQuery.of(context).size.height * 0.52,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Expanded(
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(9))),
              child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: _height,
                                width:
                                    MediaQuery.of(context).size.width / 2.28 -
                                        10,
                                color: Colors.transparent,
                                child: ListView(
                                  children: [
                                    Container(
                                      height: _height / 2,
                                      color: Colors.transparent,
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          10,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          '${stars}',
                                          style: TextStyle(
                                              color: Color(0xFF4065FC),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 33),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: _height / 2,
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          10,
                                      color: Colors.transparent,
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            width: 140,
                                            color: Colors.transparent,
                                            child: Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 5),
                                                  child: verificaEstrela(),
                                                ))),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  height: _lineHeight,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      10,
                                  color: colorLineBackground,
                                  child: returnLine(4, 0)),
                              Container(
                                  height: _lineHeight,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      10,
                                  color: colorLineBackground,
                                  child: returnLine(3, 1)),
                              Container(
                                  height: _lineHeight,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      10,
                                  color: colorLineBackground,
                                  child: returnLine(2, 2)),
                              Container(
                                  height: _lineHeight,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      10,
                                  color: colorLineBackground,
                                  child: returnLine(1, 3)),
                              Container(
                                  height: _lineHeight,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      10,
                                  color: colorLineBackground,
                                  child: returnLine(0, 4)),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: _marginTopContainer),
                              height: _heightContainer,
                              width: MediaQuery.of(context).size.width / 2 - 10,
                              color: Colors.transparent,
                              child: GestureDetector(
                                onTap: () {
                                  print('Curriculo');
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 26),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.picture_as_pdf,
                                        size: 30,
                                        color: Color(0xFF4065FC),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Baixar curriculo',
                                        style: TextStyle(
                                            color: Color(0xFF4065FC),
                                            fontSize: 14),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                          Spacer(),
                          Container(
                              margin: EdgeInsets.only(top: _marginTopContainer),
                              height: _heightContainer,
                              width: MediaQuery.of(context).size.width / 2 - 10,
                              color: Colors.transparent,
                              child: GestureDetector(
                                onTap: () {
                                  print('Escola');
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 26),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.school,
                                        size: 30,
                                        color: Color(0xFF4065FC),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Baixar diploma',
                                        style:
                                            TextStyle(color: Color(0xFF4065FC)),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                      Stack(
                        children: [
                          Opacity(
                              opacity: _showGhostCard ? _commentOpacity : 1,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showGhostCard = !_showGhostCard;
                                    print(_showGhostCard);
                                  });
                                },
                                onDoubleTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Comments()),
                                  );
                                },
                                child: Container(
                                    margin: EdgeInsets.only(top: 20),
                                    width:
                                    MediaQuery.of(context).size.width - 20,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xFFF5F5F5),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8))),
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration: BoxDecoration(
                                                          color:
                                                          Color(0xFF4065FC),
                                                          borderRadius:
                                                          BorderRadius.all(
                                                              Radius
                                                                  .circular(
                                                                  60))),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 5),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Text(
                                                            'Tarsis Marinho',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold,
                                                                color: Color(
                                                                    0xFF4065FC)),
                                                          ),
                                                          Text(
                                                            'Professor',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xFF8599EA),
                                                                fontSize: 11,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                          ),
                                                          Positioned(
                                                            left: 100,
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                    child:
                                                                    star),
                                                                Container(
                                                                    child:
                                                                    star),
                                                                Container(
                                                                    child:
                                                                    star),
                                                                Container(
                                                                    child:
                                                                    star),
                                                                Container(
                                                                    child:
                                                                    star),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin:
                                                  EdgeInsets.only(top: 10),
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                      20,
                                                  color: Colors.transparent,
                                                  child: Padding(
                                                    padding: EdgeInsets.all(5),
                                                    child: Text(
                                                      commentText,
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                        fontSize: 12

                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ))),
                              )
                          ),
                          Opacity(
                            opacity: !_showGhostCard ? 0: 1,
                              child: Padding(
                                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 2 - 80, top: 67),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showGhostCard = !_showGhostCard;
                                      print(_showGhostCard);
                                    });
                                  },
                                  onDoubleTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Comments()),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF4065FC),
                                        borderRadius: BorderRadius.all(Radius.circular(8))
                                    ),
                                    child: Center(
                                      child: Text('Clique duas vezes', style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                  ),
                                )
                              )
                          )
                        ],
                      )
                    ],
                  ))),
        ),
      ),
    );
  }
}
