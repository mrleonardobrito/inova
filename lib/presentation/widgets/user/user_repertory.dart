import 'package:flutter/material.dart';
import 'package:inova/presentation/utils/variables/variables.dart';
import 'package:inova/presentation/widgets/user/comment_widget.dart';

class Repertorio extends StatefulWidget {
  const Repertorio({Key? key}) : super(key: key);

  @override
  RepertorioState createState() => RepertorioState();
}

class RepertorioState extends State<Repertorio> {
  int showAbas = 1;
  final _height = 90.0;
  List numberLineArr = [1, 2, 3, 4, 5];
  List<double> sizeLineArr = [220.0, 140.0, 40.0, 23.0, 12.0];
  final _lineHeight = 17.0;

  returnLine(numberLine, sizeLine) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: Row(
              children: [
                Text(
                  "${numberLineArr[numberLine]}",
                  style: TextStyle(
                    color: const Color(0xFF4065FC),
                    fontSize: 15,
                    fontFamily: appUniqueFont,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.15,
                  height: 9,
                  child: Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.all(
                              Radius.circular(60),
                            ),
                          ),
                        ),
                        Container(
                          width: sizeLineArr[sizeLine],
                          decoration: const BoxDecoration(
                            color: Color(0xFF4065FC),
                            borderRadius: BorderRadius.all(
                              Radius.circular(60),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

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

    const colorLineBackground = Colors.transparent;
    double marginTopContainer = 25.0;
    double heightContainer = 40.0;

    verificaEstrela() {
      if (stars < 1 && stars > 0) {
        return Row(children: [
          halfStarIcon,
          emptyStar,
          emptyStar,
          emptyStar,
          emptyStar
        ]);
      } else if (stars == 1) {
        return Row(
            children: [starIcon, emptyStar, emptyStar, emptyStar, emptyStar]);
      } else if (stars < 2 && stars > 1) {
        return Row(children: [
          starIcon,
          halfStarIcon,
          emptyStar,
          emptyStar,
          emptyStar
        ]);
      } else if (stars == 2) {
        return Row(
            children: [starIcon, starIcon, emptyStar, emptyStar, emptyStar]);
      } else if (stars < 3 && stars > 2) {
        return Row(
            children: [starIcon, starIcon, halfStarIcon, emptyStar, emptyStar]);
      } else if (stars == 3) {
        return Row(
            children: [starIcon, starIcon, starIcon, emptyStar, emptyStar]);
      } else if (stars < 4 && stars > 3) {
        return Row(
            children: [starIcon, starIcon, starIcon, halfStarIcon, emptyStar]);
      } else if (stars == 4) {
        return Row(
            children: [starIcon, starIcon, starIcon, starIcon, emptyStar]);
      } else if (stars < 5 && stars > 4) {
        return Row(
            children: [starIcon, starIcon, starIcon, starIcon, halfStarIcon]);
      } else if (stars == 5) {
        return Row(
            children: [starIcon, starIcon, starIcon, starIcon, starIcon]);
      } else if (stars > 5) {
        return Row(
            children: [starIcon, starIcon, starIcon, starIcon, starIcon]);
      } else if (stars < 0) {}
    }

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.52,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Expanded(
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(9))),
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: _height,
                            width: MediaQuery.of(context).size.width / 2.28,
                            color: Colors.transparent,
                            child: ListView(
                              children: [
                                Container(
                                  height: _height / 2,
                                  color: Colors.transparent,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      10,
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      stars.toString(),
                                      style: const TextStyle(
                                        color: Color(0xFF4065FC),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 33,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: _height / 2,
                                  width:
                                      MediaQuery.of(context).size.width / (2),
                                  color: Colors.transparent,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      width: 140,
                                      color: Colors.transparent,
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 5,
                                          ),
                                          child: verificaEstrela(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: _lineHeight,
                            width: MediaQuery.of(context).size.width / 2,
                            color: colorLineBackground,
                            child: returnLine(4, 0),
                          ),
                          Container(
                            height: _lineHeight,
                            width: MediaQuery.of(context).size.width / 2,
                            color: colorLineBackground,
                            child: returnLine(3, 1),
                          ),
                          Container(
                            height: _lineHeight,
                            width: MediaQuery.of(context).size.width / 2,
                            color: colorLineBackground,
                            child: returnLine(2, 2),
                          ),
                          Container(
                            height: _lineHeight,
                            width: MediaQuery.of(context).size.width / 2,
                            color: colorLineBackground,
                            child: returnLine(1, 3),
                          ),
                          Container(
                            height: _lineHeight,
                            width: MediaQuery.of(context).size.width / 2,
                            color: colorLineBackground,
                            child: returnLine(0, 4),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: marginTopContainer),
                        height: heightContainer,
                        width: MediaQuery.of(context).size.width / 2,
                        color: Colors.transparent,
                        child: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 26),
                            child: Row(
                              children: const [
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
                                    fontSize: 13,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        margin: EdgeInsets.only(top: marginTopContainer),
                        height: heightContainer,
                        width: MediaQuery.of(context).size.width / 2,
                        color: Colors.transparent,
                        child: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 26),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.school,
                                  size: 30,
                                  color: Color(0xFF4065FC),
                                ),
                                Spacer(),
                                Text(
                                  'Baixar diploma',
                                  style: TextStyle(
                                    color: Color(0xFF4065FC),
                                    fontSize: 13,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const CommentsWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
