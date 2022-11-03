import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class UserState extends Equatable{
  @override
  List<Object> get props => [];
}

class UserLoadingState extends UserState {}

class UserErrorState extends UserState {
  final String message;

  UserErrorState({required this.message});
}

class UserLoadedState extends UserState {
  final List<String> list;
  UserLoadedState({required this.list});
}

class UserEmptyState extends UserState {}
