import 'package:flutter/material.dart';
import 'package:inova/src/data/dao/auth_dao.dart';
import 'package:inova/src/pages/login/login_page.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool _showPassword = false;
  bool _showConfirmPassword = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController nomeController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    bool validaEmail = false;
    bool validaSenha = false;

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
                    'Inova',
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
                        'Cadastro',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(top: 25),
                                child: TextFormField(
                                  controller: emailController,
                                  validator: (String? value) {
                                    if (value != emailController.text)
                                      return "E-mail incorreto";
                                    if (value == emailController.text) {
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
                                  controller: senhaController,
                                  validator: (String? value) {
                                    if (value != senhaController.text) {
                                      return "Senha incorreta";
                                    } else if (value == senhaController.text)
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
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: TextFormField(
                                  validator: (String? value) {
                                    if (value != senhaController.text) {
                                      return "Senha incorreta";
                                    } else if (value == senhaController.text)
                                      setState(
                                        () {
                                          validaSenha = true;
                                        },
                                      );
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Confirmar senha...',
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _showConfirmPassword =
                                              !_showConfirmPassword;
                                        });
                                      },
                                      child: Icon(
                                        _showConfirmPassword
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Color(0xFF4065FC),
                                      ),
                                    ),
                                  ),
                                  obscureText: _showConfirmPassword == false
                                      ? true
                                      : false,
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Campo Obrigatorio";
                                    } else {
                                      return null;
                                    }
                                  },
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    hintText: 'Nome...',
                                  ),
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
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 13),
                          child: Center(
                            child: Text(
                              'Já é cadastrado? Faça Login!',
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
                              padding: EdgeInsets.only(top: 10),
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
                                        Radius.circular(15),
                                      ),
                                    ),
                                  ),
                                  onPressed: handlePressed,
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

  Future<void> handlePressed() async {
    if (_formKey.currentState!.validate()) {
      var email = emailController.text;
      var senha = senhaController.text;
      var nome = nomeController.text;

      await AuthDao().cadastrar(nome, email, senha);

      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    }
  }
}
