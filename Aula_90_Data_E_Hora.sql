

-- Data Atual
select current_date AS Data_Atual;

--Hora Exata Atual:
select current_time as Hora_Atual;

--Data Futura (3 Dias a frente):
select current_date + INTERVAL '3 Days' as Data_Vencimento;


-- Data Passada:
select current_date - INTERVAL '3 Days' as Data_Passado;
select current_date - INTERVAL '3 Years' as Tres_Anos_Atras;


-- Em anos
SELECT DATE_PART('year', '2019-01-01'::date) - DATE_PART('year', '2011-10-02'::date) AS Em_anos;



-- Data Atual
select current_date AS Data_Atual;

--Hora Exata Atual:
select current_time as Hora_Atual;

--Data Futura (3 Dias a frente):
select current_date + INTERVAL '3 Days' as Data_Vencimento;


-- Data Passada:
select current_date - INTERVAL '3 Days' as Data_Passado;
select current_date - INTERVAL '3 Years' as Tres_Anos_Atras;


-- Em anos
SELECT DATE_PART('year', '2019-01-01'::date) - DATE_PART('year', '2011-10-02'::date) AS Em_anos;


-- Em meses
 SELECT (DATE_PART('year', '2019-01-01'::date) - DATE_PART('year', '2011-10-02'::date)) * 12 +
	(DATE_PART('month', '2019-01-01'::date) - DATE_PART('month', '2011-10-02'::date)) AS Em_meses;
	
	
-- Em semanas
-- SELECT TRUNC(DATE_PART('day', '2019-01-01'::timestamp - '2011-12-22'::timestamp)/7) AS Em_Semanas;

-- Em dias
-- SELECT DATE_PART('day', '2019-01-01'::timestamp - '2011-10-02'::timestamp) AS Em_dias;

-- Em Horas
-- SELECT DATE_PART('day', '2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp) * 24 + 
--       DATE_PART('hour', '2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp) AS Em_horas;

-- Em Minutos
-- SELECT (DATE_PART('day', '2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp) * 24 + 
--         DATE_PART('hour', '2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp)) * 60 +
--         DATE_PART('minute', '2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp) AS Em_minutos;


-- Em Segundos
-- SELECT ((DATE_PART('day', '2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp) * 24 + 
--         DATE_PART('hour', '2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp)) * 60 +
--         DATE_PART('minute', '2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp)) * 60 +
--         DATE_PART('second', '2019-01-01 11:55'::timestamp - '2019-01-01 09:55'::timestamp) AS Em_segundos;

-- Formatando data no PostgreSQL
-- SELECT TO_CHAR(CURRENT_DATE, 'dd/mm/YYYY') AS Data_Atual;

-- SELECT TO_CHAR(NOW(), 'dd/mm/YYYY HH24:MM:SS') AS Data_Hora_Atual;

-- DAYNAME PostgreSQL

-- Com inicial maiúscula
-- SELECT TO_CHAR(CURRENT_TIMESTAMP, 'Day') AS Dia_da_Semana;

-- Com short maiúscula
-- SELECT TO_CHAR(CURRENT_TIMESTAMP, 'Dy') AS Dia_da_Semana;

-- Com inicial minúscula
-- SELECT TO_CHAR(CURRENT_TIMESTAMP, 'day') AS Dia_da_Semana;

-- Com short minúscula
-- SELECT TO_CHAR(CURRENT_TIMESTAMP, 'dy') AS Dia_da_Semana;

-- Tudo maiúscula
-- SELECT TO_CHAR(CURRENT_TIMESTAMP, 'DAY') AS Dia_da_Semana;

-- Mes tudo maiúsculo
-- SELECT TO_CHAR(CURRENT_TIMESTAMP, 'MONTH') AS Mes;

-- Mes tudo minúsculo
-- SELECT TO_CHAR(CURRENT_TIMESTAMP, 'month') AS Mes;

-- Mes iniciais minúsculo
-- SELECT TO_CHAR(CURRENT_TIMESTAMP, 'mon') AS Mes;

-- Mes iniciais maiúsculo
-- SELECT TO_CHAR(CURRENT_TIMESTAMP, 'Mon') AS Mes;

-- Com este comando mudamos a Exibição das datas e hora para Pt_Br:
-- SET lc_time='pt_BR.UTF8';

--Este comando mostra se esta em Port ou Eng (A exibição da data e hora):
 SHOW lc_time;


SELECT TO_CHAR(CURRENT_TIMESTAMP, 'TMDay') AS Dia_da_Semana;

-- SELECT TO_CHAR(CURRENT_TIMESTAMP, 'TMMonth') AS Mes;

-- Extraindo partes de uma data
-- SELECT EXTRACT(MONTH FROM CURRENT_TIMESTAMP) AS Numero_do_Mes;

-- SELECT EXTRACT(DAY FROM CURRENT_TIMESTAMP) AS Dia_do_Mes;

-- SELECT EXTRACT(YEAR FROM CURRENT_TIMESTAMP) AS Ano;

-- SELECT EXTRACT(WEEK FROM CURRENT_TIMESTAMP) AS Numero_da_Semana;

-- SELECT NOW() AS Data_hora;

-- SELECT EXTRACT(HOUR FROM CURRENT_TIMESTAMP) AS hora;

-- SELECT EXTRACT(Minute FROM CURRENT_TIMESTAMP) AS Minuto;

-- SELECT EXTRACT(Second FROM CURRENT_TIMESTAMP) AS Segundo;

-- SELECT EXTRACT(millisecond FROM CURRENT_TIMESTAMP) AS MiliSegundo;

-- Convertendo de segundos para hora
SELECT TO_CHAR((71741.733159 || 'seconds')::interval, 'HH24:MM:SS') AS Tempo_Total;

-- SELECT EXTRACT(EPOCH FROM CURRENT_TIMESTAMP::time) AS Em_Segundos;