CREATE TABLE IF NOT EXISTS public."recipe" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50) NOT NULL
);

ALTER TABLE IF EXISTS public."recipe"
  OWNER TO lhc_user;
