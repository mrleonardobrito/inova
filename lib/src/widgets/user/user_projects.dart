import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/src/utils/variables/list_variables.dart';

class Projetos extends StatefulWidget {
  const Projetos({Key? key}) : super(key: key);

  @override
  _ProjetosState createState() => _ProjetosState();
}

class _ProjetosState extends State<Projetos> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: ListView.builder(
            itemCount: projectData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  height: 107,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xFFE8ECFF),
                  ),
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            Text(
                              '${projectData[index]["nome"]}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 18,
                                  color: Color(0xFFBFBFBF),
                                ),
                                Text(
                                  '${projectData[index]["dataTermino"]}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: Color(0xFFBFBFBF),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          '${projectData[index]["orientador"]}',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF878787),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '${projectData[index]["descricao"]}',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),),
              );
            },),
        )
    );
  }
}
