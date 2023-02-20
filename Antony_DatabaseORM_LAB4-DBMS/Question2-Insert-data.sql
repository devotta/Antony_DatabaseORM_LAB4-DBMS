use Ecommerce1;

-- Insert data in supplier table
INSERT INTO supplier(SUPP_NAME,SUPP_CITY,SUPP_PHONE) VALUES
	("Rajesh Retails","Delhi",'1234567890'),
	("Appario Ltd.","Mumbai",'2589631470'),
	("Knome products","Banglore",'9785462315'),
	("Bansal Retails","Kochi",'8975463285'),
	("Mittal Ltd.","Lucknow",'7898456532'),
	("Mittal Ltd.","Lucknow",'7898456532');

-- Insert data in customer table
INSERT INTO customer(CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) VALUES
("AAKASH",'9999999999',"DELHI",'M'),
("AMAN",'9785463215',"NOIDA",'M'),
("NEHA",'9999999999',"MUMBAI",'F'),
("MEGHA",'9994562399',"KOLKATA",'F'),
("PULKIT",'7895999999',"LUCKNOW",'M');

-- Insert data in category
INSERT INTO category(CAT_NAME) VALUES("BOOKS");
INSERT INTO category(CAT_NAME) VALUES("GAMES");
INSERT INTO category(CAT_NAME) VALUES("GROCERIES");
INSERT INTO category(CAT_NAME) VALUES ("ELECTRONICS");
INSERT INTO category(CAT_NAME) VALUES("CLOTHES");

-- Insert data in product

INSERT INTO PRODUCT VALUES(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",(SELECT CAT_ID FROM category WHERE CAT_NAME='GAMES'));
INSERT INTO PRODUCT VALUES(2,"TSHIRT","SIZE-L with Black, Blue and White variations",(SELECT CAT_ID FROM category WHERE CAT_NAME='CLOTHES'));
INSERT INTO PRODUCT VALUES(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",(SELECT CAT_ID FROM category WHERE CAT_NAME='ELECTRONICS'));
INSERT INTO PRODUCT VALUES(4,"OATS","Highly Nutritious from Nestle",(SELECT CAT_ID FROM category WHERE CAT_NAME='GROCERIES'));
INSERT INTO PRODUCT VALUES(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",(SELECT CAT_ID FROM category WHERE CAT_NAME='BOOKS'));
INSERT INTO PRODUCT VALUES(6,"MILK","1L Toned MIlk",(SELECT CAT_ID FROM category WHERE CAT_NAME='GROCERIES'));
INSERT INTO PRODUCT VALUES(7,"Boat EarPhones","1.5Meter long Dolby Atmos",(SELECT CAT_ID FROM category WHERE CAT_NAME='ELECTRONICS'));
INSERT INTO PRODUCT VALUES(8,"Jeans","Stretchable Denim Jeans with various sizes and color",(SELECT CAT_ID FROM category WHERE CAT_NAME='CLOTHES'));
INSERT INTO PRODUCT VALUES(9,"Project IGI","compatible with windows 7 and above",(SELECT CAT_ID FROM category WHERE CAT_NAME='GAMES'));
INSERT INTO PRODUCT VALUES(10,"Hoodie","Black GUCCI for 13 yrs and above",(SELECT CAT_ID FROM category WHERE CAT_NAME='CLOTHES'));
INSERT INTO PRODUCT VALUES(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",(SELECT CAT_ID FROM category WHERE CAT_NAME='BOOKS'));
INSERT INTO PRODUCT VALUES(12,"Train Your Brain","By Shireen Stephen",(SELECT CAT_ID FROM category WHERE CAT_NAME='BOOKS'));

-- Insert data in Supplier_pricing

INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(3,5,30000),
(1,2,1500),
 (3,5,30000),
 (5,1,3000),
 (2,3,2500),
 (4,1,1000),
 (12,2,780),
 (12,4,789),
 (3,1,31000),
 (1,5,1450),
 (4,2,999),
 (7,3,549),
 (7,4,529),
 (6,2,105),
 (6,1,99),
 (2,5,2999),
 (5,2,2999);

 -
 -- Insert data in order table
INSERT INTO `ORDER` VALUES (101,1500,"2021-10-06",2,1);
INSERT INTO `ORDER` VALUES(102,1000,"2021-10-12",3,5);
INSERT INTO `ORDER` VALUES(103,30000,"2021-09-16",5,2);
INSERT INTO `ORDER` VALUES(104,1500,"2021-10-05",1,1);
INSERT INTO `ORDER` VALUES(105,3000,"2021-08-16",4,3);
INSERT INTO `ORDER` VALUES(106,1450,"2021-08-18",1,9);
INSERT INTO `ORDER` VALUES(107,789,"2021-09-01",3,7);
INSERT INTO `ORDER` VALUES(108,780,"2021-09-07",5,6);
INSERT INTO `ORDER` VALUES(109,3000,"2021-0-10",5,3);
-- Only 9 orders were able to insert data starting from order no: 101-109

-- The below data were not able to enter because of integrity constraints
/*INSERT INTO `ORDER` VALUES(110,2500,"2021-09-10",2,4);
INSERT INTO `ORDER` VALUES(111,1000,"2021-09-15",4,5);
INSERT INTO `ORDER` VALUES(112,789,"2021-09-16",4,7);
INSERT INTO `ORDER` VALUES(113,31000,"2021-09-16",1,8);
INSERT INTO `ORDER` VALUES(114,1000,"2021-09-16",3,5);
INSERT INTO `ORDER` VALUES(115,3000,"2021-09-16",5,3);
INSERT INTO `ORDER` VALUES(116,99,"2021-09-17",2,14);*/



-- Insert data in Rating table
-- only order no 101-108
	INSERT INTO rating(ORD_ID,RAT_RATSTARS)
	VALUES
	(101,4),
	(102,3),
	(103,1),
	(104,2),
	(105,4),
	(106,3),
	(107,4),
	(108,4);


-- The below Data (109-116 orderids) were not able to enter because of integrity constraints
/*INSERT INTO rating(ORD_ID,RAT_RATSTARS)
VALUES
(109,3),
(110,5),
(111,3),
(112,4),
(113,2),
(114,1),
(115,1),
(116,0);*/
