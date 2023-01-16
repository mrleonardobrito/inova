import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/presentation/bloc/cubit/vaga/vaga_cubit.dart';
import 'package:inova/presentation/widgets/home/states/empty_vaga.dart';
import 'package:inova/presentation/widgets/home/states/error_vaga.dart';
import 'package:inova/presentation/widgets/home/states/loading_vagas_body.dart';
import 'package:inova/presentation/widgets/home/states/vaga_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final cubit = context.read<VagaCubit>();
      cubit.fetchVagas();
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return CustomScrollView(
      scrollBehavior: const ScrollBehavior(),
      slivers: [
        SliverAppBar(
          expandedHeight: height * 0.2,
          backgroundColor: const Color(0xFF4065FC),
          pinned: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                color: Color(0xFFEFEFEF),
              ),
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                    color: Color(0xFFEFEFEF),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, size: 20),
                      border: InputBorder.none,
                    ),
                    // onChanged: (query) => searchVaga(query),
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: BlocBuilder<VagaCubit, VagaState>(
          builder: (context, state) => Container(
            color: const Color(0xFFEFEFEF),
            width: double.infinity,
            height: height * 0.7,
            child: _getScreenFromState(state),
          ),
        ))
      ],
    );
  }

  Widget _getScreenFromState(VagaState state) {
    if (state is VagaLoadedListState) {
      return ListOfVagasBody(vagas: state.vagas);
    } else if (state is VagaEmptyState) {
      return const EmptyVagaBody();
    } else if (state is VagaErrorState) {
      return ErrorVagaBody(errorMessage: state.message);
    } else {
      return const LoadingVagasBody();
    }
  }
}
