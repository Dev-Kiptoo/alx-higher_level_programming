-- Using sets in working
SELECT "author" AS profession, name FROM authors
	UNION 
	SELECT "translator" AS profession, name FROM  translators;

-- using Intersect in the sets
SELECT name FROM  authors 
	INTERSECT
		SELECT name FROM translators;

-- Using EXCEPT
SELECT "author" AS profession, name FROM  authors 
	EXCEPT
		SELECT "translator" AS profession, name FROM translators;
		
SELECT "book_id" FROM "translated" WHERE "translator_id" = (
	SELECT "id" FROM "translators" WHERE "name" = "Sophie Hughes")
		INTERSECT
		SELECT "book_id" FROM "translated" WHERE "translator_id" = (
			SELECT "id" FROM "translators" WHERE "name" = "Margaret Jull Costa");
			
-- Using Group_by
SELECT book_id, ROUND(AVG(rating), 2)AS "average_rating" FROM ratings
	GROUP BY book_id HAVING average_rating > 4;