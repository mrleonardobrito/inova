import 'package:flutter/material.dart';

class VagaChip extends StatelessWidget {
  final String label;

  const VagaChip({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, top: 5, bottom: 5),
      child: Chip(
        elevation: 5.0,
        backgroundColor: Color(0xFF9AAEFF),
        label: Text(
          label,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
