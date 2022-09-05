import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/user/user_page.dart';

class BottomSectionWidget extends StatefulWidget {
  const BottomSectionWidget({Key? key}) : super(key: key);

  @override
  _BottomSectionWidgetState createState() => _BottomSectionWidgetState();
}

class _BottomSectionWidgetState extends State<BottomSectionWidget> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    double textFieldRadius = 10;

    print(_width);
    return Center(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            width: _width,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xFF3B64FA),
                borderRadius: BorderRadius.circular(15)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserPage()),
                );
              },
              child: Center(
                  child: Text(
                'Salvar alterações',
                style: TextStyle(color: Colors.white, fontSize: 17),
              )),
            ),
          )),
    );
  }
}
