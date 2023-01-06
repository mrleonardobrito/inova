CREATE TABLE IF NOT EXISTS role(
  id VARCHAR(36) PRIMARY KEY,
  name VARCHAR(36) NOT NULL
);

CREATE TABLE IF NOT EXISTS usuario(
  id VARCHAR(36) PRIMARY KEY,
  url_image TEXT,
  name VARCHAR(50) NOT NULL,
  turma VARCHAR(50),
  descricao VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS auth(
  id VARCHAR(36) PRIMARY KEY,
  id_usuario VARCHAR(36) NOT NULL,
  email VARCHAR(200) NOT NULL,
  passwd VARCHAR(200) NOT NULL,
  isautenticated BOOLEAN NOT NULL,
  id_role VARCHAR(36) NOT NULL,
  FOREIGN KEY(id_role) REFERENCES role(id),
  FOREIGN KEY(id_usuario) REFERENCES usuario(id)
);

CREATE TABLE IF NOT EXISTS vaga(
  id INTEGER PRIMARY KEY,
  name VARCHAR(128) NOT NULL,
  quant_horas INT NOT NULL,
  vagas_disp INT NOT NULL,
  proposta TEXT NOT NULL,
  o_que_irei_fazer TEXT NOT NULL,
  avaliacao_user FLOAT,
  bolsa_disp FLOAT
);

CREATE TABLE IF NOT EXISTS inscreve_em(
  id INTEGER PRIMARY KEY,
  id_vaga INTEGER NOT NULL,
  id_colaborador VARCHAR(36) NOT NULL,
  status VARCHAR(64) NOT NULL,
  cargo VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  FOREIGN KEY(id_colaborador) REFERENCES usuario(id),
  FOREIGN KEY(id_vaga) REFERENCES vaga(id)
);

CREATE TABLE IF NOT EXISTS categoria(
  id INTEGER PRIMARY KEY,
  name VARCHAR(64) NOT NULL
);

CREATE TABLE IF NOT EXISTS categorias_por_vaga(
  id_vaga INTEGER NOT NULL,
  id_categoria INTEGER NOT NULL,
  PRIMARY KEY(id_vaga, id_categoria),
  FOREIGN KEY(id_vaga) REFERENCES vaga(id),
  FOREIGN KEY(id_categoria) REFERENCES categoria(id)
);

CREATE TABLE IF NOT EXISTS conhecimentos_necessarios(
  id PRIMARY KEY,
  id_vaga INTEGER NOT NULL,
  conhecimento VARCHAR(200) NOT NULL,
  FOREIGN KEY(id_vaga) REFERENCES vaga(id)
);

CREATE TABLE IF NOT EXISTS conhecimentos_ao_final(
  id INTEGER PRIMARY KEY,
  id_vaga INTEGER NOT NULL,
  conhecimento VARCHAR(200) NOT NULL,
  FOREIGN KEY(id_vaga) REFERENCES vaga(id)
);


INSERT INTO
  role(id, name)
VALUES
  (
    'e073818f-513c-40fa-9e98-b0cda05bf561',
    'discente'
  ),
  (
    'd085d435-41ec-49d2-866c-6d4ccfe9e5cf',
    'docente'
  );

INSERT INTO
  auth(
    id,
    id_usuario,
    email,
    passwd,
    isautenticated,
    id_role
  )
VALUES
  (
    'a8e16013-36c3-42d4-81d0-28d74adfe3d2',
    'c0cab1eb-9128-4b91-8639-56fdc179a1ec',
    'tarsismarinho@ifal.edu.br',
    'cadeaissue',
    true,
    'd085d435-41ec-49d2-866c-6d4ccfe9e5cf'
  ),
  (
    '62ac3125-aa36-4f00-8cc5-54e45872da3b',
    '6d6083a7-8e2c-4416-bf09-77f309210517',
    'lfb3@aluno.ifal.edu.br',
    'funcionariodomes',
    true,
    'e073818f-513c-40fa-9e98-b0cda05bf561'
  ),
  (
    '36fe83e2-f509-4045-8f5c-6a6e8f6c388c',
    'a55a9819-6601-49e6-8b32-f0bc9d9f83a6',
    'danielfireman@ifal.edu.br',
    'carecaporamor',
    true,
    'd085d435-41ec-49d2-866c-6d4ccfe9e5cf'
  );

INSERT INTO
  usuario(id, url_image, name, descricao)
VALUES
  (
    'c0cab1eb-9128-4b91-8639-56fdc179a1ec',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fveja.abril.com.br%2Fcoluna%2Fveja-gente%2Flive-de-3500-reais-rende-publico-simultaneo-de-15-milhao-de-pessoas%2F&psig=AOvVaw0-SlvjlCs_VANgUPU0cm1D&ust=1667311591989000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCOir2-zRivsCFQAAAAAdAAAAABAH',
    'Tarsis Marinho',
    'sou bonito sou gostoso jogo bola e danço'
  ),
  (
    'a55a9819-6601-49e6-8b32-f0bc9d9f83a6',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fveja.abril.com.br%2Fcoluna%2Fveja-gente%2Flive-de-3500-reais-rende-publico-simultaneo-de-15-milhao-de-pessoas%2F&psig=AOvVaw0-SlvjlCs_VANgUPU0cm1D&ust=1667311591989000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCOir2-zRivsCFQAAAAAdAAAAABAH',
    'Daniel Fireman',
    'calvo de cria'
  );

INSERT INTO
  usuario(id, url_image, name, turma, descricao)
VALUES
  (
    '6d6083a7-8e2c-4416-bf09-77f309210517',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tiktok.com%2Fdiscover%2Fthe-rock-meme-name%3Flang%3Dpt-BR&psig=AOvVaw1Hthv-8KwWSDKyFPUalsFS&ust=1667311937640000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCIilxpDTivsCFQAAAAAdAAAAABAJ',
    'Leonardo Brito',
    '914',
    'garoto de programa integral'
  );

INSERT INTO
  vaga(
    id,
    name,
    quant_horas,
    vagas_disp,
    proposta,
    o_que_irei_fazer,
    avaliacao_user,
    bolsa_disp
  )
VALUES
  (
    1,
    'Vaga Backend DIT',
    400,
    4,
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    4.6,
    600.0
  ),
  (
    2,
    'Monitoria de Microcontroladores',
    400,
    1,
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    5.0,
    600.0
  ),
  (
    3,
    'Vaga para backend DIT',
    400,
    1,
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    5.0,
    600.0
  ),
  (
    4,
    'Vaga para frontend no DadosJusBr',
    400,
    1,
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    5.0,
    600.0
  ),
  (
    5,
    'Dados Abertos',
    400,
    1,
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    5.0,
    600.0
  ),
  (
    6,
    'Vaga backend Notifica',
    400,
    1,
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    5.0,
    600.0
  ),
  (
    7,
    'Monitoria de Analógica',
    400,
    1,
    'Lorem Ipsum is simply',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    5.0,
    600.0
  );

INSERT INTO
  inscreve_em(
    id,
    id_vaga,
    id_colaborador,
    status,
    created_at,
    updated_at,
    cargo
  )
VALUES
  (1, 1,'6d6083a7-8e2c-4416-bf09-77f309210517','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'bolsista'),
  (2, 1,'a55a9819-6601-49e6-8b32-f0bc9d9f83a6','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'coorientador'),
  (3, 1,'c0cab1eb-9128-4b91-8639-56fdc179a1ec','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'orientador'),
  (4, 2,'6d6083a7-8e2c-4416-bf09-77f309210517','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'bolsista'),
  (5, 2,'a55a9819-6601-49e6-8b32-f0bc9d9f83a6','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'coorientador'),
  (6, 2,'c0cab1eb-9128-4b91-8639-56fdc179a1ec','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'orientador'),
  (7, 3,'6d6083a7-8e2c-4416-bf09-77f309210517','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'bolsista'),
  (8, 3,'a55a9819-6601-49e6-8b32-f0bc9d9f83a6','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'coorientador'),
  (9, 3,'c0cab1eb-9128-4b91-8639-56fdc179a1ec','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'orientador'),
  (10, 4,'6d6083a7-8e2c-4416-bf09-77f309210517','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'bolsista'),
  (11, 4,'a55a9819-6601-49e6-8b32-f0bc9d9f83a6','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'coorientador'),
  (12, 4,'c0cab1eb-9128-4b91-8639-56fdc179a1ec','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'orientador'),
  (13, 5,'6d6083a7-8e2c-4416-bf09-77f309210517','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'bolsista'),
  (14, 5,'a55a9819-6601-49e6-8b32-f0bc9d9f83a6','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'coorientador'),
  (15, 5,'c0cab1eb-9128-4b91-8639-56fdc179a1ec','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'orientador'),
  (16, 6,'6d6083a7-8e2c-4416-bf09-77f309210517','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'bolsista'),
  (17, 6,'a55a9819-6601-49e6-8b32-f0bc9d9f83a6','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'coorientador'),
  (18, 6,'c0cab1eb-9128-4b91-8639-56fdc179a1ec','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'orientador'),
  (19, 7,'6d6083a7-8e2c-4416-bf09-77f309210517','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'bolsista'),
  (20, 7,'a55a9819-6601-49e6-8b32-f0bc9d9f83a6','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'coorientador'),
  (21, 7,'c0cab1eb-9128-4b91-8639-56fdc179a1ec','em avaliação',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'orientador');

INSERT INTO
  categoria(id, name)
VALUES
  (1, 'Monitoria'),
  (2, 'Pesquisa'),
  (3, 'Extensão'),
  (4, 'Programação web'),
  (5, 'Informática'),
  (6, 'Eletroeletrônica'),
  (7, 'Microcontroladores'),
  (8, 'Projeto'),
  (9, 'Backend'),
  (10, 'Frontend'),
  (11, 'Analógica'),
  (12, 'Digital');
  
INSERT INTO
  categorias_por_vaga(id_vaga, id_categoria)
VALUES
  (1, 1),
  (1, 6),
  (1, 7),
  (2, 8),
  (2, 5),
  (2, 4),
  (3, 4),
  (3, 2),
  (3, 10),
  (4, 3),
  (4, 11),
  (4, 8),
  (5, 7),
  (5, 5),
  (5, 9),
  (6, 10),
  (6, 12),
  (6, 2),
  (7, 3),
  (7, 5);

INSERT INTO
  conhecimentos_ao_final(id, id_vaga, conhecimento)
VALUES
  (1, 1, 'Experiência profissional comprovada'),
  (2, 1, 'Conhecimento sobre como produzir APIs'),
  (3, 1, 'Prática em metodologias ágeis de trabalho'),
  (4, 1, 'Algumas doenças mentais relacionadas a ansiedade de entrega de trabalhos'),
  (5, 1, 'Desemprego como resultado'),
  (6, 2, 'Experiência profissional comprovada'),
  (7, 2, 'Conhecimento sobre como produzir APIs'),
  (8, 2, 'Prática em metodologias ágeis de trabalho'),
  (9, 2, 'Algumas doenças mentais relacionadas a ansiedade de entrega de trabalhos'),
  (10, 2, 'Desemprego como resultado'),
  (11, 3, 'Experiência profissional comprovada'),
  (12, 3, 'Conhecimento sobre como produzir APIs'),
  (13, 3, 'Prática em metodologias ágeis de trabalho'),
  (14, 3, 'Algumas doenças mentais relacionadas a ansiedade de entrega de trabalhos'),
  (15, 3, 'Desemprego como resultado'),
  (16, 4, 'Experiência profissional comprovada'),
  (17, 4, 'Conhecimento sobre como produzir APIs'),
  (18, 4, 'Prática em metodologias ágeis de trabalho'),
  (19, 4, 'Algumas doenças mentais relacionadas a ansiedade de entrega de trabalhos'),
  (20, 4, 'Desemprego como resultado'),
  (21, 5, 'Experiência profissional comprovada'),
  (22, 5, 'Conhecimento sobre como produzir APIs'),
  (23, 5, 'Prática em metodologias ágeis de trabalho'),
  (24, 5, 'Algumas doenças mentais relacionadas a ansiedade de entrega de trabalhos'),
  (25, 5, 'Desemprego como resultado'),
  (26, 6, 'Experiência profissional comprovada'),
  (27, 6, 'Conhecimento sobre como produzir APIs'),
  (28, 6, 'Prática em metodologias ágeis de trabalho'),
  (29, 6, 'Algumas doenças mentais relacionadas a ansiedade de entrega de trabalhos'),
  (30, 6, 'Desemprego como resultado'),
  (31, 7, 'Experiência profissional comprovada'),
  (32, 7, 'Conhecimento sobre como produzir APIs'),
  (33, 7, 'Prática em metodologias ágeis de trabalho'),
  (34, 7, 'Algumas doenças mentais relacionadas a ansiedade de entrega de trabalhos'),
  (35, 7, 'Desemprego como resultado');
 
INSERT INTO
  conhecimentos_necessarios(id, id_vaga, conhecimento)
VALUES
  (1, 1, 'Conhecimento básico em ciência de dados'),
  (2, 1, 'Conhecimento em tecnologias web: HTML, CSS e JS'),
  (3, 1, 'Facilidade em escrever e revisar código'),
  (4, 1, 'Conhecimento em metodologia ágil'),
  (5, 1, 'Saber usar o github'),
  (6, 1, 'Conhecimento em Excel(opcional)'),
  (7, 2, 'Conhecimento básico em ciência de dados'),
  (8, 2, 'Conhecimento em tecnologias web: HTML, CSS e JS'),
  (9, 2, 'Facilidade em escrever e revisar código'),
  (10, 2, 'Conhecimento em metodologia ágil'),
  (11, 2, 'Saber usar o github'),
  (12, 2, 'Conhecimento em Excel(opcional)'),
  (13, 3, 'Conhecimento básico em ciência de dados'),
  (14, 3, 'Conhecimento em tecnologias web: HTML, CSS e JS'),
  (15, 3, 'Facilidade em escrever e revisar código'),
  (16, 3, 'Conhecimento em metodologia ágil'),
  (17, 3, 'Saber usar o github'),
  (18, 3, 'Conhecimento em Excel(opcional)'),
  (19, 4, 'Conhecimento básico em ciência de dados'),
  (20, 4, 'Conhecimento em tecnologias web: HTML, CSS e JS'),
  (21, 4, 'Facilidade em escrever e revisar código'),
  (22, 4, 'Conhecimento em metodologia ágil'),
  (23, 4, 'Saber usar o github'),
  (24, 4, 'Conhecimento em Excel(opcional)'),
  (25, 5, 'Conhecimento básico em ciência de dados'),
  (26, 5, 'Conhecimento em tecnologias web: HTML, CSS e JS'),
  (27, 5, 'Facilidade em escrever e revisar código'),
  (28, 5, 'Conhecimento em metodologia ágil'),
  (29, 5, 'Saber usar o github'),
  (30, 5, 'Conhecimento em Excel(opcional)'),
  (31, 6, 'Conhecimento básico em ciência de dados'),
  (32, 6, 'Conhecimento em tecnologias web: HTML, CSS e JS'),
  (33, 6, 'Facilidade em escrever e revisar código'),
  (34, 6, 'Conhecimento em metodologia ágil'),
  (35, 6, 'Saber usar o github'),
  (36, 6, 'Conhecimento em Excel(opcional)'),
  (37, 7, 'Conhecimento básico em ciência de dados'),
  (38, 7, 'Conhecimento em tecnologias web: HTML, CSS e JS'),
  (39, 7, 'Facilidade em escrever e revisar código'),
  (40, 7, 'Conhecimento em metodologia ágil'),
  (41, 7, 'Saber usar o github'),
  (42, 7, 'Conhecimento em Excel(opcional)')