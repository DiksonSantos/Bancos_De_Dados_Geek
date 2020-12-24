-- Criar Usuario

create user estagiario with password '346348';

create database secao_05;

CREATE TABLE empresa(
id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	funcionarios INT NOT NULL
);

select * from empresa;

-- Dar privilegios ao Usuario:

GRANT ALL ON empresa TO estagiario;

GRANT USAGE, SELECT ON SEQUENCE empresa_id_seq TO estagiario;

insert into empresa (nome, funcionarios) VALUES ('Tabajara', 1);