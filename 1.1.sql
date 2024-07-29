-- You’ve been asked to extract the data on products from the Product table where there exists a product subcategory. And also include the name of the ProductSubcategory.

-- Columns needed: ProductId, Name, ProductNumber, size, color, ProductSubcategoryId, Subcategory name.
-- Order results by SubCategory name.

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
