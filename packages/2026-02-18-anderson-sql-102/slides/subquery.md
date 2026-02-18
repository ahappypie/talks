---
class: py-10
---
# Subqueries

<div class="mt-8 flex flex-col justify-center items-center">
<div v-click="1" class="mt-8 flex items-start content-start items-center gap-4">
```sql {hide|all}{at:'1',lines:true}
--avg daily rainfall at all codes with names where it is greater than the global average
SELECT iata, name, avg(precipitation_sum_mm) as avg_daily_rainfall
FROM daily_summary s
INNER JOIN airports a on s.iata = a.icao
GROUP BY iata, name
HAVING avg_daily_rainfall > (SELECT avg(precipitation_sum_mm) FROM daily_summary)
ORDER BY avg_daily_rainfall DESC;
```
</div>
</div>