import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height,
      width: width,
      color: const Color(0xFFB2B8D2),
      child: Stack(
        children: [
          Center(
            child: Container(
              height: height * 0.23,
              width: width - width * 0.15,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: (height * 0.23) / 2.5,
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.05,
                        width: width / 1.35,
                        decoration: BoxDecoration(
                          color: const Color(0xFF4065FC),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          onLongPress: () {},
                          child: const Text(
                            'Entrar no aplicativo',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'Ainda não é cadastrado? Clique aqui.',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF3A64FA),
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
