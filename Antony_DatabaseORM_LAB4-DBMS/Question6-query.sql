-- 6)	Find the least expensive product from each category and print the table with category id, name, product name
-- and price of the product
select t.cat_id,t.cat_name,min(t.supp_price) minimum_price from
(select c.cat_id as cat_id ,c.cat_name,p.pro_name,mp.supp_price as supp_price
from category c
INNER JOIN product p on c.cat_id=p.cat_id
INNER JOIN
(select sp.pro_id as pro_id ,min(sp.supp_price) as supp_price
from supplier_pricing sp group by pro_id) mp on p.pro_id=mp.pro_id) t
group by t.cat_id
order by t.cat_id
