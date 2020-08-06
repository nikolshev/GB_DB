SELECT 
p2.name product_name,
c2.name category
FROM
 products p2
JOIN
 catalogs c2
ON
c2.id = p2.catalog_id;