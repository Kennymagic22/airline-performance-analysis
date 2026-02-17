CREATE VIEW Cleaned_Flights AS
SELECT *,
       STR_TO_DATE(`Departure Date`, '%m/%d/%Y') AS Departure_Date_Clean
FROM `Passengers_Flights`;
