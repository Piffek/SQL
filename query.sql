SELECT table1.name, table2.phone, shoop.name
FROM table2
INNER JOIN table1 ON table1.id = table2.user_id
INNER JOIN shoop ON shoop.id = table2.shoop_id
WHERE table1.city = "Dzierżoniów"


/*if relation to user not exists in table2*/

SELECT table1.id
FROM table1
WHERE NOT EXISTS  (
  SELECT *
  FROM table2 
  WHERE table2.user_id = table1.id
)