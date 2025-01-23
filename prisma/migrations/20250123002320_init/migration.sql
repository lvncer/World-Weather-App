-- CreateTable
CREATE TABLE "WeatherReport" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "location" TEXT NOT NULL,
    "windDirection" TEXT NOT NULL,
    "windStrength" TEXT NOT NULL,
    "weather" TEXT NOT NULL,
    "pressure" INTEGER NOT NULL,
    "temperature" REAL NOT NULL
);
