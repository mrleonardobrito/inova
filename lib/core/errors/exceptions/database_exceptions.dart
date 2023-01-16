class InitDataBaseException implements Exception {
  final dynamic error;

  InitDataBaseException({required this.error});
}

class CreateDataBaseException implements Exception {
  final dynamic error;

  CreateDataBaseException({required this.error});
}

class FetchDataException implements Exception {
  final dynamic error;

  FetchDataException({required this.error});
}
