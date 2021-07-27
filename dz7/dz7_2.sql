USE shop;

SELECT DISTINCT 
p.name AS product_name,
c.name AS catalogue
FROM products AS p LEFT JOIN catalogs AS c ON p.catalog_id = c.id;