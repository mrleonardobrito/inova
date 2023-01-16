import 'package:flutter/material.dart';
import 'package:inova/presentation/utils/icons/icon_size.dart';

class EmptyVagaBody extends StatelessWidget {
  const EmptyVagaBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.error_outline,
          color: const Color(0xFF03396C),
          size: IconSize.BIGGER_ICON,
          semanticLabel: "Desculpe, a vaga não foi encontrada",
        ),
        Container(
          padding: const EdgeInsets.all(6.0),
          child: const Text(
            "Desculpe",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              color: Color(0xFF03396C),
            ),
          ),
        ),
        SizedBox(
          width: width * 0.7,
          child: const Text(
            "Nenhuma Vaga foi encontrada!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w400,
              color: Color(0xFF666666),
            ),
          ),
        ),
      ],
    );
  }
}
