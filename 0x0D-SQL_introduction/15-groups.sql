--SELECTING the score and counting as Number from the second table and grouping by the number
SELECT score, COUNT(*) AS number FROM second_table GROUP BY score ORDER BY number DESC, score DESC;
