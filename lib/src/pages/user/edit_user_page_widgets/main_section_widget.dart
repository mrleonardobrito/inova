import 'package:flutter/material.dart';

class MainSectionWidget extends StatefulWidget {
  const MainSectionWidget({Key? key}) : super(key: key);

  @override
  _MainSectionWidgetState createState() => _MainSectionWidgetState();
}

class _MainSectionWidgetState extends State<MainSectionWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double textFieldRadius =  10;

    print(width);
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            Container(
              height: 1,
              margin: EdgeInsets.only(bottom: 20),
              width: width - 35,
              color: Color(0xFF9D9D9D),
            ),
            Container(
              width: width,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 7, bottom: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Descrição do usuário',
                        style: TextStyle(
                            color: Color(0xFF3B64FA),
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      minLines: 5,
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(textFieldRadius),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(textFieldRadius),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        disabledBorder: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xFFE8ECFF),
                        hintText: "Digite aqui...",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.picture_as_pdf,
                                  size: 31,
                                  color: Color(0xFF4065FC),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text('Inserir currículo', style: TextStyle(color: Color(0xFF4065FC), fontSize: 13),),
                                )
                              ],
                            )
                          ),
                          Spacer(),
                          GestureDetector(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.school,
                                    size: 31,
                                    color: Color(0xFF4065FC),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Text('Inserir diploma', style: TextStyle(color: Color(0xFF4065FC), fontSize: 13),),
                                  )
                                ],
                              )
                          ),
                        ],
                      ),
                    )
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('Projetos do usuário', style: TextStyle(color: Color(0xFF4065FC), fontSize: 13),),
                      ],
                    )
                  )
                ],
              ),
            )
          ],
        ));
  }
}
