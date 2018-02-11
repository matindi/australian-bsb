#!/usr/bin/env bash

set -e

echo "Running DDL scripts..."
psql -h localhost -U postgres -f ../SqlScripts/ddl.sql
echo "Loading csv files into postgresql..."
psql -h localhost -U postgres -c "copy KEYABBREVIATIONS from '/datafiles/${KEY_ABBREVIATION_FILE}' with csv DELIMITER ','"
psql -h localhost -U postgres -c "copy BsbDirectory from '/datafiles/${BASE_DATA_FILE}' with csv DELIMITER ','"
psql -h localhost -U postgres -c "copy BsbDirectoryUpdate from '/datafiles/${UPDATE_FILE}' with csv DELIMITER ','"

