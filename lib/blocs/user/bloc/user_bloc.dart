import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/blocs/user/bloc/user_event.dart';
import 'package:inova/blocs/user/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState>{
  UserBloc(UserState initialState) : super(UserLoadingState()){
    on<UserFetchList>((event, emit) {

    });
  }

  Stream<UserState?> mapEventToState(UserEvent event) async* {
    var state;
    switch(event.runtimeType){
      case UserFetchList:
        state = await _fetchList();
        break;
      default:
    }
    yield *state;
  }

  Future<UserState> _fetchList() async {
    var list = await Future.delayed(Duration(
      seconds: 3,
    ), () => <String>[
      'Item 1',
      'Item 3',
      'Item 2',
      'Item 5',
      'Item 4',
    ],
    );

    return UserLoadedState(list: list);
  }
}