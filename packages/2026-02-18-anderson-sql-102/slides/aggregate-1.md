---
class: py-10
---
# Aggregates

<div class="mt-8 flex flex-col justify-center items-center">
<div v-click="1" class="mt-8 flex items-start content-start items-center gap-4">
```sql {hide|1-4|6-10|12-17|all}{at:'1',lines:true}
--total rainfall at LAX
SELECT sum(precipitation_sum_mm) as total_rainfall
FROM daily_summary
WHERE iata LIKE '%LAX';

--total rainfall at all codes
SELECT iata, sum(precipitation_sum_mm) as total_rainfall
FROM daily_summary
GROUP BY iata
ORDER BY total_rainfall DESC;

--total rainfall at all codes with names
SELECT iata, name, sum(precipitation_sum_mm) as total_rainfall
FROM daily_summary s
INNER JOIN airports a on s.iata = a.icao
GROUP BY iata, name
ORDER BY total_rainfall DESC;
```
</div>
</div>