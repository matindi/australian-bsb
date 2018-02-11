#!/usr/bin/env bash

set -e

echo "Running DDL scripts..."
psql -h localhost -U postgres -f ../SqlScripts/ddl.sql
echo "Loading csv files into postgresql..."
psql -h localhost -U postgres -d australianbsb_db -c "copy KeyAbbreviations from '/datafiles/${KEY_ABBREVIATION_FILE}' with csv DELIMITER ','"
psql -h localhost -U postgres -d australianbsb_db -c "copy BsbDirectory from '/datafiles/${BASE_DATA_FILE}' with csv DELIMITER ','"
psql -h localhost -U postgres -d australianbsb_db -c "copy BsbDirectoryUpdate from '/datafiles/${UPDATE_FILE}' with csv DELIMITER ','"

