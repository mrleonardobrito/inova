import 'package:inova/data/models/vaga.dart';

abstract class VagaState {}

class VagaInitialState extends VagaState {}

class VagaLoadingState extends VagaState {}

class VagaLoadedListState extends VagaState {
  List<Vaga> vagas;

  VagaLoadedListState(this.vagas);
}

class VagaErrorState extends VagaState {
  String message;

  VagaErrorState(this.message);
}
