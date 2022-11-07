import 'package:flutter/material.dart';
import 'package:inova/src/utils/variables/list_variables.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:inova/blocs/user/bloc/user_bloc.dart';
import 'package:inova/blocs/user/bloc/user_event.dart';
import 'package:inova/blocs/user/bloc/user_state.dart';
import 'package:inova/src/widgets/test.dart';


class SSS extends StatefulWidget {
  const SSS({Key? key}) : super(key: key);

  @override
  State<SSS> createState() => _SSSState();
}

class _SSSState extends State<SSS> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: BlocProvider<UserBloc>(
        create: (BuildContext context) => UserBloc(UserLoadingState())..add(UserFetchList()),
        child: TestPage(),
      )
    );
  }
}
