#!/bin/bash
set -e
export PGPASSWORD=$POSTGRES_PASSWORD
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB"  <<-EOSQL
  CREATE DATABASE weather;
  \connect weather $POSTGRES_USER
  BEGIN;
    CREATE TABLE IF NOT EXISTS forecasts (
      id INT NOT NULL PRIMARY KEY,
      date TIMESTAMPTZ,
      temperature INT,
      summary TEXT NOT NULL
    );
  COMMIT;
EOSQL