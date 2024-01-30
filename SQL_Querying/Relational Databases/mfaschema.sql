-- this is a schema for the finance
CREATE TABLE IF NOT EXISTS "collections"(
        "id" INTEGER NOT NULL,
        "title" TEXT NOT NULL,
        "accession_number" INTEGER NOT NULL UNIQUE,
        "acquired" NUMERIC,
        PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "artists"(
        "id" INTEGER AUTO_INCREMENT,
        "name" TEXT NOT NULL,
        PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "created"(
        "collection_id" INTEGER,
        "artist_id" INTEGER,
        FOREIGN KEY ("collection_id") REFERENCES "collections""id" ON DELETE CASCADE,
        FOREIGN KEY ("artist_id") REFERENCES  "artists""id"
);
CREATE TABLE IF NOT EXISTS "transactions"(
        "id" INTEGER NOT NULL,
        "title" TEXT NOT NULL,
        "actions" TEXT NOT NULL,
        "date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY ("id")
);

-- creating a trigger
-- CREATE TRIGGER "sell"
-- BEFORE DELETE ON "collections"
-- FOR EACH ROW
-- BEGIN
--         INSERT INTO "transactions" ("title", "actions")
--         VALUES (OLD."title", "sold");
-- END;

-- CREATING A BOUGHT TRIGGER
CREATE TRIGGER "bought"
AFTER INSERT ON "collections"
FOR EACH ROW
BEGIN
        INSERT INTO "transactions" ("title", "actions")
        VALUES (NEW."title", "bought");
END;