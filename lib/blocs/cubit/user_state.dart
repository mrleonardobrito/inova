part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitialState extends UserState {}

class UserLoadingState extends UserState {}

class UserLoadedListState extends UserState {
  List<ProjectItem> homes;

  UserLoadedListState(this.homes);
}

class UserErrorState extends UserState {
  String message;

  UserErrorState(this.message);
}


