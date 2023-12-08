USE austin_weather;

-- How many days are recorded in the dataset?
SELECT COUNT(DISTINCT date) AS NumberOfDays
FROM austin_weather;

-- What is the day with the Highest Temperature in Fahrenheit (column TempHighF)
SELECT date, MAX(TempHighF) AS MaxTemperature
FROM austin_weather
GROUP BY date
ORDER BY MaxTemperature DESC
LIMIT 1;

-- What is the average Humidity across all days? (column HumidityAvgPercent)

SELECT AVG(HumidityAvgPercent) AS AverageHumidity
FROM austin_weather;

-- Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ?

SELECT date, SeaLevelPressureAvgInches
FROM austin_weather
WHERE DewPointAvgF > 28
ORDER BY SeaLevelPressureAvgInches DESC
LIMIT 10;