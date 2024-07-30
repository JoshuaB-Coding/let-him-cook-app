CREATE TABLE IF NOT EXISTS public."ingredient" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL
);

ALTER TABLE IF EXISTS public."ingredient"
    OWNER TO lhc_user;
