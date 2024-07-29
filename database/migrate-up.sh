#!/bin/bash

migrations=(
    "001-UserTable.sql"
    "002-IngredientTable.sql"
)

execute_sql_file() {
    docker exec let-him-cook-app-database-1 psql -U lhc_user -d lhc_db -c "$1"
}

for migration in "${migrations[@]}"
do
    echo "Running migration $migration..."
    execute_sql_file `cat ./database/migrations/$migration`
done
