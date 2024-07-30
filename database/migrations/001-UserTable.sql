CREATE TABLE IF NOT EXISTS public."user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR(50) NOT NULL,
    "salt" VARCHAR(50) NOT NULL,
    "hash" VARCHAR(50) NOT NULL
);

ALTER TABLE IF EXISTS public."user"
    OWNER TO lhc_user;
