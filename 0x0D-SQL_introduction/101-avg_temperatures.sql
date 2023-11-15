--SELECTING THE average temp from as avg_temperature
--grouping by the city name and Ordering by avg_temp`
SELECT `city`, AVG(`value`) AS `avg_temp`
FROM `temperatures`
GROUP BY `city`
ORDER BY `avg_temp` DESC;
