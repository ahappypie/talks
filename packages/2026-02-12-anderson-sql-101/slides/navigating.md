---
class: py-10
---
# Navigating a Database

<div class="mt-8 flex flex-col justify-center items-center">
  <div v-click="1" class="flex items-start content-start items-center gap-4">
```sql {hide|1-2|4-5|7-8|10-11|13-14|all}{at:'+1',lines:true}
-- when using duckdb, first attach a connection
ATTACH 'weather.duckdb';

-- list all databases in this session
SHOW DATABASES;

-- make this database the default for subsequent queries
USE my_database;

-- list all tables in this database
SHOW TABLES FROM my_database;

-- print the columns in this table
DESCRIBE my_table;
```
  </div>
</div>
