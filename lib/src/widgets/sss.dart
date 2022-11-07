import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:inova/blocs/user/cubit/user_cubit.dart';
import 'package:inova/src/widgets/test.dart';


class SSS extends StatefulWidget {
  const SSS({Key? key}) : super(key: key);

  @override
  State<SSS> createState() => _SSSState();
}

class _SSSState extends State<SSS> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(<String>[]),
      child: TestPage(),
      );
  }
}
