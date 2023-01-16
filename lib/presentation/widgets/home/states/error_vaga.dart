import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/presentation/bloc/cubit/vaga/vaga_cubit.dart';
import 'package:inova/presentation/utils/icons/icon_size.dart';

class ErrorVagaBody extends StatelessWidget {
  final String errorMessage;

  const ErrorVagaBody({required this.errorMessage, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.report_gmailerrorred_outlined,
          color: const Color(0xFF03396C),
          size: IconSize.BIGGER_ICON,
          semanticLabel: "Oops! Um erro aconteceu! $errorMessage",
        ),
        Container(
          padding: const EdgeInsets.all(6.0),
          child: const Text(
            "Oops! um erro aconteceu!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Color(0xFF03396C),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          width: width * 0.7,
          child: Text(
            errorMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Color(0xFF666666),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => BlocProvider.of<VagaCubit>(context).fetchVagas(),
          child: Icon(
            Icons.replay_outlined,
            color: const Color(0xFF03396C),
            size: IconSize.BIG_ICON,
            semanticLabel: "Recarregar a página",
          ),
        ),
      ],
    );
  }
}
