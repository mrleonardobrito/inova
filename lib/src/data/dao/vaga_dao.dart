//import 'dart:convert';

import 'package:inova/src/data/db_helpers/db_helper.dart';
import 'package:inova/src/data/dao/inscreve_em_dao.dart';
import 'package:inova/src/core/domain/categoria.dart';
import 'package:inova/src/core/domain/conhecimentos.dart';
import 'package:inova/src/core/domain/vaga.dart';
import 'package:sqflite/sqflite.dart';

class VagaDao {
  Future<List<Vaga>> getVagas() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = "SELECT * FROM vaga";

    var result = await db.rawQuery(sql);

    List<Vaga> vagas = <Vaga>[];
    for (var json in result) {
      var dbJson = Map.of(json);
      int idVaga = dbJson['id'] as int;
      InscreveEmDao ie = InscreveEmDao();

      var categorias = await getCategorias(idVaga);
      var conhecimentosNecessarios = await getConhecimentosNecessarios(idVaga);
      var conhecimentosAoFinal = await getConhecimentosAoFinal(idVaga);
      var coorientadores = await ie.getCoorientadores(idVaga);
      var orientador = await ie.getOrientador(idVaga);

      dbJson['categorias'] = categorias;
      dbJson['conhecimentos_necessarios'] = conhecimentosNecessarios;
      dbJson['conhecimentos_ao_final'] = conhecimentosAoFinal;
      dbJson['coorientadores'] = coorientadores;
      dbJson['orientador'] = orientador;

      Vaga vaga = Vaga.fromJson(dbJson);

      vagas.add(vaga);
    }

    return vagas;
  }

  Future<Vaga> getVaga(int vagaId) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = "SELECT * FROM vaga v WHERE v.id = $vagaId";
    var result = await db.rawQuery(sql);
    var json = result[0];

    InscreveEmDao ie = InscreveEmDao();
    var dbJson = Map.of(json);
    dbJson['categorias'] = getCategorias(vagaId);
    dbJson['conhecimentos_necessarios'] = getConhecimentosNecessarios(vagaId);
    dbJson['conhecimentos_ao_final'] = getConhecimentosAoFinal(vagaId);
    dbJson['coorientadores'] = ie.getCoorientadores(vagaId);
    dbJson['orientador'] = ie.getOrientador(vagaId);
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
      WHERE v.id = $vagaId;
    ''';
    var result = await db.rawQuery(sql);

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
      WHERE v.id = $vagaId;
    ''';
    var result = await db.rawQuery(sql);

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
      WHERE v.id = $vagaId;
    ''';
    var result = await db.rawQuery(sql);

    List<ConhecimentoAoFinal> conhecimentosAoFinal = <ConhecimentoAoFinal>[];
    for (var json in result) {
      ConhecimentoAoFinal conhecimentoAoFinal =
          ConhecimentoAoFinal.fromJson(json);
      conhecimentosAoFinal.add(conhecimentoAoFinal);
    }

    return conhecimentosAoFinal;
  }
}
