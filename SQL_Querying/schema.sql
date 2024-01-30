CREATE TABLE IF NOT EXISTS  "cards" (
        "id" INTEGER,
        "name" TEXT NOT NULL,
        PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "stations" (
        "id" INTEGER,
        "station" TEXT NOT NULL UNIQUE,
        "line" TEXT NOT NULL,
        PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "swipes" (
        "id" INTEGER,
        "card_id" INTEGER,
        "station_id" INTEGER,
        "type" TEXT NOT NULL CHECK("type" IN ("enter","exit","deposit")),
        "datetime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
        "Amount" NUMERIC NOT NULL CHECK ("Amount" != 0),
        PRIMARY KEY ("id"),
        FOREIGN KEY ("card_id") REFERENCES "cards"("id"),
        FOREIGN KEY ("station_id") REFERENCES "stations"("id")
);