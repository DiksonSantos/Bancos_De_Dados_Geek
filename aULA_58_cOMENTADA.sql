CREATE DATABASE juncao;

USE juncao;

CREATE TABLE profissoes(
	id INT NOT NULL AUTO_INCREMENT,
	cargo VARCHAR(60) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE clientes(
	id INT NOT NULL AUTO_INCREMENT, 
	nome VARCHAR(60) NOT NULL,
	data_nascimento DATE NOT NULL,
	telefone VARCHAR(10) NOT NULL,
	id_profissao int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (id_profissao) REFERENCES profissoes(id)
);


INSERT INTO profissoes (cargo) VALUES ('Programador');
INSERT INTO profissoes (cargo) VALUES ('Analista de Sistemas');
INSERT INTO profissoes (cargo) VALUES ('Suporte');
INSERT INTO profissoes (cargo) VALUES ('Gerente');

INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('João Pereira', '1981-06-15', '1234-5688', 1);
INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Ricardo da Silva', '1973-10-10', '2234-5669', 2);
INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Felipe Oliveira', '1987-08-01', '4234-5640', 3);
INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Mário Pirez', '1991-02-05', '5234-5621', 1);

-- Junção de produto cartesiano
SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo as 'Profissão' 
	FROM clientes AS c, profissoes AS p
    WHERE c.id_profissao = p.id;


#Isso a baixo Trás o Mesmo Resultado do Código a Cima:
-- Inner Join
SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo
FROM clientes AS c INNER JOIN profissoes AS p
ON  c.id_profissao = p.id;

-- Left Outer Join # Compara Clientes COM Profissoes
#Como a Tab CLientes NÃO tem a Prof N4, E aqui ela é a Primeira. Ele nem Leva em Consideração o ID4 da Tabela PROFISSÕES.
SELECT * FROM clientes #-> DE ACORDO C O ID do Nome\Cliiente
LEFT OUTER JOIN profissoes #-> Ele vai relacionar com a profissão de MESMO ID da Tab Profissões.
ON clientes.id_profissao = profissoes.id;
#EX: João Pereira == ID1  , Na Tab Profissões ID1 == Programador.

SELECT * FROM profissoes; # == Tab da DIREITA
SELECT * FROM clientes; # == TAB da Esquerda    ->ESTA TAB NÃO POSSUIA A PROF N4
#______________________________
-- Right Outer Join #Compara Profissoes Com Clientes:
#Como a Tab Clientes NÃO tem a Profissão N4 , Ele tras ID4 Como NULO.
SELECT * FROM clientes
RIGHT OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id;

/*
-- Full Outer Join (Não funciona no MySQL)
SELECT * FROM clientes
FULL OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id;
*/

-- Full Outer Join (Versão MySQL)
# O BLOCO DE COD A BAIXO seria\Faz o mesmo que a Função Full Outer Join:
SELECT * FROM clientes
LEFT OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id
UNION
SELECT * FROM clientes
RIGHT OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id;


-- Cross Join
#Verifica se Cada Um Dos elementos da Lista 'A' Existe na lista 'B':
SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo
FROM clientes AS c
CROSS JOIN profissoes AS p;


#Criando Tab P/ Trabalhar com SelfJoin:
CREATE TABLE consumidor(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    contato VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    cep VARCHAR(20) NOT NULL,
    pais VARCHAR(50) NOT NULL
);


INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Alfredo Nunes', 'Maria Nunes', 'Rua da paz, 47', 'São Paulo', '123.456-87', 'Brasil');
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Ana Trujillo', 'Guilherme Souza', 'Rua Dourada, 452', 'Goiânia', '232.984-23', 'Brasil');
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Leandro Veloz', 'Pedro Siqueira', 'Rua Vazia, 72', 'São Paulo', '936.738-23', 'Brasil');

-- Self Join
SELECT a.nome AS Consumidor1, b.nome AS Consumidor2, a.cidade
FROM consumidor AS a
INNER JOIN consumidor AS b
ON a.id <> b.id # Significa -> a.id Tem que ser Diferente de b.id 
AND a.cidade = b.cidade
ORDER BY a.cidade;

select * from consumidor;