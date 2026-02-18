---
class: py-10
---
# Join Syntax
<div class="mt-8 flex flex-col justify-center items-center">
<div v-click="1" class="mt-8 flex items-start content-start items-center gap-4">
```sql {hide|1-4|6-11|13-18|all}{at:'1',lines:true}
--match airport codes and get name
SELECT DISTINCT iata, icao, name
FROM daily_summary s
INNER JOIN airports a on s.iata = a.icao;

--find the airports for which we have no rainfall data
SELECT coalesce (icao, code) as code, name, day, precipitation_sum_mm
FROM airports a
LEFT JOIN daily_summary s on a.icao = s.iata
WHERE city_code LIKE '%LAX%'
AND precipitation_sum_mm IS NULL;

--find the weather codes that did not occur
SELECT wc.code, description
FROM weather_codes wc
FULL JOIN daily_summary s on wc.code = s.weather_code
WHERE s.weather_code IS NULL
ORDER BY wc.code ASC;
```
</div>
</div>