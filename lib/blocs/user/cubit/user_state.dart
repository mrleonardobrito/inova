part of 'user_cubit.dart';

class UserState {}

class InitUserState extends UserState {}

class UserLoadingState extends UserState {}

class UserErrorState extends UserState {
  final String message;

  UserErrorState(this.message);
}

class UserLoadedState extends UserState {
  final List<String> list;
  UserLoadedState(this.list);
}

