import 'package:inova/core/errors/exceptions/database_exceptions.dart';
import 'package:inova/core/models/categoria.dart';
import 'package:inova/core/models/conhecimentos.dart';
import 'package:inova/core/models/vaga.dart';
import 'package:inova/data/database/db_helpers/db_helper.dart';
import 'package:inova/data/database/daos/inscreve_em_dao.dart';
import 'package:sqflite/sqflite.dart';

class VagaDao {
  Future<Vaga> getVaga(int vagaId) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = "SELECT * FROM vaga v WHERE v.id = ?";
    var result = await db.rawQuery(sql, [vagaId]);
    var json = result[0];

    InscreveEmDao ie = InscreveEmDao();
    var dbJson = Map.of(json);
    dbJson['categorias'] = await getCategorias(vagaId);
    dbJson['conhecimentos_necessarios'] =
        await getConhecimentosNecessarios(vagaId);
    dbJson['conhecimentos_ao_final'] = await getConhecimentosAoFinal(vagaId);
    dbJson['coorientadores'] = await ie.getCoorientadores(vagaId);
    dbJson['orientador'] = await ie.getOrientador(vagaId);
    Vaga vaga = Vaga.fromJson(dbJson);

    return vaga;
  }

  Future<List<Categoria>> getCategorias(int vagaId) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = '''
      SELECT c.id, c.name FROM vaga v 
      INNER JOIN categorias_por_vaga cpv ON cpv.id_vaga = v.id
      INNER JOIN categoria c ON cpv.id_categoria = c.id
      WHERE v.id = ?;
    ''';
    var result = await db.rawQuery(sql, [vagaId]);

    List<Categoria> categorias = <Categoria>[];
    for (var json in result) {
      Categoria categoria = Categoria.fromJson(json);
      categorias.add(categoria);
    }

    return categorias;
  }

  Future<List<ConhecimentoNecessario>> getConhecimentosNecessarios(
      int vagaId) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = '''
      SELECT cn.id, cn.conhecimento FROM vaga v
      INNER JOIN conhecimentos_necessarios cn ON cn.id_vaga = v.id
      WHERE v.id = ?;
    ''';
    var result = await db.rawQuery(sql, [vagaId]);

    List<ConhecimentoNecessario> conhecimentosNecessarios =
        <ConhecimentoNecessario>[];
    for (var json in result) {
      ConhecimentoNecessario conhecimentoNecessario =
          ConhecimentoNecessario.fromJson(json);
      conhecimentosNecessarios.add(conhecimentoNecessario);
    }

    return conhecimentosNecessarios;
  }

  Future<List<ConhecimentoAoFinal>> getConhecimentosAoFinal(int vagaId) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = '''
      SELECT caf.id, caf.conhecimento FROM vaga v
      INNER JOIN conhecimentos_ao_final caf ON caf.id_vaga = v.id
      WHERE v.id = ?;
    ''';
    var result = await db.rawQuery(sql, [vagaId]);

    List<ConhecimentoAoFinal> conhecimentosAoFinal = <ConhecimentoAoFinal>[];
    for (var json in result) {
      ConhecimentoAoFinal conhecimentoAoFinal =
          ConhecimentoAoFinal.fromJson(json);
      conhecimentosAoFinal.add(conhecimentoAoFinal);
    }

    return conhecimentosAoFinal;
  }

  Future<List<Vaga>> getVagas() async {
    try {
      DBHelper dbHelper = DBHelper();
      Database db = await dbHelper.initDB();

      String sql = "SELECT * FROM vaga";

      var result = await db.rawQuery(sql);

      List<Vaga> vagas = <Vaga>[];
      for (var json in result) {
        var dbJson = Map.of(json);
        int idVaga = dbJson['id'] as int;

        Vaga vaga = await getVaga(idVaga);
        vagas.add(vaga);
      }

      return vagas;
    } catch (e) {
      throw FetchDataException(error: e);
    }
  }
}
