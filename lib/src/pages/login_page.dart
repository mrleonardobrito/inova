import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:whatinif/src/pages/home_page.dart';
import 'package:whatinif/src/pages/register_page.dart';
import 'package:whatinif/src/pages/user/user_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showPassword = false;
  bool _showConfirmPassword = false;

  var maskFormatter = new MaskTextInputFormatter(
    mask: '+55 (##) ####-####',
  );

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    final formKey = GlobalKey<FormState>();
    String? _email = 'adminINOVA@gmail.com';
    String? _senha = '40028922';

    bool validaEmail = false;
    bool validaSenha = false;

    bool senhaIsEmpty = true;

    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        color: Color(0xFF4065FC),
        child: Column(
          children: [
            Container(
              height: _height * 0.25,
              width: _width * 0.75,
              child: Padding(
                padding: EdgeInsets.only(left: 0, bottom: 30),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Whatinif',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),
            ),
            Container(
              child: Container(
                height: _height * 0.75,
                width: _width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 35),
                  child: ListView(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(top: 25),
                                child: TextFormField(
                                  validator: (String? value) {
                                    if (value != _email)
                                      return "E-mail incorreto";
                                    if (value == _email) {
                                      setState(
                                        () {
                                          validaEmail = true;
                                        },
                                      );
                                    }
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Email...',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: TextFormField(
                                  validator: (String? value) {
                                    if (value != _senha) {
                                      return "Senha incorreta";
                                    } else if (value == _senha)
                                      setState(
                                        () {
                                          validaSenha = true;
                                        },
                                      );
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Senha...',
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            _showPassword = !_showPassword;
                                          },
                                        );
                                      },
                                      child: Icon(
                                        _showPassword
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Color(0xFF4065FC),
                                      ),
                                    ),
                                  ),
                                  obscureText: !_showPassword,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cadastro()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 13),
                          child: Center(
                            child: Text(
                              'Ainda não é cadastrado? cadastre-se aqui!',
                              style: TextStyle(
                                  color: Color(0xFF4065FC),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: _height * 0.33),
                              child: ElevatedButton(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7.0),
                                  child: Container(
                                    width: _width,
                                    child: Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15))),
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 35),
                                            child: Center(
                                              child: Text(
                                                'Entrar com conta Google',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                ),
                                onPressed: () {
                                  print('Pressed');
                                },
                              ),
                            ),
                            Container(
                              width: _width,
                              child: Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: ElevatedButton(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12.0),
                                    child: Text(
                                      'Entrar',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF3A64FA),
                                    onPrimary: Colors.white,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                  onPressed: () {
                                    formKey.currentState?.validate();
                                    if (validaSenha == true &&
                                        validaEmail == true) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()),
                                      );
                                    }
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
