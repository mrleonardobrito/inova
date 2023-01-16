import 'package:inova/data/database/db_helpers/db_helper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:uuid/uuid.dart';

class AuthDao {
  Future<void> cadastrar(String nome, String email, String senha) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    Uuid idUser = const Uuid();
    Uuid idAuth = const Uuid();

    String insertSql =
        "INSERT INTO usuario(id, name) VALUES (${idUser.toString()}, $nome)";
    String authSql =
        "INSERT INTO auth(id, id_usuario, email, passwd, isautenticated, id_role) VALUES (${idAuth.toString()},${idUser.toString()},$email,$senha,${true},${'e073818f-513c-40fa-9e98-b0cda05bf561'})";

    db.execute(insertSql);
    db.execute(authSql);
  }

  Future<bool> login(String email, String senha) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = "SELECT a.email, a.senha FROM auth a";
    var results = await db.rawQuery(sql);

    for (var json in results) {
      String authEmail = json['email'] as String;
      String authSenha = json['senha'] as String;

      if (authEmail == email && authSenha == senha) {
        return true;
      }
    }

    return false;
  }
}
