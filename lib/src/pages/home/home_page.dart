import 'package:flutter/material.dart';
import 'package:inova/src/data/dao/vaga_dao.dart';
import 'package:inova/src/utils/request_manager.dart';
import 'package:inova/src/widgets/home/vaga_card.dart';
import 'package:inova/src/core/domain/vaga.dart';

// List<Vaga> allVagas = [
//   const Vaga(
//       titulo: "Monitoria de microcontroladores",
//       descricao:
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//       horas: "400h",
//       professores: ["Renata Silva"],
//       categorias: [
//         'Monitoria',
//         'Eletroeletrônica',
//         'Microprocessadores',
//         'Circuitos integrados'
//       ],
//       vagasDisponiveis: '4',
//       bolsaDisponivel: "RS400,00 - RS850,00"),
//   const Vaga(
//       titulo: "DadosJusBr",
//       descricao:
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//       horas: "400h",
//       professores: ["Renata Silva"],
//       categorias: [
//         'Monitoria',
//         'Eletroeletrônica',
//         'Microprocessadores',
//         'Circuitos integrados'
//       ],
//       vagasDisponiveis: '4',
//       bolsaDisponivel: "RS400,00 - RS850,00"),
//   const Vaga(
//       titulo: "Lead",
//       descricao:
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//       horas: "400h",
//       professores: ["Renata Silva"],
//       categorias: [
//         'Monitoria',
//         'Eletroeletrônica',
//         'Microprocessadores',
//         'Circuitos integrados'
//       ],
//       vagasDisponiveis: '4',
//       bolsaDisponivel: "RS400,00 - RS850,00"),
//   const Vaga(
//       titulo: "DIT",
//       descricao:
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//       horas: "400h",
//       professores: ["Renata Silva"],
//       categorias: [
//         'Monitoria',
//         'Eletroeletrônica',
//         'Microprocessadores',
//         'Circuitos integrados'
//       ],
//       vagasDisponiveis: '4',
//       bolsaDisponivel: "RS400,00 - RS850,00"),
//   const Vaga(
//       titulo: "Monitoria de microcontroladores",
//       descricao:
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//       horas: "400h",
//       professores: ["Renata Silva"],
//       categorias: [
//         'Monitoria',
//         'Eletroeletrônica',
//         'Microprocessadores',
//         'Circuitos integrados'
//       ],
//       vagasDisponiveis: '4',
//       bolsaDisponivel: "RS400,00 - RS850,00"),
// ];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String query = '';
  late Future<List<Vaga>> vagas;
  RequestManager stateManager = RequestManager();

  @override
  void initState() {
    super.initState();

    stateManager.getVagas();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    // void searchVaga(String query) {
    //   final vagas = this.vagas.where((vaga) {
    //     final titleLower = vaga.nome.toLowerCase();
    //     final searchLower = query.toLowerCase();

    //     return titleLower.contains(searchLower);
    //   }).toList();

    //   setState(() {
    //     this.query = query;
    //     this.vagas = vagas;
    //   });
    // }
    Future<List<Vaga>> vagas = VagaDao().getVagas();
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
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, size: 20),
                    border: InputBorder.none,
                  ),
                  // onChanged: (query) => searchVaga(query),
                ),
              )),
            ),
          ),
          expandedHeight: height * 0.2,
          backgroundColor: const Color(0xFF4065FC),
        ),
        SliverToBoxAdapter(
          child: FutureBuilder<List<Vaga>>(
              future: vagas,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Vaga> vagas = snapshot.data ?? [];
                  return ListView.builder(
                    itemCount: vagas.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        VagaCard(vaga: vagas[index]),
                  );
                }
                return const Center(child: CircularProgressIndicator());
              }),
        )
      ],
    );
  }
}
