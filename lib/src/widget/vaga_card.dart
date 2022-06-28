import 'package:flutter/material.dart';
import 'package:whatinif/src/pages/vaga_page.dart';
import 'package:whatinif/src/utils/vaga.dart';

class VagaCard extends StatefulWidget {
  final Vaga vaga;

  const VagaCard({
    Key? key,
    required this.vaga
  }) : super(key: key);

  @override
  State<VagaCard> createState() => _VagaCardState();
}

class _VagaCardState extends State<VagaCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) => VagaPage(vaga: widget.vaga)))
      },
      child: Container(
        height: 170,
        width: 160,
        margin: EdgeInsets.only(bottom: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
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
                      width: MediaQuery.of(context).size.width * 0.75,
                      padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                      child: Text(widget.vaga.titulo, style: titleStyle)),
                  Container(
                      width: 37,
                      padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                      child: Text(widget.vaga.horas, style: titleStyle),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Text('Professores: ' + widget.vaga.professores.join(','),
                          style: TextStyle(fontSize: 11, color: Color(0xFF808080)))),
                  Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(widget.vaga.descricao, overflow: TextOverflow.ellipsis, maxLines: 3, style: TextStyle(fontSize: 14, color: Color(0xFF808080)))),
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,

                      itemBuilder: (context, index) {
                        if(index > 2){
                          return const Categoria(titulo: Icon(Icons.add, size: 15.0));
                        }else{
                          return Categoria(titulo: widget.vaga.categorias[index]);
                        }
                      },
                    ),
                  )
              ]
            ))
        ])));
  }
}

class Categoria extends StatelessWidget{
  final titulo;

  const Categoria({required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      margin: EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(35.0)),
        color: Color(0xFF9AAEFF),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3)),
          ]
      ),
      child: Center(
        child: titulo.runtimeType == String ? Text(titulo, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF333333))): titulo
      ),
    );
  }
}

const TextStyle titleStyle = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.bold
);
