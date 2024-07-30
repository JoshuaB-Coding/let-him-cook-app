#!/bin/bash

execute_sql_file() {
    docker exec let-him-cook-app-database-1 psql -U lhc_user -d lhc_db -f "$1"
}

echo "Dropping all tables..."
execute_sql_file "./commands/drop-all.sql"
