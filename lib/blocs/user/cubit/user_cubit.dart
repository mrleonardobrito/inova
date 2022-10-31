import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserState(i: 13));
  
  void increment() => emit(UserState(i: state.i + 3));

  void decrement() => emit(UserState(i: state.i - 3));

}
