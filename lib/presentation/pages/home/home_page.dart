import 'package:flutter/material.dart';
import 'package:inova/data/repository/database/vaga_dao.dart';
import 'package:inova/presentation/utils/request_manager.dart';
import 'package:inova/presentation/widgets/home/vaga_card.dart';
import 'package:inova/data/models/vaga.dart';

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

    Future<List<Vaga>> vagas = VagaDao().getVagas();
    return CustomScrollView(
      scrollBehavior: const ScrollBehavior(),
      slivers: [
        SliverAppBar(
          expandedHeight: height * 0.2,
          backgroundColor: const Color(0xFF4065FC),
          pinned: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
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
                ),
              ),
            ),
          ),
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
                  itemBuilder: (context, index) => VagaCard(vaga: vagas[index]),
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ],
    );
  }
}
