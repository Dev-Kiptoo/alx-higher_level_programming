-- -- Creating an air bnb database
-- CREATE TABLE IF NOT EXISTS "users" (
--         "id" INTEGER,
--         "name" TEXT,
--         "amount" INTEGER DEFAULT 0,
--         PRIMARY KEY("id")
-- );

-- CREATE TABLE IF NOT EXISTS "room" (
--         "id" INTEGER,
--         "aprtment_name" TEXT,
--         PRIMARY KEY ("id")
-- );

-- CREATE TABLE IF NOT EXISTS "services" (
--         "id" INTEGER,
--         "type" TEXT CHECK ("type" = "ONLINE" OR "type" = "OTC"),
--         "room_id" INTEGER,
--         "location_id" INTEGER,
--         "user_id" INTEGER,
--         FOREIGN KEY ("location_id") REFERENCES "locations"("id"),
--         FOREIGN KEY ("user_id")  REFERENCES "users"("id"),
--         FOREIGN KEY ("room_id") REFERENCES "room"("id")
-- );
-- CREATE TABLE IF NOT EXISTS "locations" (
--         "id" INTEGER,
--         "name" TEXT,
--         PRIMARY KEY ("id")
-- );

CREATE TRIGGER IF NOT EXISTS "insert_into"
AFTER INSERT ON "users"
FOR EACH ROW
BEGIN
        INSERT INTO "services" ("type", "room_id", "location_id", "user_id")
        VALUES ("ONLINE", "0", "0", NEW."id");
END;

CREATE TRIGGER IF NOT EXISTS "update_services"
AFTER INSERT ON "room"
FOR EACH ROW
BEGIN
        UPDATE "services"
        SET "room_id" = NEW."id"
        WHERE "room_id" = 0;
END;

CREATE TRIGGER IF NOT EXISTS "update_services1"
AFTER INSERT ON "locations"
FOR EACH ROW
BEGIN
        UPDATE "services"
        SET "location_id" = NEW."id"
        WHERE "location_id" = 0;
END;