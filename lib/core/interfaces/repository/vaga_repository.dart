import 'package:either_dart/either.dart';
import 'package:inova/core/errors/failures/failure.dart';
import 'package:inova/core/models/vaga.dart';

abstract class VagaRepository {
  Future<Either<Failure, List<Vaga>>> getVagas();
}
