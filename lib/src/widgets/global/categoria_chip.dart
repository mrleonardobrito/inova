import 'package:flutter/material.dart';
import 'package:inova/src/core/domain/categoria.dart';

class VagaChip extends StatelessWidget {
  final Categoria categoria;

  const VagaChip({Key? key, required this.categoria}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, top: 5, bottom: 5),
      child: Chip(
        elevation: 5.0,
        backgroundColor: Color(0xFF9AAEFF),
        label: Text(
          categoria.name,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
