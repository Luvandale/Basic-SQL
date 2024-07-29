-- Create an aggregated query to select the:

-- Number of unique work orders.
-- Number of unique products.
-- Total actual cost.
-- For each location Id from the 'workoderrouting' table for orders in January 2004.


SELECT 
    wor.LocationID,
    COUNT(DISTINCT wor.WorkOrderID) AS No_Work_Orders,
    COUNT(DISTINCT wor.ProductID) AS No_Unique_Products,
    SUM(wor.ActualCost) AS TotalCost
FROM 
  `tc-da-1.adwentureworks_db.workorderrouting` AS wor
WHERE 
    wor.ActualStartDate >= '2004-01-01' AND wor.ActualStartDate < '2004-02-01'
GROUP BY 
    wor.LocationID
ORDER BY
    TotalCost DESC;
