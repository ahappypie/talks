---
class: py-10
---
# Basic Statements

<div class="mt-2 flex flex-col justify-center items-center">
  <div v-click="1" class="flex items-start content-start items-center gap-4">
```sql {hide|1-3|5-7|9-12|14-16|18-20|22-24|all}{at:'+1',lines:true}
-- list named columns from a specific table
SELECT iata, day, temperature_2m_min_c, temperature_2m_max_c
FROM daily_summary;

-- shortcut for all columns
SELECT *
FROM daily_summary;

-- limit results
SELECT *
FROM daily_summary
LIMIT 10;

-- rename (or alias) columns
SELECT temperature_2m_min_c as low_temp
FROM daily_summary;

-- use expressions (or functions)
SELECT iata, day, (temperature_2m_min_c + temperature_2m_max_c) / 2 as avg_temp
FROM daily_summary;

-- remove duplicate results
SELECT DISTINCT iata
FROM daily_summary;
```
  </div>
</div>
