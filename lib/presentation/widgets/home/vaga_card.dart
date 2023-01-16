import 'package:flutter/material.dart';
import 'package:inova/core/models/categoria.dart';
import 'package:inova/core/models/vaga.dart';

import '../../pages/vaga/info_vaga_page.dart';
import 'package:inova/presentation/widgets/global/categoria_chip.dart';

class VagaCard extends StatelessWidget {
  final Vaga vaga;

  const VagaCard({Key? key, required this.vaga}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoVaga(vaga: vaga),
          ),
        )
      },
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.all(5.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(vaga.nome, style: titleStyle),
                  Text("${vaga.quantHoras.toString()}h", style: titleStyle),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  'Professores: + ${vaga.coorientadores!.map((e) => e.nome).toList().join(',')}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF808080),
                  ),
                ),
              ),
              Text(
                vaga.proposta,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF808080),
                ),
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  itemCount:
                      vaga.categorias.length >= 4 ? 4 : vaga.categorias.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return VagaChip(categoria: vaga.categorias[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const TextStyle titleStyle =
    TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);
