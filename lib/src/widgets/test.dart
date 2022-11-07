import 'package:flutter/material.dart';

import 'package:inova/blocs/user/cubit/user_cubit.dart';

import 'package:inova/src/utils/variables/variables.dart';
import 'package:inova/src/utils/variables/list_variables.dart';
import 'package:inova/src/utils/functions/functions.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/src/widgets/sss.dart';



class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  @override
  void InitUserState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final cubit = context.read<UserCubit>();


      print('alo');
      cubit.fetchProjectsList();

      return print(cubit.list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state){
          if(state is UserLoadedState){
            return Text('3');
          }
          if(state is UserErrorState){
            return Center(
            child: Text(state.message));
          }
          return Center(
              child: CircularProgressIndicator(),     
          );     
        },
      ),
    );
  }
}
