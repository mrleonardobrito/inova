import 'package:bloc/bloc.dart';
import 'package:inova/bussiness_logic/cubit/user/user_list.dart';
import 'package:inova/data/repository/user_repository.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UserListRepository _repository;

  UserCubit(this._repository) : super(UserInitialState());

  Future<void> fetchList() async {
    emit(UserLoadingState());

    try {
      final response = await _repository.getAll();
      emit(UserLoadedListState(response));
    } catch (e) {
      emit(UserErrorState(e.toString()));
    }
  }
}
