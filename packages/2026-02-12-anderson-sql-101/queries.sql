--
ATTACH 'weather.duckdb';
--
SHOW DATABASES;
--
USE weather;
--
SHOW TABLES FROM weather;
--
DESCRIBE daily_summary;
--
SELECT iata, day, temperature_2m_min_c, temperature_2m_max_c
FROM daily_summary
    LIMIT 10;
--
SELECT iata, day, (temperature_2m_min_c + temperature_2m_max_c) / 2 as avg_temp
FROM daily_summary
    LIMIT 10;
--
SELECT DISTINCT iata
FROM daily_summary;
--
SELECT *
FROM daily_summary
WHERE iata = 'KLAX';
--
SELECT day, precipitation_sum_mm
FROM daily_summary
WHERE iata = 'KLAX'
  AND precipitation_sum_mm > 0;
--
SELECT iata, day, precipitation_sum_mm
FROM daily_summary
ORDER BY precipitation_sum_mm DESC
    LIMIT 10;
--
DETACH weather;