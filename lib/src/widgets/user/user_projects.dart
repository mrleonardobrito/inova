import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/src/pages/project/project.dart';
import 'package:inova/src/utils/variables/list_variables.dart';
import 'package:inova/src/utils/variables/variables.dart';

import '../../../blocs/cubit/user_cubit.dart';

class Projetos extends StatefulWidget {
  const Projetos({Key? key}) : super(key: key);

  @override
  _ProjetosState createState() => _ProjetosState();
}

class _ProjetosState extends State<Projetos> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        final cubit = context.read<UserCubit>();
        cubit.fetchList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Padding(
          padding: EdgeInsets.only(left: 5, right: 5, top: 10),
          child: BlocBuilder<UserCubit, UserState>(
            builder: (context, state) {
              if (state is UserInitialState || state is UserLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is UserLoadedListState) {
                final userList = state.homes;
                return ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    final home = userList[index];
                    return GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                        child: Container(
                          height: 110, // transcrever para adaptatividade
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xFFE8ECFF),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      home.nome,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          fontFamily: appUniqueFont),
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Center(
                                          child: Icon(
                                            Icons.calendar_month,
                                            size: 18,
                                            color: Color(0xFFBFBFBF),
                                          ),
                                        ),
                                        Center(
                                          child: Text(
                                            home.dataInicio,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                              color: Color(0xFFBFBFBF),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    home.nomeCoordenador,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF878787),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: appUniqueFont),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    home.descricao,
                                    maxLines: 3,
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: appUniqueFont),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
              return Center(
                child: Text(
                  state.toString(),
                ),
              );
            },
          ),
        ));
  }
}
