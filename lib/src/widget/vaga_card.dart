import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VagaCard extends StatefulWidget {
  final String titulo;
  final String descricao;
  final String horas;
  final String professores;

  const VagaCard({
    Key? key,
    required this.titulo,
    required this.descricao,
    required this.horas,
    required this.professores,
  }) : super(key: key);

  @override
  State<VagaCard> createState() => _VagaCardState();
}

class _VagaCardState extends State<VagaCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3)),
          ],
          color: Colors.white,
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: MediaQuery.of(context).size.width - 20,
              padding: EdgeInsets.all(10.0),
              child: Wrap(
                children: [
                  Container(
                      width: (MediaQuery.of(context).size.width * 0.8) - 15,
                      child: Text(widget.titulo, style: textStyle)),
                  Container(
                      width: (MediaQuery.of(context).size.width * 0.2) - 30,
                      child: Text(widget.horas),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text('Professores: ' + widget.professores,
                          style: TextStyle(fontSize: 14))),
                  Container(
                      color: Colors.red,
                      height: 200 * 0.6,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(widget.descricao, overflow: TextOverflow.clip,)),
              ]
            ))
        ]));
  }
}

const TextStyle textStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
