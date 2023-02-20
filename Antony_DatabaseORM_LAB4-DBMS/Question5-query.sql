-- 5)	Display the Supplier details who can supply more than one product.

SELECT S.SUPP_ID,S.SUPP_NAME,SUPP_CITY,SUPP_PHONE,COUNT(SP.SUPP_ID) "TOTAL" 
FROM supplier S, supplier_pricing SP
WHERE S.SUPP_ID=SP.SUPP_ID
GROUP BY SP.SUPP_ID
HAVING COUNT(SP.SUPP_ID)>1;
