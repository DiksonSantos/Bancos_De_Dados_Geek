#DATA ATUAL 
SELECT CURDATE() AS "DATA DE HOJE ";


#HORA ATUAL:
SELECT CURTIME() AS "HORA ATUAL";

#Outra Opção  -> Traz a DATA + HORA | Tudo Junto:
select now() as 'Data Atual';

select date_format(now(), '%d/%m/%Y %H:%i:%s') as 'Data Atual';

-- CURRENT TIMESTAMP -> Igualzinho o NOW():
select date_format(CURRENT_TIMESTAMP(), '%d/%m/%Y %H:%i:%s') as 'Data Atual';

-- DATE__ADD(data, interval)
# Gera uma data para daqui 3 dias:
select date_add(curdate(), interval 3 Day) as 'Data de Vencimento';

# Agora Para Subtrair 3 dias da Data Atual:
select date_sub(curdate(), interval 3 Day) as 'Data de Vencimento';

-- DATEDIFF ->Calcula Uma Diferença entre uma data e outra.
SELECT datediff(CURDATE(), DATE_SUB(curdate(), INTERVAL 10 DAY)) AS 'DIAS EM ATRASO';
select datediff('2020-06-06' , '2005-05-20');

# 1.106 Dias de Diferença:
SELECT DATEDIFF("2020-06-25", "2017-06-15");



-- DATEFORMAT:
SELECT DATE_FORMAT(CURDATE(), '%d/%m/%Y') as 'Data Atual';


-- Day Name
select DAYNAME(CURDATE()) AS 'Dia Da Semana';


-- Dia corrente do Mês:
select dayofmonth(curdate()) as 'Dia de Hoje No mês';

-- Dia da Semana:  (Hoje Quinta feira É o 5 dia da semana (tendo Domingo Como Dia 1)):
select dayofweek(curdate()) as 'Dia Da Semana';

-- Dia do Ano (De 365 Dias) -->  Dia 03-09-2020 == Dia 247 do Ano de 2020 Ta Acabando o Ano Já:
select dayofyear(curdate()) as 'Dia Do Ano';

-- FROM DAYS:  -> A relação entre a conversão e a data Não é Intendivel . (Mixxxterio):
SELECT FROM_DAYS(700000) AS 'DATA EQUIVALENTE'; 

-- Time  -> Pega Só o que quiser da Data & Hora:
select time(current_time()) as 'Hora';
#Variação;   -> Converteu 2.000 Segundos Para 33:20 Minutos:
select sec_to_time(2000) as 'Tempo Toral';


-- Processo inverso ao anterior:
select time_to_sec(now()) as 'Agora';
select time_to_sec('00:32:44') as 'Total em SEGUNDOS';

# 2020-08  & 2018-01   Diferença entre estas Duas Datas:
select period_diff(202008, 201801) as 'Meses Comigo';

#Diferença Entre HORAS:
select timediff('20:51:55', '12:35:34') AS 'Diferença Horas';



#Saber qual é o Trimestre Do Ano:
select quarter(now()) as 'trimestre';


#Semana Do Ano  -> Primeira Semana de Setembro de 2020 == 35 Semana deste Ano:
select week(now()) as 'SEmana';


