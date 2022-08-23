import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:whatinif/src/utils/request_manager.dart';
import '../widget/vaga_card.dart';
import 'package:whatinif/src/utils/vaga.dart';

List<Vaga> allVagas = [
  const Vaga(
      titulo: "Monitoria de microcontroladores",
      descricao:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      horas: "400h",
      professores: ["Renata Silva"],
      categorias: [
        'Monitoria',
        'Eletroeletrônica',
        'Microprocessadores',
        'Circuitos integrados'
      ],
      vagasDisponiveis: '4',
      bolsaDisponivel: "RS400,00 - RS850,00"),
  const Vaga(
      titulo: "DadosJusBr",
      descricao:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      horas: "400h",
      professores: ["Renata Silva"],
      categorias: [
        'Monitoria',
        'Eletroeletrônica',
        'Microprocessadores',
        'Circuitos integrados'
      ],
      vagasDisponiveis: '4',
      bolsaDisponivel: "RS400,00 - RS850,00"),
  const Vaga(
      titulo: "Lead",
      descricao:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      horas: "400h",
      professores: ["Renata Silva"],
      categorias: [
        'Monitoria',
        'Eletroeletrônica',
        'Microprocessadores',
        'Circuitos integrados'
      ],
      vagasDisponiveis: '4',
      bolsaDisponivel: "RS400,00 - RS850,00"),
  const Vaga(
      titulo: "DIT",
      descricao:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      horas: "400h",
      professores: ["Renata Silva"],
      categorias: [
        'Monitoria',
        'Eletroeletrônica',
        'Microprocessadores',
        'Circuitos integrados'
      ],
      vagasDisponiveis: '4',
      bolsaDisponivel: "RS400,00 - RS850,00"),
  const Vaga(
      titulo: "Monitoria de microcontroladores",
      descricao:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      horas: "400h",
      professores: ["Renata Silva"],
      categorias: [
        'Monitoria',
        'Eletroeletrônica',
        'Microprocessadores',
        'Circuitos integrados'
      ],
      vagasDisponiveis: '4',
      bolsaDisponivel: "RS400,00 - RS850,00"),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String query = '';
  late List<Vaga> vagas;
  RequestManager stateManager = RequestManager();

  @override
  void initState() {
    super.initState();
    vagas = allVagas;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    void searchVaga(String query) {
      final vagas = allVagas.where((vaga) {
        final titleLower = vaga.titulo.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower);
      }).toList();

      setState(() {
        this.query = query;
        this.vagas = vagas;
      });
    }

    return CustomScrollView(
      scrollBehavior: const ScrollBehavior(),
      slivers: [
        SliverAppBar(
          pinned: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
                color: Color(0xFFEFEFEF),
              ),
              child: Center(
                  child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                  color: Color(0xFFEFEFEF),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search, size: 20),
                    border: InputBorder.none,
                  ),
                  onChanged: (query) => searchVaga(query),
                ),
              )),
            ),
          ),
          expandedHeight: height * 0.2,
          backgroundColor: const Color(0xFF4065FC),
        ),
        SliverToBoxAdapter(
          child: ValueListenableBuilder<RequestState>(
            valueListenable: stateManager.resultNotifier,
            builder: (context, requestState, child) {
              if (requestState is RequestLoadInProgress) {
                return Center(child: CircularProgressIndicator());
              } else if (requestState is RequestLoadSuccess) {
                return Expanded(
                    child: SingleChildScrollView(
                        child: Text(requestState.vagalista.toString())));
              } 

              return CircularProgressIndicator();
            },
          ),
        ),
      ],
    );
  }
}

// SliverList(
//           delegate: SliverChildBuilderDelegate(
//             (context, index) => VagaCard(vaga: vagas[index]),
//             childCount: vagas.length,
//           )
//         )


