CREATE TABLE escritorios(
id SERIAL PRIMARY KEY,
pais VARCHAR(30) NOT NULL
);

select * from escritorios;

CREATE TABLE funcionarios(
id SERIAL PRIMARY KEY, 
nome VARCHAR(20) NOT NULL,
sobrenome VARCHAR(20) NOT NULL,
id_escritorio INT REFERENCES escritorios(id) NOT NULL
);

select * from funcionarios;

CREATE TABLE pagamentos(
id SERIAL PRIMARY KEY,
id_funcionario INT REFERENCES funcionarios(id) NOT NULL,
salario DECIMAL(8,2) NOT NULL,
data DATE NOT NULL
);

select * from pagamentos;

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