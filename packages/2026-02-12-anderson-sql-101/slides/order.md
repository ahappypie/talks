---
class: py-10
---
# Sorting

<div class="mt-8 flex flex-col justify-center items-center">
  <div v-click="1" class="flex items-start content-start items-center gap-4">
```sql {hide|1-4|6-9|11-15|all}{at:'+1',lines:true}
-- sort by highest-to-lowest
SELECT iata, day, precipitation_sum_mm
FROM daily_summary
ORDER BY precipitation_sum_mm DESC;

-- sort by lowest-to-highest
SELECT iata, day, precipitation_sum_mm
FROM daily_summary
ORDER BY precipitation_sum_mm ASC;

-- top n query
SELECT iata, day, precipitation_sum_mm
FROM daily_summary
ORDER BY precipitation_sum_mm DESC
LIMIT 10;
```
  </div>
</div>
