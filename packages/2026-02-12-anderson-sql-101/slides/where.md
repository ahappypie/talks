---
class: py-10
---
# Filtering

<div class="mt-8 flex flex-col justify-center items-center">
  <div v-click="1" class="flex items-start content-start items-center gap-4">
```sql {hide|1-4|6-10|all}{at:'+1',lines:true}
-- qualify specific rows
SELECT *
FROM daily_summary
WHERE iata = 'KLAX';

-- chain together conditions
SELECT day, precipitation_sum_mm
FROM daily_summary
WHERE iata = 'KLAX'
AND precipitation_sum_mm > 0;
```
  </div>
</div>
