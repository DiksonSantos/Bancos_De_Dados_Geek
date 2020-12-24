 #DML -> AULA 52:
 
 # INSERT
 
 INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('NoteBook',
 '1200' , 1);
 
 select * from produtos;
 
 #Insert -> Como o primeiro campo NULL é Auto Incremento, ele vai gerenciar Automaticamente.
 INSERT INTO produtos  VALUES (NULL,'MAC_Book','1200' , 1);
 
 #Vemos que s'existem produtos do tipo 1 & 2:
 select * from tipos_produto;
 
 #Agora Existe o Tipo 3 na Tabela Relacionada (Apple):
 #Tudo o que se insere nesta Tabela É criado um novo Indice\Tipo de Produto:
 INSERT INTO tipos_produto (descricao) VALUES ('Apple');
 
 #Usando o UPDATE:
 update produtos set codigo_tipo = 3 where codigo = 6;
 #MAC_Book agora (com o codigo\indice inicial = 6 ) É do tipo 3, e Não mais 1 como Éra antes:
 select * from produtos;
 
 #ALTERANDO PREÇO DE UM PRODUTO DA TABELA;
 #NUNCA SE ESQUEÇA DE FILTRAR OS DADOS (COM O WHERE POR EXEMPLO).
 update produtos set descricao = 'Impressora' , preco = '2600' where codigo = 4;
 
 DELETE FROM produtos WHERE codigo = 5;
 
 #Substitui O produto\Linha com Cod 5 Que eu havia deletado:
 INSERT INTO produtos  VALUES (5,'PC','2200' , 1);