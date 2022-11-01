import 'dart:convert';

import 'package:inova/src/data/db_helpers/db_helper.dart';
import 'package:inova/src/domain/role.dart';
import 'package:sqflite/sqlite_api.dart';

class PacoteDao {
  Future<List<Role>> listarRoles() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM role';
    var result = await db.rawQuery(sql);

    List<Role> lista = <Role>[];
    for (var json in result) {
      Role role = Role.fromJson(json);
      lista.add(role);
    }

    return lista;
  }
}
