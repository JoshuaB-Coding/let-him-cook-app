#!/bin/bash

docker exec let-him-cook-app-database-1 psql -U lhc_user -d lhc_db -c "USE LHC_DB; $1"
