/*
  Warnings:

  - You are about to alter the column `pressure` on the `WeatherReport` table. The data in that column could be lost. The data in that column will be cast from `Float` to `Int`.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_WeatherReport" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "location" TEXT NOT NULL,
    "windDirection" TEXT NOT NULL,
    "windStrength" TEXT NOT NULL,
    "weather" TEXT NOT NULL,
    "pressure" INTEGER NOT NULL,
    "temperature" REAL NOT NULL
);
INSERT INTO "new_WeatherReport" ("id", "location", "pressure", "temperature", "weather", "windDirection", "windStrength") SELECT "id", "location", "pressure", "temperature", "weather", "windDirection", "windStrength" FROM "WeatherReport";
DROP TABLE "WeatherReport";
ALTER TABLE "new_WeatherReport" RENAME TO "WeatherReport";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
