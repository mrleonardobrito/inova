import 'package:bloc/bloc.dart';
import 'package:inova/core/models/vaga.dart';
import 'package:inova/core/service/database/vaga_db_services.dart';
import 'package:inova/data/database/vaga_database_repository.dart';

part 'vaga_state.dart';

class VagaCubit extends Cubit<VagaState> {
  VagaCubit() : super(VagaInitialState());

  Future<void> fetchVagas() async {
    emit(VagaLoadingState());

    VagaService service = VagaService(repository: VagaDatabaseRepository());
    final vagas = await service.getVagas();
    vagas.fold(
      (left) => emit(VagaErrorState(left.message)),
      (right) {
        if (right.isEmpty) {
          emit(VagaEmptyState());
        } else {
          emit(VagaLoadedListState(right));
        }
      },
    );
  }
}
