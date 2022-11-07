import 'package:inova/src/data/db_helpers/db_helper.dart';
import 'package:inova/src/domain/usuario.dart';
import 'package:sqflite/sqflite.dart';
import 'package:uuid/uuid.dart';

class UserDao {
  Future<Usuario> getUser(Uuid userId) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = '''
      SELECT 
        u.id,
        u.url_image,
        u.name,
        u.turma,
        u.descricao
      FROM user u WHERE u.id = $userId
    ''';

    var result = await db.rawQuery(sql);
    return Usuario.fromJson(result[0]);
  }
}
