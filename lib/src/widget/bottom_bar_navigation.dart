import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/home_page.dart';
import 'package:whatinif/src/pages/user_page.dart';
import '../widget/vaga_card.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool colorIconHouse = true;
  bool colorIconUser = false;

  void mudarCorUser(){
    setState(() {
      colorIconUser = true;
      colorIconHouse = false;
    });
  }
  void mudarCorHouse(){
    setState(() {
      colorIconUser = false;
      colorIconHouse = false;
    });
  }

  @override
  Widget build(BuildContext context) {



    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              children: [
                TextButton(

                  onPressed: () {
                    mudarCorHouse();
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
                    Icons.house_rounded,
                    color: colorIconHouse ? Color(0xFF3B64FA) : Color(0xFFB4BECE),
                    size: 30,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    mudarCorUser();
                    print(colorIconUser);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.white,
                  ),
                  child: Icon(
                    Icons.account_circle_rounded,
                    color: colorIconUser ? Color(0xFF3B64FA) : Color(0xFFB4BECE),
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
