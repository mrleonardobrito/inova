import 'package:flutter/material.dart';

class MainSectionWidget extends StatefulWidget {
  const MainSectionWidget({Key? key}) : super(key: key);

  @override
  _MainSectionWidgetState createState() => _MainSectionWidgetState();
}

class _MainSectionWidgetState extends State<MainSectionWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    print(width);
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            Container(
              height: 1,
              margin: EdgeInsets.only(bottom: 20),
              width: width - 35,
              color: Color(0xFF9D9D9D),
            ),
            Container(
              width: width,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 7),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Descrição do usuário',
                        style: TextStyle(
                            color: Color(0xFF3B64FA),
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      minLines: 5,
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFE8ECFF),
                        hintText: "Digite aqui...",
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
