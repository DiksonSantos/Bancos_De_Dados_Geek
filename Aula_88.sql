CREATE DATABASE agregacao;

CREATE TABLE categorias(
id SERIAL PRIMARY KEY,
nome VARCHAR(60) NOT NULL
);

CREATE TABLE produtos(
id SERIAL PRIMARY KEY, 
descricao VARCHAR(60) NOT NULL,
preco_venda DECIMAL(8,2) NOT NULL,
preco_custo MONEY NOT NULL,
id_categoria INT REFERENCES categorias(id) NOT NULL
);

-- ->Inserir na tab Categ Col nome Val 'Mat Esc'
INSERT INTO categorias (nome) VALUES ('Material Escolar');
INSERT INTO categorias (nome) VALUES ('Acessório Informática');
INSERT INTO categorias (nome) VALUES ('Material Escritório');
INSERT INTO categorias (nome) VALUES ('Game');

select * from categorias;

INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caderno', 5.45, 2.30, 1);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caneta', 1.20, 0.45, 1);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Pendrive 32GB', 120.54, 32.55, 2);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Mouse', 17.00, 4.30, 2);

select * from produtos;

--max
--Coluna 'preco_vendas' TAB 'produtos'
SELECT MAX(preco_venda) FROM produtos;

min
SELECT MIN(preco_venda) FROM produtos;

SELECT AVG(preco_custo) FROM produtos; -- não funciona
SELECT AVG(preco_venda) FROM produtos; -- precisão grande

--  Maximo de 8x9 == 8 Digitos antes da Virgula e Dois após D a virgula:
SELECT TO_CHAR(AVG(preco_venda),'99999999D99') AS Media FROM produtos; -- Formatado para string

-- Aqui ele somente arredonda.  numeric -> converte para numerico, Duas casa decimais.
SELECT ROUND(AVG(preco_venda)::numeric,2) FROM produtos; -- Formatado para numerico

--*

--
-- AVG == Média
SELECT ROUND(AVG(preco_custo::numeric), 2) FROM produtos; -- Calculando a média de valor Money

select * from produtos;

SELECT ROUND(AVG(preco_venda), 4) FROM produtos;

count
SELECT COUNT(preco_venda) AS Quantidade FROM produtos WHERE id_categoria = 1;

-- MEDIA (EU QUEM FIZ :)    ;
SELECT (sum(preco_venda) / COUNT(preco_venda)) AS Media_ FROM produtos;

-- group by    MOSTRA O MAIOR PREÇO DE CADA CATEGORIA (aqui temos duas categorias 1 & 2):
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria;

-- having
--OU: De acordo com a coluna ID_CATEGORIA , Quem teve maior preço de venda Agrupar por categoria que tenha preço de venda Maior que 10:
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria HAVING MAX(preco_venda) > 10;

select * from produtos;
