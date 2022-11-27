import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:inova/repository/user/user_repository.dart';

import 'package:inova/models/user/user_list.dart';

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


