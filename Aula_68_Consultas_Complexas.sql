# Consulta complexa

-- compras

-- Passo 1 - Trazer as compras
SELECT * FROM compras;

-- Passo 2 - Colocar o nome dos clientes nas compras
#Dados as ABreviaturas\Apelidos:
#Definindo as Informações que irão para cada Coluna c seus respectivos nomes:
SELECT com.id AS 'ID Compra', cli.nome AS 'Cliente', com.data AS 'Data Compra' 
#Confirma-se Os Apelidos\Abreviaturas:
	FROM compras AS com, clientes AS cli WHERE com.id_cliente = cli.id;

SELECT com.id as 'Identificação :)', cli.nome as 'Names'
FROM compras as com, clientes as cli
where com.id > 2;

    
-- Passo 3 - Produtos Compra
SELECT * FROM produtos_compra;



-- Passo 4 - 
SELECT  com.id AS 'Compra', #Onde 'Compra' é o Nome Da Coluna
    cli.nome AS 'Cliente', #Estando entre Aspas é Para Definir Nome Da Coluna
    SUM(prod.preco_venda * proc.quantidade) AS 'Total',
    #Esta Linha de baixo eu quem fiz, to ficando Foda :) 
    round(SUM((prod.preco_venda * proc.quantidade)/100*15),2) AS 'Lucro',
    com.data AS 'Data da Compra'
    # o 'AS' define os Apelidos:
    FROM produtos_compra AS proc, produtos AS prod, compras AS com, clientes AS cli
    #Com os Apelidos já definidos, usamos os Filtro WHERE:
    WHERE com.id = proc.id_compra AND prod.id = proc.id_produto AND cli.id = com.id_cliente
    GROUP BY com.id; #Agrupados por 'com.id' que foi nomeado como 'Compra' (Na primeira Linha).