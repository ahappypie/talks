--
SET VARIABLE MY_LONG = 34.068920;
SET VARIABLE MY_LAT = -118.445183;

SET VARIABLE WFO = (
    SELECT properties.gridId
    FROM read_json('https://api.weather.gov/points/' || getvariable('MY_LONG') || ',' || getvariable('MY_LAT'))
);

SET VARIABLE X = (
    SELECT properties.gridX
    FROM read_json('https://api.weather.gov/points/' || getvariable('MY_LONG') || ',' || getvariable('MY_LAT'))
);

SET VARIABLE Y = (
    SELECT properties.gridY
    FROM read_json('https://api.weather.gov/points/' || getvariable('MY_LONG') || ',' || getvariable('MY_LAT'))
);
--
CREATE TABLE local_stations AS
SELECT split(unnest(observationStations), 'stations/')[2] as iata
FROM read_json('https://api.weather.gov/gridpoints/'|| getvariable('WFO') ||'/' || getvariable('X') || ',' || getvariable('Y') || '/stations')
--
CREATE VIEW local_airport_stations AS
select * from local_stations where iata like 'K%'
--
CREATE OR REPLACE TABLE airports AS
select * from read_csv('https://raw.githubusercontent.com/lxndrblz/Airports/refs/heads/main/airports.csv')
--
select * from airports a
inner join local_airport_stations l on a.icao = l.iata;
--
CREATE OR REPLACE TABLE weather_codes (code VARCHAR, description VARCHAR);
--
INSERT INTO weather_codes VALUES('00', 'Cloud development not observed or not observable');
INSERT INTO weather_codes VALUES('01',	'Clouds generally dissolving or becoming less developed');
INSERT INTO weather_codes VALUES('02',	'State of sky on the whole unchanged');
INSERT INTO weather_codes VALUES('03',	'Clouds generally forming or developing');
INSERT INTO weather_codes VALUES('04',	'Visibility reduced by smoke, e.g. veldt or forest fires, industrial smoke or volcanic ashes');
INSERT INTO weather_codes VALUES('05',	'Haze');
INSERT INTO weather_codes VALUES('06',	'Widespread dust in suspension in the air, not raised by wind at or near the station at the time of observation');
INSERT INTO weather_codes VALUES('07',	'Dust or sand raised by wind at or near the station at the time of observation, but no well developed dust whirl(s) or sand whirl(s), and no duststorm or sandstorm seen');
INSERT INTO weather_codes VALUES('08',	'Well developed dust whirl(s) or sand whirl(s) seen at or near the station during the preceding hour or at the time ot observation, but no duststorm or sandstorm');
INSERT INTO weather_codes VALUES('09',	'Duststorm or sandstorm within sight at the time of observation, or at the station during the preceding hour');
INSERT INTO weather_codes VALUES('10', 'Mist');
INSERT INTO weather_codes VALUES('11',	'Patches	shallow fog or ice fog at the station, whether on land or sea, not deeper than about 2 metres on land or 10 metres at sea');
INSERT INTO weather_codes VALUES('12',	'More or less continuous');
INSERT INTO weather_codes VALUES('13',	'Lightning visible, no thunder heard');
INSERT INTO weather_codes VALUES('14',	'Precipitation within sight, not reaching the ground or the surface of the sea');
INSERT INTO weather_codes VALUES('15',	'Precipitation within sight, reaching the ground or the surface of the sea, but distant, i.e. estimated to be more than 5 km from the station');
INSERT INTO weather_codes VALUES('16',	'Precipitation within sight, reaching the ground or the surface of the sea, near to, but not at the station');
INSERT INTO weather_codes VALUES('17',	'Thunderstorm, but no precipitation at the time of observation');
INSERT INTO weather_codes VALUES('18',	'Squalls	at or within sight of the station during the preceding hour or at the time of observation');
INSERT INTO weather_codes VALUES('19',	'Funnel cloud(s)');
INSERT INTO weather_codes VALUES('20',	'Drizzle (not freezing) or snow grains');
INSERT INTO weather_codes VALUES('21',	'Rain (not freezing)');
INSERT INTO weather_codes VALUES('22',	'Snow');
INSERT INTO weather_codes VALUES('23',	'Rain and snow or ice pellets');
INSERT INTO weather_codes VALUES('24',	'Freezing drizzle or freezing rain');
INSERT INTO weather_codes VALUES('25',	'Shower(s) of rain');
INSERT INTO weather_codes VALUES('26',	'Shower(s) of snow, or of rain and snow');
INSERT INTO weather_codes VALUES('27',	'Shower(s) of hail*, or of rain and hail*');
INSERT INTO weather_codes VALUES('28',	'Fog or ice fog');
INSERT INTO weather_codes VALUES('29',	'Thunderstorm (with or without precipitation)');
INSERT INTO weather_codes VALUES('30',	'Slight or moderate duststorm or sandstorm	- has decreased during the preceding hour');
INSERT INTO weather_codes VALUES('31',	'Slight or moderate duststorm or sandstorm - no appreciable change during the preceding hour');
INSERT INTO weather_codes VALUES('32',	'Slight or moderate duststorm or sandstorm - has begun or has increased during the preceding hour');
INSERT INTO weather_codes VALUES('33',	'Severe duststorm or sandstorm	- has decreased during the preceding hour');
INSERT INTO weather_codes VALUES('34',	'Severe duststorm or sandstorm - no appreciable change during the preceding hour');
INSERT INTO weather_codes VALUES('35',	'Severe duststorm or sandstorm - has begun or has increased during the preceding hour');
INSERT INTO weather_codes VALUES('36',	'Slight or moderate blowing snow	- generally low (below eye level)');
INSERT INTO weather_codes VALUES('37',	'Heavy drifting snow - generally low (below eye level)');
INSERT INTO weather_codes VALUES('38',	'Slight or moderate blowing snow	- generally high (above eye level)');
INSERT INTO weather_codes VALUES('39',	'Heavy drifting snow - generally high (above eye level)');
INSERT INTO weather_codes VALUES('40',	'Fog or ice fog at a distance at the time of observation, but not at the station during the preceding hour, the fog or ice fog extending to a level above that of the observer');
INSERT INTO weather_codes VALUES('41',	'Fog or ice fog in patches');
INSERT INTO weather_codes VALUES('42',	'Fog or ice fog, sky visible	- has become thinner during the preceding hour');
INSERT INTO weather_codes VALUES('43',	'Fog or ice fog, sky invisible - has become thinner during the preceding hour');
INSERT INTO weather_codes VALUES('44',	'Fog or ice fog, sky visible	- no appreciable change during the preceding hour');
INSERT INTO weather_codes VALUES('45',	'Fog or ice fog, sky invisible - no appreciable change during the preceding hour');
INSERT INTO weather_codes VALUES('46',	'Fog or ice fog, sky visible	- has begun or has become thicker during the preceding hour');
INSERT INTO weather_codes VALUES('47',	'Fog or ice fog, sky invisible - has begun or has become thicker during the preceding hour');
INSERT INTO weather_codes VALUES('48',	'Fog, depositing rime, sky visible');
INSERT INTO weather_codes VALUES('49',	'Fog, depositing rime, sky invisible');
INSERT INTO weather_codes VALUES('50',	'Drizzle, not freezing, intermittent	- slight at time of observation');
INSERT INTO weather_codes VALUES('51',	'Drizzle, not freezing, continuous - slight at time of observation');
INSERT INTO weather_codes VALUES('52',	'Drizzle, not freezing, intermittent	- moderate at time of observation');
INSERT INTO weather_codes VALUES('53',	'Drizzle, not freezing, continuous - moderate at time of observation');
INSERT INTO weather_codes VALUES('54',	'Drizzle, not freezing, intermittent	- heavy (dense) at time of observation');
INSERT INTO weather_codes VALUES('55',	'Drizzle, not freezing, continuous - heavy (dense) at time of observation');
INSERT INTO weather_codes VALUES('56',	'Drizzle, freezing, slight');
INSERT INTO weather_codes VALUES('57',	'Drizzle, freezing, moderate or heavy (dense)');
INSERT INTO weather_codes VALUES('58',	'Drizzle and rain, slight');
INSERT INTO weather_codes VALUES('59',	'Drizzle and rain, moderate or heavy');
INSERT INTO weather_codes VALUES('60',	'Rain, not freezing, intermittent - slight at time of observation');
INSERT INTO weather_codes VALUES('61',	'Rain, not freezing, continuous - slight at time of observation');
INSERT INTO weather_codes VALUES('62',	'Rain, not freezing, intermittent - moderate at time of observation');
INSERT INTO weather_codes VALUES('63',	'Rain, not freezing, continuous - moderate at time of observation');
INSERT INTO weather_codes VALUES('64',	'Rain, not freezing, intermittent - heavy at time of observation');
INSERT INTO weather_codes VALUES('65',	'Rain, not freezing, continuous - heavy at time of observation');
INSERT INTO weather_codes VALUES('66',	'Rain, freezing, slight');
INSERT INTO weather_codes VALUES('67',	'Rain, freezing, moderate or heavy (dense)');
INSERT INTO weather_codes VALUES('68',	'Rain or drizzle and snow, slight');
INSERT INTO weather_codes VALUES('69',	'Rain or drizzle and snow, moderate or heavy');
INSERT INTO weather_codes VALUES('70',	'Intermittent fall of snowflakes	- slight at time of observation');
INSERT INTO weather_codes VALUES('71',	'Continuous fall of snowflakes - slight at time of observation');
INSERT INTO weather_codes VALUES('72',	'Intermittent fall of snowflakes	- moderate at time of observation');
INSERT INTO weather_codes VALUES('73',	'Continuous fall of snowflakes - moderate at time of observation');
INSERT INTO weather_codes VALUES('74',	'Intermittent fall of snowflakes	- heavy at time of observation');
INSERT INTO weather_codes VALUES('75',	'Continuous fall of snowflakes - heavy at time of observation');
INSERT INTO weather_codes VALUES('76',	'Diamond dust (with or without fog)');
INSERT INTO weather_codes VALUES('77',	'Snow grains (with or without fog)');
INSERT INTO weather_codes VALUES('78',	'Isolated star-like snow crystals (with or without fog)');
INSERT INTO weather_codes VALUES('79',	'Ice pellets');
INSERT INTO weather_codes VALUES('80',	'Rain shower(s), slight');
INSERT INTO weather_codes VALUES('81',	'Rain shower(s), moderate or heavy');
INSERT INTO weather_codes VALUES('82',	'Rain shower(s), violent');
INSERT INTO weather_codes VALUES('83',	'Shower(s) of rain and snow mixed, slight');
INSERT INTO weather_codes VALUES('84',	'Shower(s) of rain and snow mixed, moderate or heavy');
INSERT INTO weather_codes VALUES('85',	'Snow shower(s), slight');
INSERT INTO weather_codes VALUES('86',	'Snow shower(s), moderate or heavy');
INSERT INTO weather_codes VALUES('87',	'Shower(s) of snow pellets or small hail, with or without rain or rain and snow mixed - slight');
INSERT INTO weather_codes VALUES('88',	'Shower(s) of snow pellets or small hail, with or without rain or rain and snow mixed - moderate or heavy');
INSERT INTO weather_codes VALUES('89',	'Shower(s) of hail, with or without rain or rain and snow mixed, not associated with thunder - slight');
INSERT INTO weather_codes VALUES('90',	'Shower(s) of hail, with or without rain or rain and snow mixed, not associated with thunder - moderate or heavy');
INSERT INTO weather_codes VALUES('91',	'Slight rain at time of observation - Thunderstorm during the preceding hour but not at time of observation');
INSERT INTO weather_codes VALUES('92',	'Moderate or heavy rain at time of observation - Thunderstorm during the preceding hour but not at time of observation');
INSERT INTO weather_codes VALUES('93',	'Slight snow, or rain and snow mixed or hail at time of observation - Thunderstorm during the preceding hour but not at time of observation');
INSERT INTO weather_codes VALUES('94',	'Moderate or heavy snow, or rain and snow mixed or hail at time of observation - Thunderstorm during the preceding hour but not at time of observation');
INSERT INTO weather_codes VALUES('95',	'Thunderstorm, slight or moderate, without hail but with rain and/or snow at time of observation	- Thunderstorm at time of observation');
INSERT INTO weather_codes VALUES('96',	'Thunderstorm, slight or moderate, with hail at time of observation - Thunderstorm at time of observation');
INSERT INTO weather_codes VALUES('97',	'Thunderstorm, heavy, without hail but with rain and/or snow at time of observation - Thunderstorm at time of observation');
INSERT INTO weather_codes VALUES('98',	'Thunderstorm combined with duststorm or sandstorm at time of observation - Thunderstorm at time of observation');
INSERT INTO weather_codes VALUES('99',	'Thunderstorm, heavy, with hail at time of observation - Thunderstorm at time of observation');
--
with locations as (
    select iata, latitude as latitude, longitude, row_number() over () - 1 as location_id from airports a
                                                                                                   inner join local_airport_stations l on a.icao = l.iata
)
select group_concat(latitude), group_concat(longitude)
from locations;
--
SET VARIABLE GROUP_LATITUDE = '33.341667,34.2031703,33.926945,33.94216754999999,33.815565899999996,34.15,34.20009175,34.6275,35.6756407,34.42738475,35.237491399999996,34.01659745,34.8994719,34.066666,34.63333,34.20713175,34.7';
SET VARIABLE GROUP_LONGITUDE = '-118.31528,-118.35917241746948,-118.33639,-118.42139298414197,-118.15342922166721,-119.2,-119.20789455598106,-118.083336,-120.63062553873178,-119.84313935656505,-120.64331992943252,-118.45060361170552,-120.45551617973354,-118.566666,-120.46667,-118.49014837369748,-118.13333';
SET VARIABLE START_DATE = '2025-01-01';
SET VARIABLE END_DATE = '2025-12-01';

create or replace table data as (
select * from read_json(
'https://archive-api.open-meteo.com/v1/archive?latitude=' || getvariable('GROUP_LATITUDE') || '&longitude=' || getvariable('GROUP_LONGITUDE') || '&start_date=' || getvariable('START_DATE') || '&end_date=' || getvariable('END_DATE') || '&daily=weather_code,temperature_2m_max,temperature_2m_min,precipitation_sum,rain_sum,snowfall_sum,precipitation_hours,daylight_duration,sunshine_duration&timezone=America%2FLos_Angeles'
)
);
--
create table weather as (
    with records as (
        select case when location_id is null then 0 else location_id end as location_id, unnest(daily) from data
    ),
         locations as (
             select iata, row_number() over () - 1 as location_id from airports a
                                                                           inner join local_airport_stations l on a.icao = l.iata
         )
    select
        iata
         , unnest(time) as day
, lpad(unnest(weather_code)::VARCHAR, 2, '0') as weather_code
, unnest(temperature_2m_min) as temperature_2m_min_c
, unnest(temperature_2m_max) as temperature_2m_max_c
, unnest(precipitation_sum) as precipitation_sum_mm
, unnest(rain_sum) as rain_sum_mm
, unnest(snowfall_sum) as snowfall_sum_cm
, unnest(precipitation_hours) as precipitation_hours
, unnest(daylight_duration) as daylight_duration_seconds
, unnest(sunshine_duration) as sunshine_duration_seconds
    from records r
        inner join locations l on r.location_id = l.location_id
)
--
ATTACH 'weather.duckdb';
--
COPY FROM DATABASE memory TO weather;
--
USE weather;
DROP TABLE IF EXISTS data;
DROP VIEW IF EXISTS local_airport_stations;
DROP TABLE IF EXISTS local_stations;
--
USE memory;
DETACH weather;