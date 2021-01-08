CREATE DATABASE agregacao;

USE agregacao;

CREATE TABLE categorias(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(60) NOT NULL,
	PRIMARY KEY (id)
);
select * from produtos;

CREATE TABLE produtos(
	id INT NOT NULL AUTO_INCREMENT, 
	descricao VARCHAR(60) NOT NULL,
	preco_venda DECIMAL(8,2) NOT NULL,
	preco_custo DECIMAL(8,2) NOT NULL,
	id_categoria int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);


INSERT INTO categorias (nome) VALUES ('Material Escolar');
INSERT INTO categorias (nome) VALUES ('Acessório Informática');
INSERT INTO categorias (nome) VALUES ('Material Escritório');
INSERT INTO categorias (nome) VALUES ('Game');

INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caderno', '5.45', '2.30', 1);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caneta', '1.20', '0.45', 1);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Pendrive 32GB', '120.54', '32.55', 2);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Mouse', '17.00', '4.30', 2);

-- max
# Coluna 'preço_vendas Da Tabela 'produtos':
SELECT MAX(preco_venda) FROM produtos;

-- min
#Coluna -- Tabela:
SELECT MIN(preco_venda) FROM produtos;

-- avg -->  Média simples -> Soma todos e Divide Pela Quantidade.
#Coluna Da Tabela:
SELECT AVG(preco_venda) FROM produtos;

-- round -> Arredondou P Duas Casa Devcimais:
SELECT ROUND(AVG(preco_venda), 2) FROM produtos;

-- count
#Todos os Itens da coluna 'preço_venda' Que forem da Categoria = 1 , Apelidados de Quantidade:
SELECT COUNT(preco_venda) AS Quantidade FROM produtos WHERE id_categoria = 1;

-- group by
#Tabela 'produtos'
#Seleciona coluna 'id_categoria' Da tabela 'produtos' -> Maior preço da Coluna 'preco_venda , 
#.. agrupando pela coluna 'id_categoria' -> OU QUAL MAIOR PREÇO DE CADA UMA DAS DUAS CATEGORIAS:
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria;

-- having
#select id_categoria from produtos; -> Esta coluna contém os tipos 1 e 2 (Categorias):
#Quer saber se é a categoria 1 ou 2 que tem o Produto com MAIOR preço (Group By Id_Categoria).
#Neste Caso é um produto da categoria 2 que tem o MAIOR  preço.
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria HAVING MAX(preco_venda) > 10;
