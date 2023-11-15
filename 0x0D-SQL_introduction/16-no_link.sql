--Selecting the score and name from the Database where the name is not Null
SELECT `score`, `name`
FROM `second_table`
WHERE `name` != ""
ORDER BY `score` DESC;
