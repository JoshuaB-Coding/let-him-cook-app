CREATE TABLE IF NOT EXISTS public."recipes_ingredients" (
  "recipeId" INT NOT NULL REFERENCES public."recipe" ("id"),
  "ingredientId" INT NOT NULL REFERENCES public."ingredient" ("id"),
  CONSTRAINT "PK_recipes_ingredients" PRIMARY KEY ("recipeId", "ingredientId")
);

ALTER TABLE IF EXISTS public."recipes_ingredients"
  OWNER TO lhc_user;
