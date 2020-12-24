use sec04;

select * from tipos_produto;
insert tipos_produto (descricao) values ("NoteBooks");
#DTL  -> Data Trasaction Language:
-- Transação \ Transaction:

START TRANSACTION;
	#INSERT INTO tipos_produto (descricao) VALUES ("Acessorios");
	#INSERT INTO tipos_produto (descricao) VALUES ("Equipamentos");
    INSERT INTO tipos_produto (descricao) VALUES ("Acessórios");
    INSERT INTO tipos_produto (descricao) VALUES ("Medias");

-- commit --> Confirma Alterações no Banco De Dados
-- ROLLBACK --> Caso NÃO tenha Usado o Commit Usa-se este Para Reverter Alterações feitas.

ROLLBACK;

COMMIT;

#ELE NÃO ACEITA MUDAR O INDICE (NESTE CASO 5):
UPDATE tipos_produto SET codigo = 5 where descricao = 'Acessorios';

#O CASO CONTRÁRIO FUNCIONOU:
UPDATE tipos_produto SET descricao = 'ACESSORIOS'  where  codigo = 5;

#TROCANDO DIRETAMENTE TBM FUNCIONA:
UPDATE tipos_produto set codigo = 8 where codigo = 88;

INSERT INTO tipos_produto (codigo, descricao) VALUES (5,"Putaria");
select * from tipos_produto;

INSERT INTO tipos_produto (codigo, descricao) VALUES (6,"Retro-Computaria");

