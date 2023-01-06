import 'package:inova/data/repository/database/db_helpers/db_helper.dart';
import 'package:sqflite/sqflite.dart';

import '../../models/colaborador.dart';

class InscreveEmDao {
  Future<List<Colaborador>> getCoorientadores(int vagaId) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = '''
      SELECT
      u.name,
      i.cargo
      FROM inscreve_em i 
      INNER JOIN usuario u ON i.id_colaborador = u.id 
      WHERE i.id_vaga = $vagaId AND i.cargo = 'coorientador'
    ''';

    List<Colaborador> coorientadores = <Colaborador>[];
    var result = await db.rawQuery(sql);
    for (var json in result) {
      coorientadores.add(Colaborador.fromJson(json));
    }

    return coorientadores;
  }

  Future<Orientador> getOrientador(int vagaId) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = '''
      SELECT
      u.name,
      i.cargo
      FROM inscreve_em i 
      INNER JOIN usuario u ON i.id_colaborador = u.id 
      WHERE i.id_vaga = $vagaId AND i.cargo = 'orientador'
    ''';

    var result = await db.rawQuery(sql);
    var json = result[0];
    //print(json);
    Orientador orientador = Orientador.fromJson(json);

    return orientador;
  }
}
