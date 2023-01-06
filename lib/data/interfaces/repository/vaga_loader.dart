import 'package:inova/data/models/categoria.dart';
import 'package:inova/data/models/conhecimentos.dart';
import 'package:inova/data/models/vaga.dart';

abstract class VagaRepository {
  Future<List<Vaga>?> getVagas();
  Future<Vaga?> getVaga(int vagaId);
  Future<List<Categoria>?> getCategorias(int vagaId);
  Future<List<ConhecimentoNecessario>?> getConhecimentosNecessarios(int vagaId);
  Future<List<ConhecimentoAoFinal>?> getConhecimentosAoFinal(int vagaId);
}
