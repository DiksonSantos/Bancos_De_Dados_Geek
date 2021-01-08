CREATE DATABASE secao05;
use secao05;


CREATE TABLE tipos_produto(
codigo INT NOT NULL auto_increment,
DESCRICAO varchar(30) NOT NULL,
PRIMARY KEY (codigo)
);

CREATE TABLE produtos(
codigo INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(30) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
codigo_tipo int not null,
PRIMARY KEY (codigo),
foreign key (codigo_tipo) REFERENCES tipos_produto(codigo)
);


select * from tipos_produto;
select * from produtos;

insert into tipos_produto (descricao) values ('Computers');
insert into tipos_produto (descricao) values ('Printer');
insert into produtos (descricao, preco, codigo_tipo) values('Desktop', 1200, 1);
insert into produtos (descricao, preco, codigo_tipo) values('NoteBook', 4500, 1);
insert into produtos (descricao, preco, codigo_tipo) values('Impressora', 200, 2);
insert into produtos (descricao, preco, codigo_tipo) values('Impressora_Laser', 500, 2);

select * from produtos WHERE codigo_tipo =2;
select * from produtos WHERE codigo_tipo =2 AND preco > 300;