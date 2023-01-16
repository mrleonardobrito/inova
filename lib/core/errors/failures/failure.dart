abstract class Failure {
  final String message;

  Failure({required this.message});
}

class InitDatabaseFailure extends Failure {
  InitDatabaseFailure({required super.message});
}

class FetchDataFailure extends Failure {
  FetchDataFailure({required super.message});
}
