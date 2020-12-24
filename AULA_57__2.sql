CREATE DATABASE juncao;

USE juncao;

CREATE TABLE profissoes(
id INT NOT NULL auto_increment,
CARGO VARCHAR(60)NOT null,
primary key (id));

select * from profissoes;

CREATE TABLE clientes(
id INT NOT NULL auto_increment,
nome VARCHAR(60) NOT NULL,
data_nascimento DATE NOT NULL,
telefone VARCHAR(10) NOT NULL,
id_profissao int NOT NULL,
primary key (id),
foreign key (id_profissao) references profissoes(id));

select * from cliente;
drop table cliente;
#__
INSERT INTO profissoes (cargo) VALUES ('Programador');
INSERT INTO profissoes (cargo) VALUES ('Analista de Sistemas');
INSERT INTO profissoes (cargo) VALUES ('Suporte');
INSERT INTO profissoes (cargo) VALUES ('Gerente');

INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('João Pereira', '1981-06-15', '1234-5688', 1);
INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Ricardo da Silva', '1973-10-10', '2234-5669', 2);
INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Felipe Oliveira', '1987-08-01', '4234-5640', 3);
INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Mário Pirez', '1991-02-05', '5234-5621', 1);

-- Junção de produto cartesiano
#Principal Meio de Consulta (Mais importante que as proximas a serem Vistas Neste Código)
SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo AS 'profissão'
	FROM clientes AS c, profissoes AS p
    WHERE c.id_profissao = p.id;


-- Inner Join
#Resultado é o Mesmo do Bloco de codigo anterior\A_Cima.
SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo 
FROM clientes AS c INNER JOIN profissoes AS p
ON  c.id_profissao = p.id;

-- Left Outer Join
#Pegou a profissão de cada Cliente
SELECT * FROM clientes #Tabela Esquerda
LEFT OUTER JOIN profissoes #Tabela da Direita
ON clientes.id_profissao = profissoes.id;

-- Right Outer Join
""" 
No Caso aqui como Existem Mais tipos de profissão, E Certos Clientes NÃO tem estas profissões
Onde era pra aparecer o nome dos Clientes Fica NULO.
"""
SELECT * FROM clientes #Tab Esq
RIGHT OUTER JOIN profissoes #Tab DIR
ON clientes.id_profissao = profissoes.id;
#A Tabela (Right Outh..) É A referencia Primária.



"""
-- Full Outer Join (Não funciona no MySQL)
SELECT * FROM clientes
FULL OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id;
"""

-- Full Outer Join (Versão MySQL)
#Obteve o mesmo Resultado de RIGHT JOIN:
SELECT * FROM clientes
LEFT OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id
UNION
SELECT * FROM clientes
RIGHT OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id;


-- Cross Join
"""Basicamente procura TODOS  os clientes e TODAS as profissões nas DUAS tabelas
"""
#PEGA ESTAS INFORMAÇÕES (DOS CLIENTES):
SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo

#CONFIRMA O APELIDO DA TABELA clientes:
FROM clientes AS c

#TRAS AS PROFISSOES DE TODOS OS CLIENTES
CROSS JOIN profissoes AS p;


#___
CREATE TABLE consumidor(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
contato VARCHAR(50) NOT NULL,
endereco VARCHAR(100) NOT NULL,
cidade varchar(15) not null,
cep VARCHAR(20) NOT NULL,
pais VARCHAR(50) NOT NULL);

select * from consumidor;
drop table consumidor;

INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Alfredo Nunes', 'Maria Nunes', 'Rua da paz, 47', 'São Paulo', '123.456-87', 'Brasil');
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Ana Trujillo', 'Guilherme Souza', 'Rua Dourada, 452', 'Goiânia', '232.984-23', 'Brasil');
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Leandro Veloz', 'Pedro Siqueira', 'Rua Vazia, 72', 'São Paulo', '936.738-23', 'Brasil');



-- Self Join
SELECT a.nome AS Consumidor1, b.nome AS Consumidor2, a.cidade
FROM consumidor AS a
INNER JOIN consumidor AS b
ON a.id <> b.id # Significa que queremos on a.id que seja diferente de b.id
AND a.cidade = b.cidade
ORDER BY a.cidade;
