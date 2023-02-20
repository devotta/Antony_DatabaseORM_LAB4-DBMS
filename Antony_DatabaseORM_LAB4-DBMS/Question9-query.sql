--9)	Create a stored procedure to display supplier id, name, rating and Type_of_Service.
-- For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”,
-- If rating >2 print “Average Service” else print “Poor Service”.

USE ECOMMERCE

DELIMITER //

CREATE PROCEDURE DisplaySupplierRating()
BEGIN

Select t.supp_id,  (select supp_name from supplier s where s.supp_id=t.supp_id Limit 1) As supp_name,t.rat_ratstars,
CASE
		WHEN t.rat_ratstars =5 THEN 'Excellent Service'
    	WHEN t.rat_ratstars >4 THEN 'Good Service'
    	WHEN t.rat_ratstars >2 THEN 'Average Service'
    	ELSE 'Poor Service'
END AS Type_of_Service
from
(
SELECT s.supp_id AS supp_id, Avg(r.rat_ratstars) As rat_ratstars  FROM  supplier s
INNER JOIN supplier_pricing sp ON (s.supp_id=sp.supp_id)
INNER JOIN `order` o ON (sp.pricing_id=o.pricing_id)
INNER JOIN rating r on (o.ord_id=r.ord_id)
GROUP BY s.supp_id
order by s.supp_id
) t;

END //

DELIMITER ;
