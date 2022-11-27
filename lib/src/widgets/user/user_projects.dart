import 'package:flutter/material.dart';

class Projetos extends StatefulWidget {
  const Projetos({Key? key}) : super(key: key);

  @override
  ProjetosState createState() => ProjetosState();
}

class ProjetosState extends State<Projetos> {
  int showAbas = 1;

  @override
  Widget build(BuildContext context) {
    const projectData = [
      {
        "nome": "DadosJusBrasil",
        "orientador": "Daniel Lacert Fireman",
        "descricao":
            'Aplicativo para pipipipopopo pipipipopopo pipipipopopo pipipipopopo',
        "dataTermino": "02/03/2017",
      },
      {
        "nome": "Meta",
        "orientador": "Felipe Alencar",
        "descricao":
            'Estágio em parceria com o Mark Zuckerberg para a produção do Whatsapp 2',
        "dataTermino": "02/03/2022",
      },
      {
        "nome": "Facebook",
        "orientador": "Mark Zuckerberg",
        "descricao":
            'Estágio feito para mudar a foto de perfil do Marquinhos, em que ele não sabia mudar',
        "dataTermino": "Em andamento",
      },
      {
        "nome": "uTorrent Mobile",
        "orientador": "Tarsis Marinho",
        "descricao": 'Aplicativo para piratear arquivos',
        "dataTermino": "31/08/2020",
      },
      {
        "nome": "DadosJusBrasil",
        "orientador": "Daniel Lacert Fireman",
        "descricao":
            'Aplicativo para pipipipopopo pipipipopopo pipipipopopo pipipipopopo',
        "dataTermino": "02/03/2017",
      },
      {
        "nome": "Meta",
        "orientador": "Felipe Alencar",
        "descricao":
            'Estágio em parceria com o Mark Zuckerberg para a produção do Whatsapp 2',
        "dataTermino": "02/03/2022",
      },
      {
        "nome": "Facebook",
        "orientador": "Mark Zuckerberg",
        "descricao":
            'Estágio feito para mudar a foto de perfil do Marquinhos, em que ele não sabia mudar',
        "dataTermino": "Em andamento",
      },
      {
        "nome": "uTorrent Mobile",
        "orientador": "Tarsis Marinho",
        "descricao": 'Aplicativo para piratear arquivos',
        "dataTermino": "31/08/2020",
      },
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: ListView.builder(
          itemCount: projectData.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                height: 107,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFFE8ECFF),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          Text(
                            '${projectData[index]["nome"]}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                size: 18,
                                color: Color(0xFFBFBFBF),
                              ),
                              Text(
                                '${projectData[index]["dataTermino"]}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Color(0xFFBFBFBF),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        '${projectData[index]["orientador"]}',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color(0xFF878787),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '${projectData[index]["descricao"]}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
