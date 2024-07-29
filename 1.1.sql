SELECT 
p.ProductID,
p.Name,
p.ProductNumber,
p.Size,
p.Color,
p.ProductSubcategoryID,
ps.Name subcategory
 FROM `tc-da-1.adwentureworks_db.product` AS p
 JOIN `tc-da-1.adwentureworks_db.productsubcategory` AS ps
 ON p.ProductSubcategoryID = ps.ProductSubcategoryID
 ORDER BY ps.name;
