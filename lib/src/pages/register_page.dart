import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

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
    mask: '+55 (##) ####-####',
  );

  @override
  Widget build(BuildContext context) {
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
                            fontWeight: FontWeight.bold,
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
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: ListView(
                        children: [
                          Text(
                            'Cadastro',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Container(
                              child: Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: TextFormField(
                              /* validator: (value){
                                if(value.length < 10){
                                  return "O seu e-mail parece pequeno.";
                                }else if(!value.contains("@")){
                                  return "Seu e-mail não contém um @";
                                }
                              }, */
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
                              obscureText:
                                  _showPassword == false ? true : false,
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
                          Padding(
                            padding: EdgeInsets.only(top: 100),
                            child: ElevatedButton(
                              child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
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
                                                  Radius.circular(60))),
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
                                                        FontWeight.bold),
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
                                        BorderRadius.all(Radius.circular(60))),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),
                          ),
                          Padding(
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
                                    const EdgeInsets.symmetric(vertical: 11.0),
                                child: Text(
                                  'Cadastrar-se',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF3A64FA),
                                onPrimary: Colors.white,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(60))),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
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
