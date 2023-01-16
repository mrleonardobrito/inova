import 'package:flutter/material.dart';

class LoadingVagasBody extends StatelessWidget {
  const LoadingVagasBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
