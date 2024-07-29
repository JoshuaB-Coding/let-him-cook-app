CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR(50) NOT NULL,
    "salt" VARCHAR(50) NOT NULL,
    "hash" VARCHAR(50) NOT NULL
);
