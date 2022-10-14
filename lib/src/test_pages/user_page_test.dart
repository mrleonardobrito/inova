import 'package:flutter/material.dart';

class UserPageTest extends StatefulWidget {
  const UserPageTest({Key? key}) : super(key: key);

  @override
  _UserPageTestState createState() => _UserPageTestState();
}

class _UserPageTestState extends State<UserPageTest> {
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
                    height: height * 0.07,
                    width: width,
                    decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                  ),
                  Container(
                    height: height * 0.13,
                    width: width,
                    decoration: BoxDecoration(color: Color(0xFF4065FC)),
                  ),
                  Container(
                    height: height * 0.21,
                    width: width,
                    decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                  ),
                  Spacer(),
                  Container(
                    height: height * 0.07,
                    width: width,
                    decoration: BoxDecoration(color: Color(0xFF4065FC)),
                  ),
                  Container(
                    height: height * 0.42,
                    width: width,
                    decoration: BoxDecoration(color: Color(0xFFE8ECFF)),
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
          )),
    );
  }
}
