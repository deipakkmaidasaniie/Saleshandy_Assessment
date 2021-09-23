SELECT CAST(MIN( [date]) AS VARCHAR(20))+' TO '+CAST (MAX([date]) AS VARCHAR(20)) AS DATE,
SUM(driver_amount) AS Weekly_Amount FROM ride_details
GROUP BY DATEPART(WEEK,[date]) HAVING COUNT(DISTINCT[date])=7