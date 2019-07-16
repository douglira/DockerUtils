# Backup your databases
docker exec -t postgres pg_dumpall -c -U douglas -l smartsearch > dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql
# Restore your databases
cat backup.sql | docker exec -i postgres psql -U douglas -d smartsearch

## Dump ARGS

# -a | --data-only
# -s | --schema-only
# -t | --tablespaces-only