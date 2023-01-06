import 'package:bloc/bloc.dart';
import 'package:inova/bussiness_logic/cubit/vaga/vaga_state.dart';
import 'package:inova/data/interfaces/repository/vaga_loader.dart';

class VagaCubit extends Cubit<VagaState> {
  final VagaRepository _repository;

  VagaCubit(this._repository) : super(VagaInitialState());

  Future<void> fetchList() async {
    emit(VagaLoadingState());

    try {
      final response = await _repository.getVagas();
      emit(VagaLoadedListState(response!));
    } catch (e) {
      emit(VagaErrorState(e.toString()));
    }
  }
}
