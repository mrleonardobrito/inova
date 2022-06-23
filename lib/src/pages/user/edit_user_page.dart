import 'package:flutter/material.dart';
import 'package:whatinif/src/widget/bottom_bar_navigator.dart';

class EditUser extends StatefulWidget {
  const EditUser({Key? key}) : super(key: key);

  @override
  _EditUserState createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: (){},
                child: Text('Salvar'))
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
          child: Text('Editar perfil')
        ));
  }
}
