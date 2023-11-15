--Selecting the score and the name form the second data where the score >= 10
SELECT `score`, `name`
FROM `second_table`
WHERE `score` >= 10
ORDER BY `score` DESC;
