import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova/blocs/user/bloc/user_event.dart';
import 'package:inova/blocs/user/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState>{
  UserBloc(UserState initialState) : super(UserLoadingState());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    throw UnimplementedError();
  }
}