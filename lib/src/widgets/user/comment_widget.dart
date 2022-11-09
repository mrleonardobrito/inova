import 'package:flutter/material.dart';
import 'package:inova/src/utils/variables/variables.dart';
import 'package:inova/src/widgets/user/user_comments_page.dart';

class CommentsWidget extends StatefulWidget {
  const CommentsWidget({Key? key}) : super(key: key);

  @override
  _CommentsWidgetState createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget> {
  int showAbas = 1;
  bool _isInitialValue = true;

  int _myDuration = 2;

  Widget star = Icon(Icons.star, size: 12, color: Color(0xFF4065FC));
  double _commentOpacity = .5;
  bool _showGhostCard = false;

  String commentText = 'Trabalho sensacional feito pelo aluno. Esse mlk merece 5k de salário pq ele é foda. O melhor aluno da minha vida. Foram 5 meses desenvolvendo o aplicativo e pipipipopopo e tals tals tals ';
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                  MaterialPageRoute(builder: (context) => CommentsPage()),
                );
              },
              child: Container(
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
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
                                        color: Color(0xFF4065FC),
                                        border: Border.all(
                                            width: 1,
                                            color: const Color(0xFF4065FC)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(60))),
                                    child: ClipRRect(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: Colors.black),
                                        child: Image.asset(
                                          "images/xereque.png",
                                          height: 40,
                                          width: 40,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(150),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tarsis Marinho',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF4065FC),
                                              fontFamily: appUniqueFont
                                          ),
                                        ),
                                        Text(
                                          'Professor',
                                          style: TextStyle(
                                              color: Color(0xFF8599EA),
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: appUniqueFont
                                          ),
                                        ),
                                        Positioned(
                                          left: 100,
                                          child: Row(
                                            children: [
                                              Container(child: star),
                                              Container(child: star),
                                              Container(child: star),
                                              Container(child: star),
                                              Container(child: star),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                width: MediaQuery.of(context).size.width - 20,
                                color: Colors.transparent,
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    commentText,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'InterM'
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),),),
            ),),
        Opacity(
            opacity: !_showGhostCard ? 0 : 1,
            child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 2 - 80, top: 67),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _showGhostCard = !_showGhostCard;
                      print(_showGhostCard);
                    },);
                  },
                  onDoubleTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CommentsPage()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color(0xFF4065FC),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Center(
                      child: Text(
                        'Clique duas vezes',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold,fontFamily: appUniqueFont),
                      ),
                    ),
                  ),
                ),),),
      ],
    );
  }
}
