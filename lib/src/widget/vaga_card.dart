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
  String descricaoEncurtada(String descricao) {
    return descricao.length > 150 ? descricao.substring(0, 147) + '...' : descricao;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        height: 200,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 5, blurRadius: 7, offset: Offset(0, 3)),
          ],
          color: Colors.white,
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(padding: EdgeInsets.only(top: 10.0, left: 5.0, bottom: 10.0), width: 260, child: Text(widget.titulo, style: textStyle)),
              Container(
                  padding: EdgeInsets.only(left: 5.0, bottom: 5.0),
                  child: Text('Professores: ' + widget.professores,
                      style: TextStyle(
                        fontSize: 14,
                      ))),
              Container(padding: EdgeInsets.only(left: 5.0, bottom: 5.0), width: 260, child: Text(descricaoEncurtada(widget.descricao))),
            ],
          ),
          Container(padding: EdgeInsets.only(top: 10.0, right: 5.0), width: 60, alignment: Alignment.topRight, child: Text(widget.horas, style: textStyle))
        ]));
  }
}

const TextStyle textStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
