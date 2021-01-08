#Aula 70  -> Excluindo Dados



select * from produtos_compra;

#Este comando Deleta Apenas UMA linha:
#por existir um registro em outra tabela contendo o valor 3. Não é possivel Deletar.
delete from produtos_compra where id = 3;  


#Primeiro é preciso deletar o registro que esta na outra tabela 
select * from receitas_medica;  # ID3 Esta na tab Receitas Medica.


delete from receitas_medica where id = 2;

#Agora SIM:
delete from produtos_compra where id = 3;  

select * from receitas_medica;  #Foi Deletado OK


delete from produtos_compra where id = 3; 

select * from produtos_compra;  #OK We didi it.