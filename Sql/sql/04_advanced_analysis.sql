-- Airline Performance Analysis
-- Author: Kehinde Goriola
-- Tool: MySQL
-- File: 04_advanced_analysis.sql
-- Description: Advanced analysis and trends


-- Monthly Flight Volume Trend
SELECT 
    YEAR(Departure_Date_Clean) AS Year,
    MONTH(Departure_Date_Clean) AS Month,
    COUNT(*) AS Total_Flights
FROM Cleaned_Flights
GROUP BY Year, Month
ORDER BY Year, Month;


-- Monthly Delay Trend
SELECT 
    YEAR(Departure_Date_Clean) AS Year,
    MONTH(Departure_Date_Clean) AS Month,
    SUM(CASE WHEN `Flight Status` = 'Delayed' THEN 1 ELSE 0 END) AS Delays
FROM Cleaned_Flights
GROUP BY Year, Month
ORDER BY Year, Month;


-- Most Popular Routes
SELECT `Airport Name` AS Departure_Airport,
       `Arrival Airport`,
       COUNT(*) AS Route_Frequency
FROM Cleaned_Flights
GROUP BY `Airport Name`, `Arrival Airport`
ORDER BY Route_Frequency DESC;


-- Pilot Performance Ranking (Lowest Delay First)
SELECT `Pilot Name`,
       COUNT(*) AS Total_Flights,
       ROUND(100 *
            SUM(CASE WHEN `Flight Status` = 'Delayed' THEN 1 ELSE 0 END)
            / COUNT(*), 2) AS Delay_Rate
FROM Cleaned_Flights
GROUP BY `Pilot Name`
ORDER BY Delay_Rate ASC;
