// ignore_for_file: implementation_imports

import 'package:inova/core/errors/exceptions/database_exceptions.dart';
import 'package:inova/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:inova/core/interfaces/repository/vaga_repository.dart';
import 'package:inova/core/models/vaga.dart';
import 'package:inova/data/database/daos/vaga_dao.dart';

class VagaDatabaseRepository implements VagaRepository {
  @override
  Future<Either<Failure, List<Vaga>>> getVagas() async {
    try {
      List<Vaga> vagas = await VagaDao().getVagas();
      return Right(vagas);
    } on InitDataBaseException {
      return Left(
        InitDatabaseFailure(
            message:
                "Houve um erro ao iniciar o banco de dados, tente novamente"),
      );
    } on FetchDataException {
      return Left(
        FetchDataFailure(
            message: "O sistema não achou as vagas, tente novamente"),
      );
    }
  }
}
