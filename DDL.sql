#DDL

#CREATE 

CREATE DATABASE meudb;

#Alterna Para o Banco Selecionado:
Use meudb;

#Agora estes comandos seraão executados em 'meudb':
CREATE TABLE pessoas(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO pessoas (nome) values("Dikson Santos");

drop table pessoas;

select * from pessoas;


#ALTER

#Adicionando Mais Um Campo na Tabela 'pessoas' :
ALTER TABLE pessoas ADD ano_nascimento INT;

ALTER TABLE pessoas ADD mes_nascimento INT NOT NULL;

UPDATE pessoas SET mes_nascimento = 3 WHERE id = 1;


#Deletar O Banco de dados 'meudb':
#drop database meudb;

#DELETOU A LINHA TODA:
delete from pessoas  mes_nascimento where id = 1;