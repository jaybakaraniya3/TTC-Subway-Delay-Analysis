USE toronto_ttc;
select * from subway_delays limit 10;


SELECT
	Station,
    COUNT(*) AS total_incidents,
    ROUND(AVG(`MIN Delay`),2) AS avg_delay_minutes
FROM subway_delays
GROUP BY Station
HAVING total_incidents >5
ORDER BY avg_delay_minutes DESC
LIMIT 10;



SELECT 
    HOUR(Time) as hour_of_day, 
    COUNT(*) as incident_count
FROM subway_delays
GROUP BY hour_of_day
ORDER BY incident_count DESC;