-- 1.2 In 1.1 query you have a product subcategory but see that you could use the category name.

-- Find and add the product category name.
-- Afterwards order the results by Category name.

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
 ORDER BY pc.name;
