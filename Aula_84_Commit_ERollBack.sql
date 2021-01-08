

--INSERT INTO tipos_produtos (descricao) VALUES ('Ventoinha');
--INSERT INTO tipos_produtos (preço) VALUES (0);

--delete from tipos_produtos where codigo = 5;

/*Alterando Nome de Uma COLUNA: */
--ALTER TABLE tipos_produtos RENAME COLUMN peso TO  Preço;

--select * from produtos;
select * from tipos_produtos;

-- Para inserir Dados NÃO Permanentes:
begin transaction;
	insert into tipos_produtos (descricao) values ('Tipo A');
	insert into tipos_produtos (descricao) values ('Tipo B');

/*Como depois da 'Transaction' de agora não foi dado um 'Commit'
podemos fazer um 'RollBack' para Desfazer estas inserções*/

rollback;
-- Se usar o Commit Não da mais pra usar o Rollback
commit;