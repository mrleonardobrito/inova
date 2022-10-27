import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:whatinif/src/pages/login/login_page.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool _showPassword = false;
  bool _showConfirmPassword = false;

  int showAbas = 1;

  var maskFormatter = new MaskTextInputFormatter(
    mask: '+55 (##) 9 ####-####',
  );

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFF4065FC),
          child: ListView(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Padding(
                    padding: EdgeInsets.only(left: 35, bottom: 30),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Whatinif',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 25),
                      ),
                    ),
                  )),
              Container(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(35),
                      child: ListView(
                        children: [
                          Text(
                            'Cadastro',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Container(
                              child: Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Email...',
                              ),
                            ),
                          )),
                          Container(
                              child: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Senha...',
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showPassword = !_showPassword;
                                    });
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
                          )),
                          Container(
                              child: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Confirmar senha...',
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showConfirmPassword = !_showConfirmPassword;
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
                              obscureText:
                                  _showConfirmPassword == false ? true : false,
                            ),
                          )),
                          Container(
                              child: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'Telefone...',
                              ),
                              inputFormatters: [maskFormatter],
                            ),
                          )),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Center(
                                child: Text(
                                  'Já possui uma conta? entre nela aqui',
                                  style: TextStyle(
                                      color: Color(0xFF4065FC),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 60),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 100),
                                  child: ElevatedButton(
                                    child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(vertical: 6.0),
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
                                            Align(
                                                alignment: Alignment.bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: 35),
                                                  child: Center(
                                                    child: Text(
                                                      'Cadastrar-se com o Google',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontWeight:
                                                          FontWeight.normal),
                                                    ),
                                                  ),
                                                ))
                                          ],
                                        )),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      onPrimary: Colors.white,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(15))),
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
                                      onLongPress: () {
                                        setState(() {
                                          showAbas = 2;
                                          print(showAbas);
                                        });
                                      },
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(vertical: 12.0),
                                        child: Text(
                                          'Cadastrar-se',
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
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(15))),
                                      ),
                                      onPressed: () {
                                        print('Pressed');
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              )
            ],
          )),
    );
  }
}
