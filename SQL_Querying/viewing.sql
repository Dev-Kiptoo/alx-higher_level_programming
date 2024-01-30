CREATE view "longlist" AS
SELECT "name", "title" FROM "authors" 
JOIN "authored" ON "authors"."id" = "authored"."author_id"
JOIN "books" ON "books"."id" = "authored"."book_id";

CREATE VIEW "average_rating" AS
SELECT "book_id", "title", ROUND(AVG("rating")) AS "rating", "year" FROM "ratings"
JOIN "books" ON "ratings"."book_id" = "books"."id" GROUP BY "book_id";

CREATE TEMPORARY VIEW "average_rating" AS
SELECT "year", ROUND(AVG("rating")) AS "rating" FROM "ratings"
JOIN "books" ON "ratings"."book_id" = "books"."id" GROUP BY "year";

-- COMMON TABLE EXPRESSIONS
WITH "view_rating" AS (
        SELECT "year", ROUND(AVG("rating")) AS "rating" FROM "ratings"
        JOIN "books" ON "ratings"."book_id" = "books"."id" GROUP BY "year"
)
SELECT "year", ROUND(AVG("rating")) FROM "view_rating" GROUP BY "year";

-- USING THE VIEWS FOR THE PARTIONING (MAKING BIG DATA TO BE SMALL)
CREATE VIEW "2022" AS
SELECT "id", "title" FROM "books"
WHERE "year" = 2022;
-- CREATE VIEW "2021" AS SELECT 'id', 'title' FROM 'books' WHERE 'year' = 2021;