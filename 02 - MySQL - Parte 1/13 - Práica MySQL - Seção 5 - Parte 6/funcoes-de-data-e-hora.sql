-- CURDATE
SELECT CURDATE() AS 'Data Atual';

-- CURTIME
SELECT CURTIME() AS 'Hora Atual';

-- CURENT_TIME
SELECT CURRENT_TIME() AS 'Hora Atual';

-- DATE_ADD(data, interval)
SELECT DATE_ADD(CURDATE(), INTERVAL 3 DAY) AS 'Data de vencimento';

-- DATE_SUB(data, intervalo)
SELECT DATE_SUB(CURDATE(), INTERVAL 10 DAY) AS 'Data de matricula';

-- DATEDIFF(expressao1, expressao2)
SELECT DATEDIFF(CURDATE(), DATE_SUB(CURDATE(), INTERVAL 10 DAY)) AS 'Dias em Atraso';

-- DATE_FORMAT
SELECT DATE_FORMAT(CURDATE(), '%D/%M/%Y') AS 'Data atual';

-- DAYNAME
SELECT DAYNAME(CURDATE()) AS 'Dia da Semana';

-- DAYOFMONTH
SELECT DAYOFMONTH(CURDATE()) AS 'Dia do Mês';

-- DAYOFWEEK
SELECT DAYOFWEEK(CURDATE()) AS 'Dia da semana';

-- DAYOFYEAR
SELECT DAYOFYEAR(CURDATE()) AS 'Dia do ano';

-- FROM_DAYS
SELECT FROM_DAYS(780500) AS 'Data Real';

-- NOW
SELECT NOW() AS 'Data/Hora Atual';

SELECT DATE_FORMAT(NOW(), '%d/%m/%Y %H:%m:%s') AS 'Data/Hora Atual';

SELECT DATE_FORMAT(CURRENT_TIMESTAMP(), '%d/%m/%Y %H:%m:%s') AS 'Data/Hora Atual';

SELECT TIME(CURRENT_TIMESTAMP()) AS 'Hora';

-- SEC_TO_TIME
SELECT SEC_TO_TIME(2000) AS 'Tempo total';

-- TIME_TO_SEC
SELECT TIME_TO_SEC('00:32:44') AS 'Em segundos';

-- HOUR, MINUTE, SECOND
SELECT HOUR('12:30:34') AS Hora, MINUTE('12:30:34') AS Minutos, SECOND('12:30:34') AS SEGUNDOS;

-- PERIOD_DIFF    
SELECT period_diff(201912, 201903) AS 'Meses Restantes';

-- QUARTER
SELECT QUARTER('2019-03-17') AS 'Trimeste do ano';

-- WEEK
SELECT WEEK('2019-03-17') AS 'Semana do ano';

-- WEEKDAY
SELECT WEEKDAY('2019-03-17') AS 'Dia da semana';

-- YEAR
SELECT YEAR('2019-03-17') AS 'Ano';

-- MONTH
SELECT MONTH('2019-03-17') AS 'Mês';

-- DAY
SELECT DAY('2019-03-17') AS 'Dia';