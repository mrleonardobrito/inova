import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/home_page.dart';
import 'package:whatinif/src/pages/user/user_page.dart';
import 'package:whatinif/src/widget/bottom_bar_navigator.dart';

class EditUser extends StatefulWidget {
  const EditUser({Key? key}) : super(key: key);

  @override
  _EditUserState createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  @override
  Widget build(BuildContext context) {
    const userData = [
      {
        "nome" : "Emanuel Vilela",
        "turma":  "914 - 4° Ano",
        "descricao" : "Gosto de programar e fazer aplicativos. Estou cursando o ensino médio no Instituto Federal de Alagoas.",
      },
    ];
    return Scaffold(
        appBar: AppBar(
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
              Icons.arrow_back_sharp,
              color: Colors.black,
              size: 25,
            ),
          ),
          title: Text(
            'Voltar',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          backgroundColor: Colors.white,
        ),
        body: Text('Editar perfil')
    );
  }
}
