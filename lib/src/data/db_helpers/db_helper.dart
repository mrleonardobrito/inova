import 'dart:async';
import 'dart:io' show File;
import 'package:inova/src/data/db_helpers/migrations/init_sql.dart';
import 'package:path_provider/path_provider.dart';
import "package:sqflite/sqflite.dart";
import "package:path/path.dart";

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String databasePath = join(path, "inovadb.db");
    print(databasePath);
    Database db =
        await openDatabase(databasePath, version: 1, onCreate: onCreate);
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    print('creating database');

    String sql =
        'CREATE TABLE IF NOT EXISTS role(id VARCHAR(36) PRIMARY KEY,name VARCHAR(36) NOT NULL);';
    await db.execute(sql);

    sql =
        'CREATE TABLE IF NOT EXISTS usuario(id VARCHAR(36) PRIMARY KEY,url_image TEXT,name VARCHAR(50) NOT NULL,turma VARCHAR(50),descricao VARCHAR(200));';
    await db.execute(sql);

    sql =
        'CREATE TABLE IF NOT EXISTS auth(id VARCHAR(36) PRIMARY KEY,id_usuario VARCHAR(36) NOT NULL,email VARCHAR(200) NOT NULL,passwd VARCHAR(200) NOT NULL,isautenticated BOOLEAN NOT NULL,id_role VARCHAR(36) NOT NULL,FOREIGN KEY(id_role) REFERENCES role(id),FOREIGN KEY(id_usuario) REFERENCES usuario(id));';
    await db.execute(sql);

    sql =
        'CREATE TABLE IF NOT EXISTS vaga(id INTEGER PRIMARY KEY, name VARCHAR(128) NOT NULL, quant_horas INT NOT NULL, vagas_disp INT NOT NULL, proposta TEXT NOT NULL, o_que_irei_fazer TEXT NOT NULL, avaliacao_user FLOAT, bolsa_disp FLOAT);';
    await db.execute(sql);

    sql =
        'CREATE TABLE IF NOT EXISTS inscreve_em(  id INTEGER PRIMARY KEY,  id_vaga INTEGER NOT NULL,  id_colaborador VARCHAR(36) NOT NULL,  status VARCHAR(64) NOT NULL,  cargo VARCHAR(64) NOT NULL,  created_at TIMESTAMP NOT NULL,  updated_at TIMESTAMP NOT NULL,  FOREIGN KEY(id_colaborador) REFERENCES usuario(id),  FOREIGN KEY(id_vaga) REFERENCES vaga(id));';
    await db.execute(sql);

    sql =
        'CREATE TABLE IF NOT EXISTS categoria(  id INTEGER PRIMARY KEY,  name VARCHAR(64) NOT NULL);';
    await db.execute(sql);

    sql =
        'CREATE TABLE IF NOT EXISTS categorias_por_vaga(  id_vaga INTEGER NOT NULL,  id_categoria INTEGER NOT NULL,  PRIMARY KEY(id_vaga, id_categoria),  FOREIGN KEY(id_vaga) REFERENCES vaga(id),  FOREIGN KEY(id_categoria) REFERENCES categoria(id));';
    await db.execute(sql);

    sql =
        'CREATE TABLE IF NOT EXISTS conhecimentos_necessarios(  id PRIMARY KEY,  id_vaga INTEGER NOT NULL,  conhecimento VARCHAR(200) NOT NULL,  FOREIGN KEY(id_vaga) REFERENCES vaga(id));';
    await db.execute(sql);

    sql =
        'CREATE TABLE IF NOT EXISTS conhecimentos_ao_final(  id INTEGER PRIMARY KEY,  id_vaga INTEGER NOT NULL,  conhecimento VARCHAR(200) NOT NULL,  FOREIGN KEY(id_vaga) REFERENCES vaga(id));';
    await db.execute(sql);

    sql =
        "INSERT INTO role( id, name ) VALUES('e073818f-513c-40fa-9e98-b0cda05bf561', 'discente'),('d085d435-41ec-49d2-866c-6d4ccfe9e5cf', 'docente');";
    await db.execute(sql);

    sql =
        "INSERT INTO auth(  id, id_usuario, email, passwd, isautenticated, id_role) VALUES('a8e16013-36c3-42d4-81d0-28d74adfe3d2','c0cab1eb-9128-4b91-8639-56fdc179a1ec','tarsismarinho@ifal.edu.br', 'cadeaissue', true, 'd085d435-41ec-49d2-866c-6d4ccfe9e5cf'),('62ac3125-aa36-4f00-8cc5-54e45872da3b','6d6083a7-8e2c-4416-bf09-77f309210517','lfb3@aluno.ifal.edu.br', 'funcionariodomes', true, 'e073818f-513c-40fa-9e98-b0cda05bf561'),('36fe83e2-f509-4045-8f5c-6a6e8f6c388c', 'a55a9819-6601-49e6-8b32-f0bc9d9f83a6', 'danielfireman@ifal.edu.br','carecaporamor',true,'d085d435-41ec-49d2-866c-6d4ccfe9e5cf');";
    await db.execute(sql);

    sql =
        "INSERT INTO usuario(  id, url_image, name, descricao) VALUES('c0cab1eb-9128-4b91-8639-56fdc179a1ec', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fveja.abril.com.br%2Fcoluna%2Fveja-gente%2Flive-de-3500-reais-rende-publico-simultaneo-de-15-milhao-de-pessoas%2F&psig=AOvVaw0-SlvjlCs_VANgUPU0cm1D&ust=1667311591989000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCOir2-zRivsCFQAAAAAdAAAAABAH', 'Tarsis Marinho', 'sou bonito sou gostoso jogo bola e danço'), ('a55a9819-6601-49e6-8b32-f0bc9d9f83a6', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fveja.abril.com.br%2Fcoluna%2Fveja-gente%2Flive-de-3500-reais-rende-publico-simultaneo-de-15-milhao-de-pessoas%2F&psig=AOvVaw0-SlvjlCs_VANgUPU0cm1D&ust=1667311591989000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCOir2-zRivsCFQAAAAAdAAAAABAH', 'Daniel Fireman', 'calvo de cria');";
    await db.execute(sql);

    sql =
        "INSERT INTO usuario(  id, url_image, name, turma, descricao) VALUES('6d6083a7-8e2c-4416-bf09-77f309210517', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tiktok.com%2Fdiscover%2Fthe-rock-meme-name%3Flang%3Dpt-BR&psig=AOvVaw1Hthv-8KwWSDKyFPUalsFS&ust=1667311937640000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCIilxpDTivsCFQAAAAAdAAAAABAJ', 'Leonardo Brito', '914', 'garoto de programa integral');";
    await db.execute(sql);

    sql =
        "INSERT INTO vaga(  id, name, quant_horas, vagas_disp, proposta, o_que_irei_fazer, avaliacao_user, bolsa_disp) VALUES(1, 'Vaga Backend DIT', 42, 4, 'vaga pra backend dit', 'ira programar', 4.6, 600.0);";
    await db.execute(sql);

    sql =
        "INSERT INTO inscreve_em(  id, id_vaga, id_colaborador, status, created_at, updated_at, cargo) VALUES(1, 1, '6d6083a7-8e2c-4416-bf09-77f309210517', 'em avaliação', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'bolsista'),(2,1, 'a55a9819-6601-49e6-8b32-f0bc9d9f83a6', 'em avaliação', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'coorientador'),(3,1, 'c0cab1eb-9128-4b91-8639-56fdc179a1ec', 'em avaliação', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'orientador');";
    await db.execute(sql);

    sql =
        "INSERT INTO categoria(  id, name) VALUES(1, 'Monitoria'),(2, 'Pesquisa'),(3, 'Extensão');";
    await db.execute(sql);

    sql =
        "INSERT INTO categorias_por_vaga(  id_vaga, id_categoria) VALUES(1, 2);";
    await db.execute(sql);

    sql =
        "INSERT INTO conhecimentos_ao_final(  id, id_vaga, conhecimento) VALUES(1, 1, 'Banco de dados'),(2, 1, 'Protocolos HTTP'),(3, 1, 'Aplicações REST'),(4, 1, 'Desenvolvimento WEB'),(5, 1, 'Backend');";
    await db.execute(sql);

    sql =
        "INSERT INTO conhecimentos_necessarios(  id, id_vaga, conhecimento) VALUES(1, 1, 'ANSIEDADE');";
    await db.execute(sql);
  }
}
