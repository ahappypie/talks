---
class: py-10
---
# Aggregates

<div class="mt-8 flex flex-col justify-center items-center">
<div v-click="1" class="mt-8 flex items-start content-start items-center gap-4">
```sql {hide|all}{at:'1',lines:true}
--total rainfall at all codes with names where total is greater than 400
SELECT iata, name, sum(precipitation_sum_mm) as total_rainfall
FROM daily_summary s
INNER JOIN airports a on s.iata = a.icao
GROUP BY iata, name
HAVING total_rainfall > 400
ORDER BY total_rainfall DESC;
```
</div>
</div>