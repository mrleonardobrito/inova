import 'package:inova/src/data/db_helpers/db_helper.dart';
import 'package:inova/src/data/db_helpers/interfaces.dart';
import 'package:sqflite/sqflite.dart';

class RoleHelper extends ITable{

  late final DBHelper _db;

  RoleHelper(this._db){
    _db = DBHelper();
    _db.subscribe(this);
  }

  @override
  void create(Database db) {
    String sql = 
    '''
      CREATE TABLE IF NOT EXISTS role( 
        id VARCHAR(36) NOT NULL, 
        name VARCHAR(36) NOT NULL
      );

      ALTER TABLE role ADD CONSTRAINT pk_role PRIMARY KEY(id);
    ''';

    db.execute(sql);
  }

}