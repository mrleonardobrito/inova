import 'package:equatable/equatable.dart';

class UserEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class UserFetchList extends UserEvent {}

class UserFetchListWithError extends UserEvent {}

class UserFetchListWithEmptyList extends UserEvent {}