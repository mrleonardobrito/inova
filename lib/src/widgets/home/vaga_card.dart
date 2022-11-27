import 'package:flutter/material.dart';
import 'package:inova/src/utils/vaga.dart';

import '../../pages/vaga/info_vaga_page.dart';
import 'package:inova/src/widgets/global/categoria_chip.dart';

class VagaCard extends StatefulWidget {
  final Vaga vaga;

  const VagaCard({Key? key, required this.vaga}) : super(key: key);

  @override
  State<VagaCard> createState() => _VagaCardState();
}

class _VagaCardState extends State<VagaCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoVaga(vaga: widget.vaga),
          ),
        )
      },
      child: Container(
        height: 170,
        width: 160,
        margin: const EdgeInsets.only(bottom: 15.0, left: 5.0, right: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 20,
              padding: const EdgeInsets.all(10.0),
              child: Wrap(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                      child: Text(widget.vaga.titulo, style: titleStyle)),
                  Container(
                    width: 37,
                    padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                    child: Text(widget.vaga.horas, style: titleStyle),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      'Professores: ' + widget.vaga.professores.join(','),
                      style: const TextStyle(
                        fontSize: 11,
                        color: Color(0xFF808080),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      widget.vaga.descricao,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF808080),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        if (index > 2) {
                          return const VagaChip(label: "+");
                        } else {
                          return VagaChip(label: widget.vaga.categorias[index]);
                        }
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

const TextStyle titleStyle =
    TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);
