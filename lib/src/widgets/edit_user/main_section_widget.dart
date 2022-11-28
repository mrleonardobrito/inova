import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class MainSectionWidget extends StatefulWidget {
  const MainSectionWidget({Key? key}) : super(key: key);

  @override
  MainSectionWidgetState createState() => MainSectionWidgetState();
}

class MainSectionWidgetState extends State<MainSectionWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double textFieldRadius = 10;
    double circleHeight = 40;

    const listViewMargin = EdgeInsets.only(right: 13);

    Future getForm() async {
      final result = await FilePicker.platform.pickFiles();
      if (result == null) return;
    }

    const projectData = [
      {
        "nome": "DIT",
        "orientador": "Tarsis Marinho",
        "colaborador": "Victor Lemos",
        "descricao":
            'Aplicativo para pipipipopopo pipipipopopo pipipipopopo pipipipopopo',
        "dataTermino": "02/03/2017",
      },
      {
        "nome": "INOVA",
        "orientador": "Emanuel Vilela",
        "colaborador": "Leonardo Ferreira",
        "descricao":
            'Estágio em parceria com o Mark Zuckerberg para a produção do Whatsapp 2',
        "dataTermino": "02/03/2022",
      },
      {
        "nome": "LEAD",
        "orientador": "Daniel Fireman",
        "colaborador": "Micaele Rayanne",
        "descricao":
            'Estágio em parceria com o Mark Zuckerberg para a produção do Whatsapp 2',
        "dataTermino": "02/03/2022",
      },
      {
        "nome": "LEAD",
        "orientador": "Daniel Fireman",
        "colaborador": "Micaele Rayanne",
        "descricao":
            'Estágio em parceria com o Mark Zuckerberg para a produção do Whatsapp 2',
        "dataTermino": "02/03/2022",
      },
    ];

    final formKey = GlobalKey<FormState>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: [
          Container(
            height: 1,
            margin: const EdgeInsets.only(bottom: 20),
            width: width - 35,
            color: const Color(0xFF9D9D9D),
          ),
          SizedBox(
            width: width,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 7, bottom: 10),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Descrição do usuário',
                      style: TextStyle(
                        color: Color(0xFF3B64FA),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Form(
                  key: formKey,
                  child: TextFormField(
                    minLines: 5,
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Email necessário";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(textFieldRadius),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(textFieldRadius),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      disabledBorder: InputBorder.none,
                      filled: true,
                      fillColor: const Color(0xFFE8ECFF),
                      hintText: "Digite aqui...",
                      hintStyle: const TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            getForm();
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.picture_as_pdf_rounded,
                                size: 31,
                                color: Color(0xFF4065FC),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: const Text(
                                  'Inserir currículo',
                                  style: TextStyle(
                                    color: Color(0xFF4065FC),
                                    fontSize: 13,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            formKey.currentState?.validate();
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.school,
                                size: 31,
                                color: Color(0xFF4065FC),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: const Text(
                                  'Inserir diploma',
                                  style: TextStyle(
                                    color: Color(0xFF4065FC),
                                    fontSize: 13,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, left: 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 10, left: 15),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Projetos do usuário',
                              style: TextStyle(
                                color: Color(0xFF4065FC),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 130,
                          width: width,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: projectData.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: listViewMargin,
                                width: 150.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE8ECFF),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 3),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              '${projectData[index]["nome"]}',
                                              style: const TextStyle(
                                                fontSize: 15,
                                                color: Color(0xFF4065FC),
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 1),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: circleHeight,
                                              width: circleHeight,
                                              margin: const EdgeInsets.only(
                                                  right: 5),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(180),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  width: 80,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      '${projectData[index]["orientador"]}',
                                                      style: const TextStyle(
                                                        fontSize: 10,
                                                        color:
                                                            Color(0xFF4065FC),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 80,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "Orientador",
                                                      style: TextStyle(
                                                        fontSize: 8,
                                                        color:
                                                            Color(0xFF8599EA),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        Row(
                                          children: [
                                            Container(
                                              height: circleHeight,
                                              width: circleHeight,
                                              margin: const EdgeInsets.only(
                                                  right: 5),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  180,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: Colors.transparent,
                                              width: 80,
                                              child: Column(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      '${projectData[index]["colaborador"]}',
                                                      style: const TextStyle(
                                                        fontSize: 10,
                                                        color:
                                                            Color(0xFF4065FC),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                  const Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      "Colaborador",
                                                      style: TextStyle(
                                                        fontSize: 8,
                                                        color: Color(
                                                          0xFF8599EA,
                                                        ),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
