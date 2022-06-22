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
  @override
  Widget build(BuildContext context) {
    const bottomBarHeight = 80;
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
                    color: Color(0xFFB4BECE),
                    size: 30,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
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
                    color: Color(0xFF3B64FA),
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
