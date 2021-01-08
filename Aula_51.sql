select * from pacientes;

use sys;

use secao03;

select * from tipos_produto;

insert into tipos_produto (descricao) VALUES('Notebook');

SELECT * FROM produtos;

/*CONTEUDO DA AULA 51 (A BAIXO):*/

CREATE database sec04;

use sec04;
drop table produtos;
drop table tipos_produto;

CREATE TABLE tipos_produto(
codigo INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(30) NOT NULL,
PRIMARY KEY(codigo));

select descricao from tipos_produto;

CREATE TABLE produtos(
codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY, descricao varchar(30) NOT NULL,
preco DECIMAL(8,2)NOT NULL, codigo_tipo INT NOT NULL, 
FOREIGN KEY (codigo_tipo) REFERENCES tipos_produto(codigo)
);

insert into tipos_produto (descricao) values ('Computers');
insert into tipos_produto (descricao) values ('Printer');
insert into produtos (descricao, preco, codigo_tipo) values('Desktop', 1200, 1);
insert into produtos (descricao, preco, codigo_tipo) values('NoteBook', 4500, 1);
insert into produtos (descricao, preco, codigo_tipo) values('Impressora', 200, 2);
insert into produtos (descricao, preco, codigo_tipo) values('Impressora_Laser', 500, 2);

#DQL

SELECT * FROM tipos_produto;
SELECT * FROM produtos;
select preco from produtos;
select descricao, codigo from tipos_produto;
select codigo, descricao from tipos_produto;
select codigo, descricao, preco, codigo_tipo from produtos;

#Usando Apelidos:
# p. vai ser definido no final -> produto as p. 
select p.codigo as Código, p.descricao as Descrição, p.preco as Preços, p.codigo_tipo as Cod_Tipo from produtos as p;
