use secao05;

SELECT * FROM tipos_produto;
SELECT * FROM produtos;

#Dando Apelidos às Colunas:
SELECT p.codigo AS 'Cod', p.descricao AS 'Tipo', p.preco AS 'Preço', tp.descricao AS 'Equipamento' 
	#Confirmando quem foi quem na linha de cima
    FROM produtos AS p, tipos_produto AS tp
    #Condição de selecionar em Codigo_Tipo Quem For Igual á Coluna
    #..Codigo da Tabela Tipos_Produtos:
    where p.codigo_tipo = tp.codigo;
