import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:inova/src/pages/home/home_page.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  CadastroState createState() => CadastroState();
}

class CadastroState extends State<Cadastro> {
  bool showPassword = false;
  bool showConfirmPassword = false;

  var maskFormatter = MaskTextInputFormatter(
    mask: '+55 (##) ####-####',
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final formKey = GlobalKey<FormState>();

    String? email = 'adminINOVA@gmail.com';
    String? senha = '40028922';

    bool validaEmail = false;
    bool validaSenha = false;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: const Color(0xFF4065FC),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.25,
              width: width * 0.75,
              child: const Padding(
                padding: EdgeInsets.only(left: 0, bottom: 30),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Inova',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.75,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 35,
                ),
                child: ListView(
                  children: [
                    const Text(
                      'Cadastro',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: TextFormField(
                              validator: (String? value) {
                                if (value != email) return "E-mail incorreto";
                                if (value == email) {
                                  setState(
                                    () {
                                      validaEmail = true;
                                    },
                                  );
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                hintText: 'Email...',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextFormField(
                              validator: (String? value) {
                                if (value != senha) {
                                  return "Senha incorreta";
                                } else if (value == senha) {
                                  setState(
                                    () {
                                      validaSenha = true;
                                    },
                                  );
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Senha...',
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(
                                      () {
                                        showPassword = !showPassword;
                                      },
                                    );
                                  },
                                  child: Icon(
                                    showPassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: const Color(0xFF4065FC),
                                  ),
                                ),
                              ),
                              obscureText: !showPassword,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextFormField(
                              validator: (String? value) {
                                if (value != senha) {
                                  return "Senha incorreta";
                                } else if (value == senha) {
                                  setState(
                                    () {
                                      validaSenha = true;
                                    },
                                  );
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Confirmar senha...',
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showConfirmPassword =
                                          !showConfirmPassword;
                                    });
                                  },
                                  child: Icon(
                                    showConfirmPassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: const Color(0xFF4065FC),
                                  ),
                                ),
                              ),
                              obscureText:
                                  showConfirmPassword == false ? true : false,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Campo Obrigatorio";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                hintText: 'Telefone...',
                              ),
                              inputFormatters: [maskFormatter],
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Cadastro(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 13),
                        child: const Center(
                          child: Text(
                            'Ainda não é cadastrado? cadastre-se aqui!',
                            style: TextStyle(
                              color: Color(0xFF4065FC),
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 7.0),
                              child: SizedBox(
                                width: width,
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: const BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 35),
                                        child: Center(
                                          child: Text(
                                            'Entrar com conta Google',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: width,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF3A64FA),
                                foregroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 12.0,
                                ),
                                child: Text(
                                  'Entrar',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                formKey.currentState?.validate();
                                if (validaSenha == true &&
                                    validaEmail == true) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
