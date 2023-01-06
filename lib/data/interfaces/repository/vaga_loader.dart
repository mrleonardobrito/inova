import 'package:either_dart/either.dart';
import 'package:inova/data/models/vaga.dart';

abstract class VagaLoader {
  Either<FetchDataError, List<Vaga>> getVagas();
}
