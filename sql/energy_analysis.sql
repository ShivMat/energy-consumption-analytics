-- Average hourly energy consumption
SELECT 
    Hour,
    AVG(Global_active_power) AS avg_power
FROM energy_data
GROUP BY Hour
ORDER BY Hour;


-- Energy consumption by day of week
SELECT 
    Weekday,
    AVG(Global_active_power) AS avg_power
FROM energy_data
GROUP BY Weekday
ORDER BY avg_power DESC;


-- Weekend vs Weekday comparison
SELECT 
    Is_Weekend,
    AVG(Global_active_power) AS avg_power
FROM energy_data
GROUP BY Is_Weekend;


-- Monthly energy trend
SELECT 
    Month_Name,
    AVG(Global_active_power) AS avg_power
FROM energy_data
GROUP BY Month_Name;


-- Peak energy consumption hours
SELECT 
    Hour,
    MAX(Global_active_power) AS peak_power
FROM energy_data
GROUP BY Hour
ORDER BY peak_power DESC;