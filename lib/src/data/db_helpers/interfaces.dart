import 'package:sqflite/sqflite.dart';

abstract class ITable{
  void create(Database db);
}

abstract class IDB{
  void createTables();
}

