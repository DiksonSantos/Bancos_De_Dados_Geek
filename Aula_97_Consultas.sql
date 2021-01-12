-- Atores
INSERT INTO atores (nome) VALUES ('Bred Pitt');
INSERT INTO atores (nome) VALUES ('Angelina Jolie');
INSERT INTO atores (nome) VALUES ('Felicity Jones');

-- Generos
INSERT INTO generos (genero) VALUES ('Comedia');
INSERT INTO generos (genero) VALUES ('Terror');
INSERT INTO generos (genero) VALUES ('Suspense');

-- Filmes
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Tomb Raider', 3, 8.99);
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Star Wars', 2, 12.99);
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Loucademia de Policia', 1, 5.99);

-- Clientes
INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Pedro', 'Silva', '2344-3344', 'Rua 1, 34');
INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Paula', 'Diniz', '4544-3345', 'Rua 2, 35');
INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Silvana', 'Souza', '6744-3346', 'Rua 3, 36');

-- Atores Filme
INSERT INTO atores_filme (id_filme, id_ator, personagem) VALUES (1, 2, 'Lara Croft');
INSERT INTO atores_filme (id_filme, id_ator, personagem) VALUES (2, 3, 'Rebelde');
INSERT INTO atores_filme (id_filme, id_ator, personagem) VALUES (3, 1, 'Detetive Ruy');

-- Dvds
INSERT INTO dvds (id_filme, quantidade) VALUES (1, 1);
INSERT INTO dvds (id_filme, quantidade) VALUES (2, 1);
INSERT INTO dvds (id_filme, quantidade) VALUES (3, 1);

-- Emprestimos
INSERT INTO emprestimos (data, id_cliente) VALUES ('2019-03-01', 1);
INSERT INTO emprestimos (data, id_cliente) VALUES ('2019-03-15', 2);
INSERT INTO emprestimos (data, id_cliente) VALUES ('2019-06-05', 1);

-- Filmes Emprestimo
INSERT INTO filmes_emprestimo (id_emprestimo, id_dvd) VALUES (1, 1);
INSERT INTO filmes_emprestimo (id_emprestimo, id_dvd) VALUES (1, 2);
INSERT INTO filmes_emprestimo (id_emprestimo, id_dvd) VALUES (2, 3);

-- Devolucoes
INSERT INTO devolucoes (id_emprestimo, data) VALUES (1, '2019-03-08');
INSERT INTO devolucoes (id_emprestimo, data) VALUES (1, '2019-06-08');
INSERT INTO devolucoes (id_emprestimo, data) VALUES (2, '2019-03-08');

-- Filmes Devolucao
INSERT INTO filmes_devolucao (id_devolucao, id_filme_imprestimo) VALUES (1, 1);
INSERT INTO filmes_devolucao (id_devolucao, id_filme_imprestimo) VALUES (1, 2);
INSERT INTO filmes_devolucao (id_devolucao, id_filme_imprestimo) VALUES (2, 3);


-- Select Simple

-- Atores
SELECT * FROM atores;

-- Clientes
SELECT * FROM clientes;

-- Filmes
SELECT * FROM filmes;

-- Generos
SELECT * FROM generos;

-- Filmes e Generos 
SELECT f.id, f.titulo, g.genero, f.valor FROM filmes AS f, generos AS g WHERE f.id_genero = g.id;

-- Atores Filmes
SELECT * FROM atores_filme;

-- Tabelas:
SELECT * FROM atores_filme;
SELECT * FROM atores;
SELECT * FROM filmes;


-- Atores Filmes
SELECT af.id, f.titulo, a.nome, af.personagem 
FROM filmes AS f, atores AS a, atores_filme AS af 
WHERE af.id_filme = f.id AND af.id_ator = a.id;

-- Utilizando Filtros
SELECT * FROM generos WHERE id = 2;

SELECT * FROM generos WHERE genero = 'Terror';

--Eu quem fiz isso:
select filmes.valor from filmes where titulo = 'Star Wars';
select filmes.titulo from filmes where id_genero = 3;


-- Funcoes Agregadas
-- SELECT SUM(valor) AS Soma FROM filmes;

-- SELECT MAX(valor) FROM filmes;

-- Subconsulta
SELECT * FROM filmes WHERE valor IN (SELECT MAX(valor) FROM filmes);

