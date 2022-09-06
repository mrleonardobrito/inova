import 'package:flutter/material.dart';
import 'package:whatinif/src/widget/bottom_bar_navigator.dart';
import 'package:whatinif/src/widget/categoria_chip.dart';

import '../../utils/vaga.dart';

Widget titleVagaWidget(String titulo, String horas, width) {
  return Container(
    padding: EdgeInsets.only(left: 10),
    child: Wrap(crossAxisAlignment: WrapCrossAlignment.start, children: [
      Container(
        width: width * 0.8,
        padding: EdgeInsets.only(bottom: 5),
        child: Text(
          titulo,
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Spacer(),
      Container(
        child: Padding(
          padding: EdgeInsets.only(right: 10),
          child: Text(
            horas,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
    ]),
  );
}

Widget professoresWidget() {
  return Container(
    child: Padding(
      padding: EdgeInsets.only(left: 20, top: 15),
      child: Text(
        'Professores:  Daniel Fireman e Felipe Alencar',
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget vagaWidget() {
  return Container(
    child: Padding(
      padding: EdgeInsets.only(left: 20, top: 15),
      child: Text(
        'Vagas Disponiveis: 4 ',
        style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget bolsaWidget() {
  return Container(
    child: Padding(
      padding: EdgeInsets.only(left: 20, top: 15),
      child: Text(
        'Bolsa Disponível: R400,00 - R850,00 ',
        style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget estrelasWidget() {
  return Row(
    children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 15),
          child: Text(
            'Avaliação dos Usuarios:',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 13),
          child: Row(
            children: [
              Icon(Icons.star, color: Colors.blueAccent, size: 20),
              Icon(Icons.star, color: Colors.blueAccent, size: 20),
              Icon(Icons.star, color: Colors.blueAccent, size: 20),
              Icon(Icons.star, color: Colors.blueAccent, size: 20),
              Icon(Icons.star, color: Colors.blueAccent, size: 20),
            ],
          ),
        ),
      )
    ],
  );
}

Widget descricaoDaVaga() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 20),
          child: Text(
            'Descrição completa da vaga',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 15),
          child: Text(
            'Proposta',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 15),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
      ),
      Container(
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 15),
          child: Text(
            'Oque irei fazer na vaga?',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 15),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget categoriasWidget() {
  const listaItens = <String>[
    "Projeto",
    "Informática",
    "Programação Web",
    "API",
    "FrontEnd",
    "BackEnd",
    "SCRUM",
    "Metodologia Ágil",
    "Data Science"
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 15),
          child: Text(
            'Categorias',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Wrap(
          children: listaItens.map((label) => VagaChip(label: label)).toList(),
        ),
      ),
    ],
  );
}

Widget conhecimentosNecessariosWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
          child: Padding(
              padding: EdgeInsets.only(left: 20, top: 15),
              child: Text(
                'Conhecimentos Necessários',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ))),
      Container(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '- Conhecimento básico em ciências de dados',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '- Conhecimento em tecnologias web: HTML, CSS e JS',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '- Facilidade em escrever e revisar código',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '- Conhecimento em metodologia ágil',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '- Saber usar GitHub',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '- Conhecimento em Excel(opcional)',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ))
    ],
  );
}

Widget aoFinalDoTrabalhoWidget() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Container(
      child: Padding(
        padding: EdgeInsets.only(left: 20, top: 15),
        child: Text(
          'Ao final da prática o aluno haverá',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    Container(
        child: Column(children: [
      Container(
        margin: EdgeInsets.only(left: 20, top: 10),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            '- Experiência profissional comprovada',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 20, top: 10),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            '- Conhecimento sobre como produzir APIs',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 20, top: 10, bottom: 25),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            '- Prática em metodologias ágeis de trabalho',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ]))
  ]);
}

Widget interessaNaVagaButton(width) {
  return Container(
    height: 40,
    margin: EdgeInsets.only(left: 20, bottom: 25, right: 20),
    decoration: BoxDecoration(
        color: Color(0xFF4065FC), borderRadius: BorderRadius.circular(10)),
    child: TextButton(
      child: Text(
        'Tenho interesse na vaga!!!',
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: TextButton.styleFrom(
        primary: Colors.white,
      ),
      onPressed: () {
        print('Pressed');
      },
    ),
  );
}

class InfoVaga extends StatelessWidget {
  final Vaga vaga;

  const InfoVaga({Key? key, required this.vaga}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      height: height,
      width: width,
      color: Color(0xFFEFEFEF),
      child: CustomScrollView(scrollBehavior: ScrollBehavior(), slivers: [
        SliverAppBar(
          expandedHeight: height * 0.20,
          backgroundColor: const Color(0xFF4065FC),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Container(
              height: 25,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
                color: Color(0xFFEFEFEF),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ListView(
            shrinkWrap: true,
            children: [
              titleVagaWidget(vaga.titulo, vaga.horas, width),
              professoresWidget(),
              vagaWidget(),
              bolsaWidget(),
              estrelasWidget(),
              descricaoDaVaga(),
              categoriasWidget(),
              conhecimentosNecessariosWidget(),
              aoFinalDoTrabalhoWidget(),
              interessaNaVagaButton(width)
            ],
          ),
        )
      ]),
    ));
  }
}
