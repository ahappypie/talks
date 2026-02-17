---
class: py-10
---
# Review

<div class="mt-8 flex flex-col justify-center items-center">
<div v-click="1">
<code block whitespace-pre-wrap>
<span text-color-green>SELECT <i>columns...</i> | <i>*</i> | <i>expression(column)</i> | <i>function(column)</i></span>
<br>
<span text-color-orange>FROM <i>my_table</i></span>
<br>
<span text-color-yellow>WHERE <i>condition</i> AND | OR <i>condition</i></span>
<br>
<span text-color-red>ORDER BY <i>column</i> ASC | DESC</span>
<br>
<span text-color-blue>LIMIT <i>n</i>;</span>
</code>
</div>
<div v-click="2" class="mt-8 flex items-start content-start items-center gap-4">
```sql {hide|1-3|4|5|6|7|all}{at:'2',lines:true}
SELECT iata, day, precipitation_sum_mm, 
  (temperature_2m_min_c + temperature_2m_max_c) / 2 as avg_temp_c, 
  (9/5)*avg_temp_c + 32 as avg_temp_f
FROM daily_summary
WHERE iata like '%LAX'
ORDER BY precipitation_sum_mm DESC
LIMIT 10;
```
</div>
</div>
