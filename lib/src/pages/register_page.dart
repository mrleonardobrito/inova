import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

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
                      child: Text('Whatinif', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                      ),),),
                  )
              ),
              Container(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50),)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: ListView(
                        children: [
                          Text('Cadastro', style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                          ),),
                          Container(
                              child: Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Email...',
                                  ),
                                ),
                              )
                          ),
                          Container(
                              child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Senha...',
                                  ),
                                ),
                              )
                          ),
                          Container(
                              child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Confirmar senha...',
                                  ),
                                ),
                              )
                          ),
                          Container(
                              child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Telefone...',
                                  ),
                                ),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 100),
                            child: ElevatedButton(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                                  child: Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius: BorderRadius.all(Radius.circular(60))
                                          ),

                                        ),
                                      ),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 35),
                                            child: Center(
                                              child: Text('Cadastrar-se com o Googless', style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                            ),
                                          )
                                      )
                                    ],
                                  )
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.white,
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(60))),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),),
                          Padding(padding: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 11.0),
                                child: Text('Cadastrar-se', style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF3A64FA),
                                onPrimary: Colors.white,
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(60))),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),
                          )
                        ],
                      ),
                    )
                ),
              )
            ],
          )
      ),
    );
  }
}
