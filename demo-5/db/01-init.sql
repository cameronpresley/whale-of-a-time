-- #!/bin/bash
-- set -e
-- export PGPASSWORD=$POSTGRES_PASSWORD
-- psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB"  <<-EOSQL
BEGIN;
  CREATE TABLE IF NOT EXISTS forecasts (
    id SERIAL NOT NULL PRIMARY KEY,
    date TIMESTAMPTZ,
    temperatureC INT,
    summary TEXT NOT NULL
  );
COMMIT;
