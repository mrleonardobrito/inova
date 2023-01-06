import 'package:either_dart/src/either.dart';
import 'package:inova/data/interfaces/repository/vaga_loader.dart';
import 'package:inova/data/models/vaga.dart';
import 'package:inova/data/models/conhecimentos.dart';
import 'package:inova/data/models/categoria.dart';

class VagaRepository implements VagaLoader {
  @override
  Either<dynamic, List<Vaga>> getVagas() {}
}
