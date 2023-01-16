import 'package:either_dart/either.dart';
import 'package:inova/core/errors/failures/failure.dart';
import 'package:inova/core/interfaces/primary/vaga_manager.dart';
import 'package:inova/core/interfaces/repository/vaga_repository.dart';
import 'package:inova/core/models/vaga.dart';

class VagaService implements VagaManager {
  VagaRepository repository;

  VagaService({required this.repository});

  @override
  Future<Either<Failure, List<Vaga>>> getVagas() async {
    return await repository.getVagas();
  }
}
