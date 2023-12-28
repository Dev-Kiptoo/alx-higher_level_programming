CREATE TABLE IF NOT EXISTS  "riders" (
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
CREATE TABLE IF NOT EXISTS "visits" (
        "rider_id" INTEGER,
        "station_id" INTEGER,
        FOREIGN KEY ("rider_id") REFERENCES "riders"("id"),
        FOREIGN KEY ("station_id") REFERENCES "stations"("id")
);