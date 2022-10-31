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

// CREATE TABLE IF NOT EXISTS role(
//   id VARCHAR(36) NOT NULL,
//   name VARCHAR(36) NOT NULL
// );

// ALTER TABLE role ADD CONSTRAINT pk_role PRIMARY KEY(id);

// CREATE TABLE IF NOT EXISTS auth(
//   id VARCHAR(36) NOT NULL,
//   email VARCHAR(200) NOT NULL,
//   passwd VARCHAR(200) NOT NULL,
//   isautenticated BOOLEAN NOT NULL,
//   id_role VARCHAR(36) NOT NULL
// );

// ALTER TABLE auth ADD CONSTRAINT pk_auth PRIMARY KEY(id);
// ALTER TABLE auth ADD CONSTRAINT fk_role FOREIGN KEY(id_role) REFERENCES role(id);

// CREATE TABLE IF NOT EXISTS orientador(
//   id VARCHAR(36) NOT NULL,
//   id_auth VARCHAR(36) NOT NULL,
//   url_image TEXT,
//   name VARCHAR(50) NOT NULL,
//   descricao VARCHAR(200) 
// );

// ALTER TABLE orientador ADD CONSTRAINT pk_orientador PRIMARY KEY(id);
// ALTER TABLE orientador ADD CONSTRAINT fk_auth FOREIGN KEY(id_auth) REFERENCES auth(id);

// CREATE TABLE IF NOT EXISTS colaborador(
//   id VARCHAR(36) NOT NULL,
//   id_auth VARCHAR(36) NOT NULL,
//   url_image TEXT,
//   name VARCHAR(50) NOT NULL,
//   turma VARCHAR(50),
//   descricao VARCHAR(200)
// );

// ALTER TABLE colaborador ADD CONSTRAINT pk_colaborador PRIMARY KEY(id);
// ALTER TABLE colaborador ADD CONSTRAINT fk_colab_auth FOREIGN KEY(id_auth) REFERENCES auth(id);

// CREATE TABLE IF NOT EXISTS vaga(
//   id INTEGER NOT NULL,
//   id_orientador VARCHAR(36) NOT NULL,
//   name VARCHAR(128) NOT NULL,
//   quant_horas INT NOT NULL,
//   vagas_disp INT NOT NULL,
//   proposta TEXT NOT NULL,
//   o_que_irei_fazer TEXT NOT NULL,
//   avaliacao_user DOUBLE,
//   bolsa_disp DOUBLE
// );

// ALTER TABLE vaga ADD CONSTRAINT pk_vaga PRIMARY KEY(id);
// ALTER TABLE vaga ADD CONSTRAINT fk_orientador FOREIGN KEY(id_orientador) REFERENCES orientador(id); 

// CREATE TABLE IF NOT EXISTS contribui_para(
//   id INTEGER NOT NULL,
//   id_colaborador VARCHAR(36) NOT NULL,
//   status VARCHAR(64) NOT NULL,
//   created_at TIMESTAMP NOT NULL,
//   updated_at TIMESTAMP NOT NULL
// );

// ALTER TABLE contribui_para ADD CONSTRAINT pk_contribui_para PRIMARY KEY(id);
// ALTER TABLE contribui_para ADD CONSTRAINT fk_colaborador_contribui_para FOREIGN KEY(id_colaborador) REFERENCES colaborador(id);

// CREATE TABLE IF NOT EXISTS categoria(
//   id INTEGER NOT NULL,
//   name VARCHAR(64) NOT NULL
// );

// ALTER TABLE categoria ADD CONSTRAINT pk_categoria PRIMARY KEY(id);

// CREATE TABLE IF NOT EXISTS categorias_por_vaga(
//   id_vaga INTEGER NOT NULL,
//   id_categoria INTEGER NOT NULL
// );

// ALTER TABLE categorias_por_vaga ADD CONSTRAINT pk_categorias_por_vaga PRIMARY KEY(id_vaga, id_categoria);
// ALTER TABLE categorias_por_vaga ADD CONSTRAINT fk_vaga_id FOREIGN KEY(id_vaga) REFERENCES vaga(id);
// ALTER TABLE categorias_por_vaga ADD CONSTRAINT fk_categoria_id FOREIGN KEY(id_categoria) REFERENCES categoria(id);

// CREATE TABLE IF NOT EXISTS conhecimentos_necessarios(
//   id INTEGER NOT NULL,
//   id_vaga INTEGER NOT NULL,
//   conhecimento VARCHAR(200) NOT NULL
// );

// ALTER TABLE conhecimentos_necessarios ADD CONSTRAINT pk_conhecimentos_necessarios PRIMARY KEY(id);
// ALTER TABLE conhecimentos_necessarios ADD CONSTRAINT fk_id_vaga FOREIGN KEY(id_vaga) REFERENCES vaga(id);

// CREATE TABLE IF NOT EXISTS conhecimentos_ao_final(
//   id INTEGER NOT NULL,
//   id_vaga INTEGER NOT NULL,
//   conhecimento VARCHAR(200) NOT NULL
// );

// ALTER TABLE conhecimentos_ao_final ADD CONSTRAINT pk_conhecimentos_ao_final PRIMARY KEY(id);
// ALTER TABLE conhecimentos_ao_final ADD CONSTRAINT fk_final_id_vaga FOREIGN KEY(id_vaga) REFERENCES vaga(id);

// INSERT INTO role( id, name ) VALUES 
// ('e073818f-513c-40fa-9e98-b0cda05bf561', 'colaborador'),
// ('d085d435-41ec-49d2-866c-6d4ccfe9e5cf', 'orientador')
// ;

// INSERT INTO auth(
//   id, email, passwd, isautenticated, id_role
// ) VALUES 
// ('a8e16013-36c3-42d4-81d0-28d74adfe3d2', 'tarsismarinho@ifal.edu.br', 'cadeaissue', true, 'd085d435-41ec-49d2-866c-6d4ccfe9e5cf'),
// ('62ac3125-aa36-4f00-8cc5-54e45872da3b', 'lfb3@aluno.ifal.edu.br', 'funcionariodomes', true, 'e073818f-513c-40fa-9e98-b0cda05bf561');

// INSERT INTO orientador(
//   id, id_auth, url_image, name, descricao
// ) VALUES
// ('c0cab1eb-9128-4b91-8639-56fdc179a1ec',
//  'a8e16013-36c3-42d4-81d0-28d74adfe3d2',
//  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fveja.abril.com.br%2Fcoluna%2Fveja-gente%2Flive-de-3500-reais-rende-publico-simultaneo-de-15-milhao-de-pessoas%2F&psig=AOvVaw0-SlvjlCs_VANgUPU0cm1D&ust=1667311591989000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCOir2-zRivsCFQAAAAAdAAAAABAH',
//  'Tarsis Marinho',
//  'sou bonito sou gostoso jogo bola e danço');
 
// INSERT INTO colaborador(
//   id, id_auth, url_image, name, descricao
// ) VALUES
// ('6d6083a7-8e2c-4416-bf09-77f309210517',
//  '62ac3125-aa36-4f00-8cc5-54e45872da3b',
//  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tiktok.com%2Fdiscover%2Fthe-rock-meme-name%3Flang%3Dpt-BR&psig=AOvVaw1Hthv-8KwWSDKyFPUalsFS&ust=1667311937640000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCIilxpDTivsCFQAAAAAdAAAAABAJ',
//  'Leonardo Brito',
//  'garoto de programa integral');

// INSERT INTO vaga(
//   id, id_orientador, name, quant_horas, vagas_disp, proposta, o_que_irei_fazer, avaliacao_user, bolsa_disp
// ) VALUES
// (1, 'c0cab1eb-9128-4b91-8639-56fdc179a1ec', 'Vaga Backend DIT', 42, 4, 'vaga pra backend dit', 'ira programar', 4.6, 600.0);

// INSERT INTO categoria(
//   id, name
// ) VALUES
// (1, 'Monitoria'),
// (2, 'Pesquisa'),
// (3, 'Extensão');

// INSERT INTO categorias_por_vaga(
//   id_vaga, id_categoria
// ) VALUES
// (1, 2);

// INSERT INTO conhecimentos_ao_final(
//   id, id_vaga, conhecimento
// ) VALUES
// (1, 1, 'Banco de dados'),
// (2, 1, 'Protocolos HTTP'),
// (3, 1, 'Aplicações REST'),
// (4, 1, 'Desenvolvimento WEB'),
// (5, 1, 'Backend');

// INSERT INTO conhecimentos_necessarios(
//   id, id_vaga, conhecimento
// ) VALUES
// (1, 1, 'ANSIEDADE');