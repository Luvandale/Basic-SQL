-- 2.2 Update your 2.1 query by adding the name of the location and also add the average days amount between actual start date and actual end date per each location.

SELECT 
    wor.LocationID,l.Name,
    COUNT(DISTINCT wor.WorkOrderID) AS No_Work_Orders,
    COUNT(DISTINCT wor.ProductID) AS No_Unique_Products,
    SUM(wor.ActualCost) AS ActualCost,ROUND(AVG(DATETIME_DIFF(DATETIME (wor.ActualEndDate), DATETIME (wor.ActualStartDate), DAY)), 2) AS avg_days_diff
FROM 
  `tc-da-1.adwentureworks_db.workorderrouting` AS wor
JOIN `tc-da-1.adwentureworks_db.location` AS l
ON l.LocationID = wor.LocationID
WHERE 
    wor.ActualStartDate >= '2004-01-01' AND wor.ActualStartDate < '2004-02-01'
GROUP BY 
    wor.LocationID,l.Name
ORDER BY
    ActualCost DESC;
