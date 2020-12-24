

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


select * from tipos_produtos;

select * from produtos;


--Tipos Produto

INSERT INTO tipos_produtos (descricao) VALUES ('Computadores');
INSERT INTO tipos_produtos (descricao) VALUES ('Impressoras');
INSERT INTO tipos_produtos (descricao) VALUES ('Diversos');

select descricao from tipos_produtos;



-- Produtos:
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('NoteBook', '5.520,67',1);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Impressora', '1.550,47',2);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Mouse', '320,17',3);

select descricao, preco from produtos;

select P.descricao as DESCRIÇAO FROM produtos as P; 

select p.descricao as DESCR, p.descricao AS Descr FROM produtos as p;


--#Aula  81:

SELECT * FROM tipos_produtos;

SELECT * FROM produtos;

-- Update
UPDATE tipos_produtos SET descricao = 'Nobreak' WHERE id = 2;

UPDATE produtos set descricao = 'Notebook', preco = '2800' WHERE id = 2;

-- Cuidado Update (sem o WHERE)

-- O pgAdmin4 irá permitir utilizar de forma errada o UPDATE
-- UPDATE produtos SET descricao = 'Notebook', preco = '2800';
--FORMA CORRETA:
UPDATE produtos SET descricao = 'Notebook', preco = '7800' where codigo = 2;

-- Delete
SELECT * FROM TIPOS_PRODUTOS;
INSERT into tipos_produtos (codigo, DESCRICAO) VALUES (4, 'OutFit');
DELETE FROM tipos_produtos WHERE codigo = 4;

-- DELETE FROM produtos WHERE codigo = 2;

-- Cuidado Delete (sem o WHERE)

-- O pgAdmin4 não irá impedir a remocao incorreta dos elementos
-- DELETE FROM produtos;

alter table produtos rename column id to codigo;
alter table tipos_produtos rename column id to codigo;
