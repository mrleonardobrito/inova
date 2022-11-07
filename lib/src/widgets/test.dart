import 'package:flutter/material.dart';

import 'package:inova/src/utils/variables/variables.dart';
import 'package:inova/src/utils/variables/list_variables.dart';
import 'package:inova/src/utils/functions/functions.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/blocs/user/bloc/user_bloc.dart';
import 'package:inova/blocs/user/bloc/user_event.dart';
import 'package:inova/blocs/user/bloc/user_state.dart';
import 'package:inova/src/widgets/sss.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state){
          if(state is UserLoadedState){
            return ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text('Item ${index + 1}'),
                );
              },
            );
          }
          if(state is UserErrorState){
            return Center(
            child: Text(state.message));
          }
          return Text('Carregano');     
        },
      ),
    );
  }
}
