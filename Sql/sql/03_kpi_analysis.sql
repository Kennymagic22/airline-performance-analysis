-- Airline Performance Analysis
-- Author: Kehinde Goriola
-- Tool: MySQL
-- File: 03_kpi_analysis.sql
-- Description: KPI and performance analysis


-- Overall Delay Rate
SELECT 
    COUNT(*) AS Total_Flights,
    SUM(CASE WHEN `Flight Status` = 'Delayed' THEN 1 ELSE 0 END) AS Total_Delays,
    ROUND(100 *
        SUM(CASE WHEN `Flight Status` = 'Delayed' THEN 1 ELSE 0 END)
        / COUNT(*), 2) AS Delay_Rate_Percentage
FROM Cleaned_Flights;


-- Delay Rate by Airport
SELECT `Airport Name`,
       COUNT(*) AS Total_Flights,
       SUM(CASE WHEN `Flight Status` = 'Delayed' THEN 1 ELSE 0 END) AS Delays,
       ROUND(100 *
            SUM(CASE WHEN `Flight Status` = 'Delayed' THEN 1 ELSE 0 END)
            / COUNT(*), 2) AS Delay_Rate
FROM Cleaned_Flights
GROUP BY `Airport Name`
ORDER BY Delay_Rate DESC;


-- Delay Rate by Pilot
SELECT `Pilot Name`,
       COUNT(*) AS Total_Flights,
       SUM(CASE WHEN `Flight Status` = 'Delayed' THEN 1 ELSE 0 END) AS Delays,
       ROUND(100 *
            SUM(CASE WHEN `Flight Status` = 'Delayed' THEN 1 ELSE 0 END)
            / COUNT(*), 2) AS Delay_Rate
FROM Cleaned_Flights
GROUP BY `Pilot Name`
ORDER BY Delay_Rate ASC;


-- Top 10 Airports by Volume
SELECT `Airport Name`,
       COUNT(*) AS Total_Flights
FROM Cleaned_Flights
GROUP BY `Airport Name`
ORDER BY Total_Flights DESC
LIMIT 10;
