/*Secao03*/


create table tipos_produtos(
	id SERIAL PRIMARY KEY,
	descricao CHARACTER VARYING(50) NOT NULL
	);
	

CREATE TABLE produtos(
id SERIAL PRIMARY KEY,
descricao character VARYING(50) NOT NULL,
	preco MONEY NOT NULL,
	id_TIPO_produto INT REFERENCES tipos_produtos(id)
	NOT NULL

);

drop table tipos_produto;

CREATE TABLE pacientes ( 
id SERIAL PRIMARY KEY,
nome CHARACTER VARYING(50) NOT NULL,
	endereco CHARACTER VARYING(50) NOT NULL,
	bairro CHARACTER VARYING(50) NOT NULL,
	cidade VARCHAR(25) NOT NULL,
	estado CHAR(2) NOT NULL,
	cep VARCHAR(9) NOT NULL,
	data_nascimento DATE NOT NULL
);


CREATE TABLE professores(
id SERIAL PRIMARY KEY,
telefone INT not null ,
	nome varchar(50) not null
);

CREATE TABLE turmas(
ID serial primary key,
	capacidade int not null,
	id_professor INT REFERENCES professores(id) NOT NULL
);
