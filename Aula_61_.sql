#AULA 67 Sub Consultas:

CREATE DATABASE subconsulta;

USE subconsulta;

CREATE TABLE escritorios(
	id INT NOT NULL AUTO_INCREMENT,
	pais VARCHAR(30) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE funcionarios(
	id INT NOT NULL AUTO_INCREMENT, 
	nome VARCHAR(20) NOT NULL,
	sobrenome VARCHAR(20) NOT NULL,
	id_escritorio int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (id_escritorio) REFERENCES escritorios(id)
);

CREATE TABLE pagamentos(
	id INT NOT NULL AUTO_INCREMENT,
	id_funcionario INT NOT NULL,
	salario DECIMAL(8,2) NOT NULL,
	data DATE NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id)
);


INSERT INTO escritorios (pais) VALUES ('Brasil');
INSERT INTO escritorios (pais) VALUES ('Estados Unidos');
INSERT INTO escritorios (pais) VALUES ('Alemanha');
INSERT INTO escritorios (pais) VALUES ('França');


INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Pedro', 'Souza', 1);
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Sandra', 'Rubin', 2);
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Mikail', 'Schumer', 3);
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Olivier', 'Gloçan', 4);

INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (1, '5347.55', '2019-03-17');
INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (2, '9458.46', '2019-03-17');
INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (3, '4669.67', '2019-03-17');
INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (4, '2770.32', '2019-03-17');


-- Exemplo 1
#Nome & Sobrenome de Funcionarios que tenham o ID == 1 . Pois o ID 1 é o ID do Esritorio no Brasil:
SELECT nome, sobrenome FROM funcionarios WHERE id_escritorio IN (SELECT id FROM escritorios WHERE pais = 'Brasil');

#Mostra Localização dos Escritorios (Páis em que se encontra):
select * from escritorios;

-- Sem subconsulta -> Mesma coisa do Exemplo 1. Porém Sem Sub Consulta:
SELECT nome, sobrenome FROM funcionarios, escritorios AS e WHERE id_escritorio = e.id AND e.pais = 'Brasil'; 
										#Apelidando Escritorio de 'e'       
-- Exemplo 2

SELECT f.nome, f.sobrenome, e.pais, p.salario 
	FROM pagamentos AS p, funcionarios AS f, escritorios AS e
	WHERE f.id_escritorio = e.id 
		AND f.id = p.id_funcionario
		AND salario = (SELECT MAX(salario) FROM pagamentos);

-- Exemplo 3

SELECT f.nome, f.sobrenome, e.pais, p.salario 
	FROM pagamentos AS p, funcionarios AS f, escritorios AS e
	WHERE f.id_escritorio = e.id 
		AND f.id = p.id_funcionario
		AND salario < (SELECT AVG(salario) FROM pagamentos);
