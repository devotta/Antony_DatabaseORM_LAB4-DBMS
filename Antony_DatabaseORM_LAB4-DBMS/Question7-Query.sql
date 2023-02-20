-- 7)	Display the Id and Name of the Product ordered after “2021-10-05”.

SELECT p.PRO_ID, p.PRO_NAME
FROM product p
JOIN supplier_pricing sp ON sp.PRO_ID = p.PRO_ID
JOIN `order` o ON o.PRICING_ID = sp.PRICING_ID
WHERE o.ORD_DATE > '2021-10-05';
