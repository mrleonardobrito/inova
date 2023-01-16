import 'package:flutter/material.dart';
import 'package:inova/core/models/vaga.dart';
import 'package:inova/presentation/widgets/home/vaga_card.dart';

class ListOfVagasBody extends StatelessWidget {
  final List<Vaga> vagas;

  const ListOfVagasBody({required this.vagas, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: vagas.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => VagaCard(vaga: vagas[index]),
    );
  }
}
