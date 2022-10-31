import 'dart:async';

import "package:sqflite/sqflite.dart";
import "package:path/path.dart";

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String databasePath = join(path, "inova.db");
    Database db =
        await openDatabase(databasePath, version: 1, onCreate: onCreate);
    print(databasePath);
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {}
}

// CREATE TABLE IF NOT EXISTS auth(
//   id INTEGER PRIMARY KEY
//   email VARCHAR(200) NOT NULL
//   passwd VARCHAR(200) NOT NULL
//   isautenticated BOOLEAN NOT NULL
//   role VARCHAR(50) NOT NULL
// );

// CREATE TABLE IF NOT EXISTS orientador(
//   id INTEGER PRIMARY KEY
//   id_auth INTEGER NOT NULL
//   url_image TEXT
//   name VARCHAR(50) NOT NULL
//   descricao VARCHAR(200) 
// );

// ALTER TABLE orientador ADD CONSTRAINT fk_auth FOREIGN KEY(id_auth) REFERENCES auth(id);

// CREATE TABLE IF NOT EXISTS colaborador(
//   id INTEGER PRIMARY KEY
//   id_auth INTEGER NOT NULL
//   url_image TEXT 
//   name VARCHAR(50) NOT NULL
//   turma VARCHAR(50)
//   descricao VARCHAR(200)
// );

// ALTER TABLE colaborador ADD CONSTRAINT fk_colab_auth FOREIGN KEY(id_auth) REFERENCES auth(id);

// CREATE TABLE IF NOT EXISTS vaga(
//   id INTEGER PRIMARY KEY
//   id_orientador INTEGER NOT NULL
//   name VARCHAR(128) NOT NULL
//   quant_horas INT NOT NULL
//   vagas_disp INT NOT NULL
//   proposta TEXT NOT NULL
//   o_que_irei_fazer TEXT NOT NULL
//   avaliacao_user DOUBLE
//   bolsa_disp DOUBLE
// );

// ALTER TABLE vaga ADD CONSTRAINT fk_orientador FOREIGN KEY(id_orientador) REFERENCES orientador(id); 

// CREATE TABLE IF NOT EXISTS contribui_para(
//   id INTEGER PRIMARY KEY
//   id_colaborador INTEGER NOT NULL
//   status VARCHAR(64) NOT NULL
//   created_at TIMESTAMP NOT NULL
//   updated_at TIMESTAMP NOT NULL
// )

// ALTER TABLE contribui_para ADD CONSTRAINT fk_colaborador_contribui_para FOREIGN KEY(id_colaborador) REFERENCES colaborador(id);

// CREATE TABLE IF NOT EXISTS categoria(
//   id INTEGER PRIMARY KEY
//   name VARCHAR(64) NOT NULL
// )

// CREATE TABLE IF NOT EXISTS categorias_por_vaga(
//   id_vaga INTEGER PRIMARY KEY
//   id_categoria INTEGER PRIMARY KEY
// )

// ALTER TABLE categorias_por_vaga ADD CONSTRAINT fk_vaga_id
// FOREIGN KEY(id_vaga) REFERENCES vaga(id);

// ALTER TABLE categorias_por_vaga ADD CONSTRAINT fk_categoria_id
// FOREIGN KEY(id_categoria) REFERENCES categoria(id);

// CREATE TABLE IF NOT EXISTS conhecimentos_necessarios(
//   id INTEGER PRIMARY KEY
//   id_vaga INTEGER NOT NULL
//   conhecimento VARCHAR(200) NOT NULL
// )

// ALTER TABLE conhecimentos_necessarios ADD CONSTRAINT fk_id_vaga FOREIGN KEY(id_vaga) REFERENCES vaga(id);

// CREATE TABLE IF NOT EXISTS conhecimentos_ao_final(
//   id INTEGER PRIMARY KEY
//   id_vaga INTEGER NOT NULL
//   conhecimento VARCHAR(200) NOT NULL
// )

// ALTER TABLE conhecimentos_ao_final ADD CONSTRAINT fk_final_id_vaga FOREIGN KEY(id_vaga) REFERENCES vaga(id);