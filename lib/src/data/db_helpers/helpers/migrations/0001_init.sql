--- TABLE role
CREATE TABLE IF NOT EXISTS role(
    id VARCHAR(36) NOT NULL,
    name VARCHAR(36) NOT NULL
);
--- TABLE auth
CREATE TABLE IF NOT EXISTS auth(
    id VARCHAR(36) NOT NULL,
    email VARCHAR(200) NOT NULL,
    passwd VARCHAR(200) NOT NULL,
    isautenticated BOOLEAN NOT NULL,
    id_role VARCHAR(36) NOT NULL
);

CREATE TABLE IF NOT EXISTS usuario(
    id VARCHAR(36) NOT NULL,
    id_auth VARCHAR(36) NOT NULL,
    url_image TEXT,
    name VARCHAR(50) NOT NULL,
    turma VARCHAR(50),
    descricao VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS vaga(
    id INTEGER NOT NULL,
    id_orientador VARCHAR(36) NOT NULL,
    name VARCHAR(128) NOT NULL,
    quant_horas INT NOT NULL,
    vagas_disp INT NOT NULL,
    proposta TEXT NOT NULL,
    o_que_irei_fazer TEXT NOT NULL,
    avaliacao_user DOUBLE,
    bolsa_disp DOUBLE
);

CREATE TABLE IF NOT EXISTS inscreve_em(
    id INTEGER NOT NULL,
    id_colaborador VARCHAR(36) NOT NULL,
    status_colab VARCHAR(64) NOT NULL
);


CREATE TABLE IF NOT EXISTS categoria(id INTEGER NOT NULL, name VARCHAR(64) NOT NULL);


CREATE TABLE IF NOT EXISTS categorias_por_vaga(
    id_vaga INTEGER NOT NULL,
    id_categoria INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS conhecimentos_necessarios(
    id INTEGER NOT NULL,
    id_vaga INTEGER NOT NULL,
    conhecimento VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS conhecimentos_ao_final(
    id INTEGER NOT NULL,
    id_vaga INTEGER NOT NULL,
    conhecimento VARCHAR(200) NOT NULL
);