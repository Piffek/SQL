//--ZAD4
SELECT SUM(FAKTURY.BRUTTO), (SUM(FAKTURY.BRUTTO)-(SUM(FAKTURY.BRUTTO)*CLIENTS_GROUP.rabat/100)) as after_rabat, table1.name, MIASTA.SIZE, CLIENTS_GROUP.symbol, CLIENTS_GROUP.rabat as rabat
FROM table1

INNER JOIN FAKTURY
ON FAKTURY.user_id = table1.id

INNER JOIN MIASTA
ON  MIASTA.id = table1.city_id

INNER JOIN CLIENTS_GROUP
ON CLIENTS_GROUP.id = table1.group_id

GROUP BY CLIENTS_GROUP.symbol

ORDER BY
  CASE 
    WHEN MIASTA.SIZE = '>500' THEN 2
    WHEN MIASTA.SIZE = '<234' THEN 1
    WHEN MIASTA.SIZE = '>1000' THEN 3
  END
DESC




//--ZAD5

SELECT count(table1.id) as user_id, FAKTURY.MOUTH, sum(FAKTURY.BRUTTO) as brutto
FROM table1
INNER JOIN FAKTURY
ON FAKTURY.user_id = table1.id
WHERE brutto > '25000'



//--ZAD8
SELECT MIASTA.city, SUM(FAKTURY.BRUTTO) as brutto
FROM MIASTA
INNER JOIN table1
ON table1.city_id = MIASTA.id
INNER JOIN FAKTURY
ON FAKTURY.user_id = table1.id
GROUP BY table1.id
ORDER BY brutto DESC
LIMIT 1