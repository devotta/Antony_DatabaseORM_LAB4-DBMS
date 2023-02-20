-- 3)	Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.
SELECT customer.CUS_GENDER, COUNT(DISTINCT customer.CUS_ID) as num_customers
FROM `order`
INNER JOIN customer
ON `order`.CUS_ID = customer.CUS_ID
WHERE `order`.ORD_AMOUNT >= 3000
GROUP BY customer.CUS_GENDER
