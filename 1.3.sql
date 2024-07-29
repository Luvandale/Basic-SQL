-- 1.3 Use the established query to select the most expensive (price listed over 2000) bikes that are still actively sold (does not have a sales end date)

Order the results from most to least expensive bike.
SELECT 
p.ProductID,
p.Name,
p.ProductNumber,
p.Size,
p.Color,
p.ProductSubcategoryID,
ps.Name subcategory,
pc.Name Category_name
 FROM `tc-da-1.adwentureworks_db.product` AS p
 JOIN `tc-da-1.adwentureworks_db.productsubcategory` AS ps
 ON p.ProductSubcategoryID = ps.ProductSubcategoryID
 JOIN `tc-da-1.adwentureworks_db.productcategory` AS pc
 ON ps.ProductCategoryID = pc.ProductCategoryID
 WHERE p.ListPrice > 2000 AND p.SellEndDate IS NULL
 ORDER BY p.ListPrice DESC;
