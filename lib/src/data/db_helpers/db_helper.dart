import 'dart:async';
import 'dart:io' show Directory, File;
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import "package:sqflite/sqflite.dart";

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String databasePath = join(path, "inovadb.db");
    //print(databasePath);
    Database db =
        await openDatabase(databasePath, version: 1, onCreate: onCreate);
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    //print('creating database');

    String sqlFile =
        (await rootBundle.loadString('assets/migrations/0001_init.sql'));

    Directory dir = await getApplicationDocumentsDirectory();
    File osFile = await File('${dir.path}/init.sql').writeAsString(sqlFile);

    List<String> queries = (await osFile.readAsString()).split(';');

    for (String query in queries) {
      await db.execute(query);
    }
  }
}
