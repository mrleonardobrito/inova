import 'package:flutter/material.dart';
import 'package:whatinif/src/widget/bottom_bar_navigator.dart';

class InfoVaga extends StatefulWidget {
  const InfoVaga({Key? key}) : super(key: key);

  @override
  _InfoVagaState createState() => _InfoVagaState();
}

class _InfoVagaState extends State<InfoVaga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Color(0xff4065FC),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomBar()),
                    );
                  },
                  child: Text(
                    'Salvar',
                    style: TextStyle(color: Color(0xff4065FC)),
                  )),
            )
          ],
          leading: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomBar()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.white,
            ),
            child: Icon(
              Icons.close,
              color: Colors.black,
              size: 25,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: Text("Mica"),
        ));
  }
}
