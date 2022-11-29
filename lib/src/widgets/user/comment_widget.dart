import 'package:flutter/material.dart';
import 'package:inova/src/utils/variables/variables.dart';
import 'package:inova/src/widgets/user/user_comments_page.dart';

class CommentsWidget extends StatefulWidget {
  const CommentsWidget({Key? key}) : super(key: key);

  @override
  CommentsWidgetState createState() => CommentsWidgetState();
}

class CommentsWidgetState extends State<CommentsWidget> {
  int showAbas = 1;
  bool isInitialValue = true;

  int myDuration = 2;

  Widget star = const Icon(Icons.star, size: 12, color: Color(0xFF4065FC));
  double commentOpacity = .5;
  bool showGhostCard = false;

  String commentText =
      'Trabalho sensacional feito pelo aluno. Esse mlk merece 5k de salário pq ele é foda. O melhor aluno da minha vida. Foram 5 meses desenvolvendo o aplicativo e pipipipopopo e tals tals tals ';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: showGhostCard ? commentOpacity : 1,
          child: GestureDetector(
            onTap: () {
              setState(() {
                showGhostCard = !showGhostCard;
              });
            },
            onDoubleTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CommentsPage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width - 20,
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xFF4065FC),
                                border: Border.all(
                                    width: 1, color: const Color(0xFF4065FC)),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(60),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(150),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.black),
                                  child: Image.asset(
                                    "images/xereque.png",
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tarsis Marinho',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF4065FC),
                                      fontFamily: appUniqueFont,
                                    ),
                                  ),
                                  Text(
                                    'Professor',
                                    style: TextStyle(
                                      color: const Color(0xFF8599EA),
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: appUniqueFont,
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
                          margin: const EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width - 20,
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              commentText,
                              style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'InterM',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
