import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/user/user_comments_page.dart';
import 'package:whatinif/src/widget/bottom_bar_navigator.dart';

class HeaderSectionWidget extends StatefulWidget {
  const HeaderSectionWidget({Key? key}) : super(key: key);

  @override
  _HeaderSectionWidgetState createState() => _HeaderSectionWidgetState();
}

class _HeaderSectionWidgetState extends State<HeaderSectionWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double circleHeight = 450;

    print(width);
    return Container(
      color: Colors.grey,
      child: Stack(children: [
        Positioned(
            top: -260,
            right: width / 2 - ((circleHeight) / 2),
            child: Center(
              child: Container(
                height: circleHeight,
                width: circleHeight,
                decoration: BoxDecoration(
                    color: Color(0xFF3B64FA),
                    borderRadius: BorderRadius.circular(360)),
              ),
            )),
        Positioned(
          right: width / 2 - ((circleHeight * 0.25) / 2),
          top: (circleHeight * 0.56) / 2,
          child: Container(
            height: circleHeight * 0.25,
            width: circleHeight * 0.25,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(1000)),
            child: Stack(
              children: [
                ClipRRect(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black),
                    child: Image.asset(
                      "images/luffy.jpg",
                      height: circleHeight * 0.25,
                      width: circleHeight * 0.25,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(150),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            right: width / 2 - ((circleHeight * 0.5) / 2),
            top: (circleHeight * 1.1) / 2,
            child: Container(
              height: circleHeight * 0.25,
              width: circleHeight * 0.5,
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      'Emanuel Vilela',
                      style: TextStyle(
                          fontSize: 19, color: Colors.blue),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Emanuel Vilela',
                      style: TextStyle(
                          fontSize: 19, color: Colors.red),
                    ),
                  ),
                  Center(
                    child: Text('@emanuelvsz'),
                  ),
                ],
              ),
            )),
      ]),
    );
  }
}
