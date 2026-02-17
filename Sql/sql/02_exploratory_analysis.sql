-- Airline Performance Analysis
-- Author: Kehinde Goriola
-- Tool: MySQL
-- File: 02_exploratory_analysis.sql
-- Description: Basic exploratory data analysis

-- Total Flights
SELECT COUNT(*) AS Total_Flights
FROM Cleaned_Flights;

-- Total Unique Passengers
SELECT COUNT(DISTINCT `Passenger ID`) AS Total_Passengers
FROM Cleaned_Flights;

-- Flight Status Distribution
SELECT `Flight Status`,
       COUNT(*) AS Flight_Count,
       ROUND(100 * COUNT(*) /
            (SELECT COUNT(*) FROM Cleaned_Flights), 2) AS Percentage
FROM Cleaned_Flights
GROUP BY `Flight Status`
ORDER BY Flight_Count DESC;

-- Gender Distribution
SELECT `Gender`,
       COUNT(*) AS Total,
       ROUND(100 * COUNT(*) /
            (SELECT COUNT(*) FROM Cleaned_Flights), 2) AS Percentage
FROM Cleaned_Flights
GROUP BY `Gender`
ORDER BY Total DESC;

-- Average Passenger Age
SELECT ROUND(AVG(`Age`), 2) AS Average_Age
FROM Cleaned_Flights;

-- Age Group Distribution
SELECT Age_Group,
       COUNT(*) AS Total
FROM (
    SELECT 
        CASE 
            WHEN `Age` BETWEEN 0 AND 17 THEN '0-17'
            WHEN `Age` BETWEEN 18 AND 30 THEN '18-30'
            WHEN `Age` BETWEEN 31 AND 50 THEN '31-50'
            ELSE '51+'
        END AS Age_Group
    FROM Cleaned_Flights
) AS sub
GROUP BY Age_Group
ORDER BY Total DESC;

-- Flights by Continent
SELECT `Airport Continent`,
       COUNT(*) AS Total_Flights
FROM Cleaned_Flights
GROUP BY `Airport Continent`
ORDER BY Total_Flights DESC;
