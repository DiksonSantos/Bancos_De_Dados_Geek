select * from tipos_produtos;
insert into tipos_produtos (tipo) values ('Nutrição');

#Fiz sozinho :0    
update tipos_produtos set tipo = 'Others' where id = 4;

select * from produtos;

update produtos set  preco_venda = '4.01' ,
id_fabricante = 1 where id = 2; 

update produtos SET preco_venda = '4.00', id_tipo_produto =1, id_fabricante = 1
where id = 2;

#É sempre o ID quem manda Para fazer alterações em qualquer coluna:
update produtos set produto = 'Sabão de Barra' where id = 2;
update produtos set composicao = 'Boa' where id = 2;
