import 'package:flutter/material.dart';
import 'package:whatinif/src/widget/bottom_bar_navigator.dart';

class EditUser extends StatefulWidget {
  const EditUser({Key? key}) : super(key: key);

  @override
  _EditUserState createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  int showAbas = 1;
  bool _isInitialValue = true;

  int _myDuration = 2;

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
        body: AnimatedContainer(
          duration: Duration(seconds: 5),
          color: _isInitialValue ? Colors.blue : Colors.green,
          child: const SizedBox(width: 100, height: 100),
        ));
  }
}
