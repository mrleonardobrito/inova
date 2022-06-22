import 'package:flutter/material.dart';
import '../widget/vaga_card.dart';
import '../widget/bottom_bar_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const data = [
      {
        "titulo": "Monitoria de microcontroladores",
        "descricao":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        "horas": "400h",
        "professores": "Renata Silva",
        "categorias": [
          'monitoria',
          'eletroeletrônica',
          'microprocessadores',
          'circuitos integrados'
        ],
      }
    ];

    return Scaffold(
        body: Stack(children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFF4065FC),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            color: Color(0xFFEFEFEF),
          ),
          padding: const EdgeInsets.only(
              top: 40.0, left: 10.0, right: 10.0, bottom: 10.0),
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return VagaCard(
                titulo: '${data[index]["titulo"]}',
                descricao: '${data[index]["descricao"]}',
                horas: '${data[index]["horas"]}',
                professores: '${data[index]["professores"]}',
              );
            },
          ),
        ),
      ),
      BottomBar(),
    ]));
  }
}
