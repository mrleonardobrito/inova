import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/home_page.dart';
import 'package:whatinif/src/widget/bottom_bar_navigator.dart';
import 'package:whatinif/src/pages/user/edit_user_page.dart';

class Repertorio extends StatefulWidget {
  const Repertorio({Key? key}) : super(key: key);

  @override
  _RepertorioState createState() => _RepertorioState();
}

class _RepertorioState extends State<Repertorio> {
  int showAbas = 1;

  @override
  Widget build(BuildContext context) {
    double stars = 1;

    final halfStarIcon = const Icon(Icons.star_half, color: Color(0xFF4065FC));
    final starIcon = const Icon(Icons.star, color: Color(0xFF4065FC));
    final emptyStar = const Icon(Icons.star_border, color: Color(0xFF4065FC));

    verificaEstrela() {
      if (stars < 1 && stars > 0) {
        print('meia estrela');
        return Row(children: [halfStarIcon, emptyStar, emptyStar, emptyStar, emptyStar]);
      } else if (stars == 1) {
        print('uma estrela');
        return Row(children: [starIcon, emptyStar, emptyStar, emptyStar, emptyStar]);
      } else if (stars < 2 && stars > 1) {
        print('uma estrela e meia');
        return Row(children: [starIcon, halfStarIcon, emptyStar, emptyStar, emptyStar]);
      } else if (stars == 2) {
        print('duas estrelas');
        return Row(children: [starIcon, starIcon, emptyStar, emptyStar, emptyStar]);
      } else if (stars < 3 && stars > 2) {
        print('duas estrelas e meia');
        return Row(children: [starIcon, starIcon, halfStarIcon, emptyStar, emptyStar]);
      } else if (stars == 3) {
        print('três estrelas');
        return Row(children: [
          starIcon,
          starIcon,
          starIcon,
          emptyStar,
          emptyStar
        ]);
      } else if (stars < 4 && stars > 3) {
        print('três estrela e meia');
        return Row(children: [starIcon, starIcon, starIcon, halfStarIcon, emptyStar]);
      } else if (stars == 4) {
        print('quatro estrelas');
        return Row(children: [
          starIcon,
          starIcon,
          starIcon,
          starIcon,
          emptyStar
        ]);
      } else if (stars < 5 && stars > 4) {
        print('quatro estrelas e meia');
        return Row(
            children: [starIcon, starIcon, starIcon, starIcon, halfStarIcon]);
      } else if (stars == 5) {
        print('cinco estrelas');
        return Row(children: [starIcon, starIcon, starIcon, starIcon, starIcon]);
      } else if (stars > 5) {
        print('cinco estrelas');
        return Row(children: [starIcon, starIcon, starIcon, starIcon, starIcon]);
      } else if (stars < 0) {
        print('número de estrelas inválido');
      }
    }
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Text('Eita'),
      ),
    );
  }
}
