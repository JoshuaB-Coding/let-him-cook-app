#!/bin/bash

execute_sql_file() {
    docker exec let-him-cook-app-database-1 psql -U lhc_user -d lhc_db < $1
}

echo "Dropping all tables..."
execute_sql_file "./database/commands/drop-all.sql"
