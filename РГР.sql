--
-- Файл сгенерирован с помощью SQLiteStudio v3.3.3 в Пт апр 29 04:04:38 2022
--
-- Использованная кодировка текста: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: Match
CREATE TABLE "Match" (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Data DATETIME NOT NULL, Score1 INTEGER NOT NULL, Score2 INTEGER NOT NULL, Team1_id REFERENCES Teams (id) NOT NULL, Team2_id NOT NULL REFERENCES Teams (id));
INSERT INTO "Match" (id, Data, Score1, Score2, Team1_id, Team2_id) VALUES (1, '28.04.2022', 2, 1, 1, 2);
INSERT INTO "Match" (id, Data, Score1, Score2, Team1_id, Team2_id) VALUES (2, '26.04.2022', 3, 2, 1, 2);
INSERT INTO "Match" (id, Data, Score1, Score2, Team1_id, Team2_id) VALUES (3, '24.04.2022', 0, 1, 1, 2);
INSERT INTO "Match" (id, Data, Score1, Score2, Team1_id, Team2_id) VALUES (4, '22.04.2022', 0, 4, 1, 2);
INSERT INTO "Match" (id, Data, Score1, Score2, Team1_id, Team2_id) VALUES (5, '20.04.2022', 6, 4, 2, 1);
INSERT INTO "Match" (id, Data, Score1, Score2, Team1_id, Team2_id) VALUES (6, '18.04.2022', 1, 3, 2, 1);

-- Таблица: Players
CREATE TABLE Players (id PRIMARY KEY NOT NULL, FIO STRING NOT NULL, "Date of Birth" DATETIME NOT NULL, "Place of Birth" STRING NOT NULL, Age INTEGER NOT NULL, Players_stats_id REFERENCES "Players stats" (id) NOT NULL);
INSERT INTO Players (id, FIO, "Date of Birth", "Place of Birth", Age, Players_stats_id) VALUES (1, 'Konstantin Okulov', 'Feb 18, 1995', 'Novosibirsk, RUS', 27, 1);
INSERT INTO Players (id, FIO, "Date of Birth", "Place of Birth", Age, Players_stats_id) VALUES (2, 'Pavel Akolzin', 'Nov 25, 1990', 'Moskva, RUS', 31, 2);
INSERT INTO Players (id, FIO, "Date of Birth", "Place of Birth", Age, Players_stats_id) VALUES (3, 'Sergei Andronov', 'Jul 19, 1989', 'Penza, RUS', 32, 3);
INSERT INTO Players (id, FIO, "Date of Birth", "Place of Birth", Age, Players_stats_id) VALUES (4, 'Andrei Chibisov', 'Feb 26, 1993', 'Prokopyevsk, RUS', 29, 4);

-- Таблица: Players stats
CREATE TABLE "Players stats" (id NOT NULL PRIMARY KEY, "Spent time" INTEGER NOT NULL, Goals INTEGER NOT NULL, Assists INTEGER NOT NULL, "Penalties in minutes" INTEGER NOT NULL, "Plus/minus" DOUBLE NOT NULL);
INSERT INTO "Players stats" (id, "Spent time", Goals, Assists, "Penalties in minutes", "Plus/minus") VALUES (1, 42, 7, 26, 12, 7.0);
INSERT INTO "Players stats" (id, "Spent time", Goals, Assists, "Penalties in minutes", "Plus/minus") VALUES (2, 46, 4, 5, 22, 1.0);
INSERT INTO "Players stats" (id, "Spent time", Goals, Assists, "Penalties in minutes", "Plus/minus") VALUES (3, 46, 6, 2, 12, 1.0);
INSERT INTO "Players stats" (id, "Spent time", Goals, Assists, "Penalties in minutes", "Plus/minus") VALUES (4, 48, 19, 15, 20, 7.0);

-- Таблица: Teams
CREATE TABLE Teams (id NOT NULL PRIMARY KEY, Playrs_id REFERENCES Players (id) NOT NULL, Name STRING NOT NULL, Country STRING NOT NULL, City STRING NOT NULL, Teams_stats_id REFERENCES "Teams stats" (id) NOT NULL);
INSERT INTO Teams (id, Playrs_id, Name, Country, City, Teams_stats_id) VALUES (1, 1, 'CSKA Moskva', 'RUS', 'Moskva', 1);
INSERT INTO Teams (id, Playrs_id, Name, Country, City, Teams_stats_id) VALUES (2, 2, 'Metallurg Magnitogorsk', 'RUS', 'Magnitogorsk', 2);

-- Таблица: Teams stats
CREATE TABLE "Teams stats" (id NOT NULL PRIMARY KEY, "Games played" INTEGER NOT NULL, "Won in regular time" INTEGER NOT NULL, "Lost in regular time" INTEGER NOT NULL, "Won in overtime" INTEGER NOT NULL, "Lost in overtime" INTEGER NOT NULL, "Pucks scored" INTEGER NOT NULL, "Missed points" INTEGER NOT NULL);
INSERT INTO "Teams stats" (id, "Games played", "Won in regular time", "Lost in regular time", "Won in overtime", "Lost in overtime", "Pucks scored", "Missed points") VALUES (1, 47, 18, 13, 11, 5, 120, 107);
INSERT INTO "Teams stats" (id, "Games played", "Won in regular time", "Lost in regular time", "Won in overtime", "Lost in overtime", "Pucks scored", "Missed points") VALUES (2, 48, 26, 11, 8, 3, 164, 120);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
