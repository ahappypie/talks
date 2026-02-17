---
class: py-10
---
# Common Table Expressions (CTE)

<div class="mt-8 flex flex-col justify-center items-center">
<div v-click="1" class="mt-8 flex items-start content-start items-center gap-4">
```sql {hide|all}{at:'1',lines:true}
--names where the total rainfall is greater than the average total rainfall
WITH totals as (
  SELECT iata, sum(precipitation_sum_mm) as total_rainfall FROM daily_summary GROUP BY iata
)
SELECT name, total_rainfall
FROM totals t
INNER JOIN airports a on t.iata = a.icao
WHERE total_rainfall > (SELECT avg(total_rainfall) FROM totals)
ORDER BY total_rainfall DESC;
```
</div>
</div>