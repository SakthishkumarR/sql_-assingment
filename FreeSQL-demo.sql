SELECT cust_id, cust_first_name, cust_last_name, cust_gender, cust_marital_status
FROM sh.customers
WHERE cust_gender = 'F';


SELECT *
FROM sh.customers
WHERE cust_last_name LIKE 'S%'
  AND cust_year_of_birth > 1970;


  SELECT prod_id, prod_name, prod_category, prod_list_price
FROM sh.products
WHERE prod_list_price BETWEEN 100 AND 500;

SELECT *
FROM sh.products
WHERE prod_min_price < 50
  AND prod_status = 'available';

SELECT prod_id, cust_id, quantity_sold, amount_sold
FROM sh.sales
WHERE amount_sold > 1000;

SELECT *
FROM sh.sales
WHERE quantity_sold > 2
  AND channel_id = 3;


  SELECT channel_id, channel_desc
FROM sh.channels
WHERE channel_desc LIKE '%Direct%';

SELECT promo_id, promo_name, promo_cost, promo_category
FROM sh.promotions
WHERE promo_cost > 1000;



SELECT *
FROM sh.promotions
WHERE promo_end_date > promo_begin_date
  AND promo_cost > 500;

  SELECT country_id, country_name, region_id
FROM sh.countries
WHERE region_id = 52790;

SELECT time_id, day_name, calendar_month_name, calendar_year
FROM sh.times
WHERE calendar_year = 2000;


SELECT *
FROM sh.times
WHERE calendar_month_name = 'December'
  AND calendar_year = 2001;

  SELECT prod_id, time_id, unit_cost, unit_price
FROM sh.costs
WHERE unit_price > unit_cost;

SELECT *
FROM sh.costs
WHERE unit_cost > 100
  AND unit_price < 1000;


  SELECT cust_id, education, occupation, household_size
FROM sh.supplementary_demographics
WHERE household_size > 3;

SELECT cust_marital_status, COUNT(*) AS total_customers
FROM sh.customers
GROUP BY cust_marital_status;

SELECT cust_gender, AVG(cust_year_of_birth) AS avg_year_of_birth
FROM sh.customers
GROUP BY cust_gender;

SELECT prod_category, AVG(prod_list_price) AS avg_list_price
FROM sh.products
GROUP BY prod_category;


SELECT prod_subcategory, MAX(prod_min_price) AS max_min_price
FROM sh.products
GROUP BY prod_subcategory;


SELECT channel_id, SUM(amount_sold) AS total_sales_amount
FROM sh.sales
GROUP BY channel_id;


SELECT prod_id, SUM(quantity_sold) AS total_quantity_sold
FROM sh.sales
GROUP BY prod_id;


SELECT promo_id, AVG(amount_sold) AS avg_sales_amount
FROM sh.sales
GROUP BY promo_id;

SELECT promo_category, SUM(promo_cost) AS total_promo_cost
FROM sh.promotions
GROUP BY promo_category;


SELECT region_id, COUNT(*) AS country_count
FROM sh.countries
GROUP BY region_id;


SELECT prod_id, AVG(unit_cost) AS avg_unit_cost
FROM sh.costs
GROUP BY prod_id;


SELECT cust_gender, cust_marital_status, COUNT(*) AS total_customers
FROM sh.customers
GROUP BY cust_gender, cust_marital_status;

SELECT prod_category, prod_subcategory, COUNT(*) AS total_products
FROM sh.products
GROUP BY prod_category, prod_subcategory;


SELECT prod_id, channel_id, SUM(amount_sold) AS total_sales_amount
FROM sh.sales
GROUP BY prod_id, channel_id;

SELECT channel_id, promo_id, SUM(quantity_sold) AS total_quantity_sold
FROM sh.sales
GROUP BY channel_id, promo_id;

SELECT prod_id, promo_id, AVG(unit_cost) AS avg_unit_cost
FROM sh.costs
GROUP BY prod_id, promo_id;


SELECT channel_id, SUM(amount_sold) AS total_sales_amount
FROM sh.sales
WHERE amount_sold > 500
GROUP BY channel_id;



SELECT prod_category, AVG(prod_list_price) AS avg_list_price
FROM sh.products
WHERE prod_list_price > 100
GROUP BY prod_category;



SELECT cust_marital_status, COUNT(*) AS total_customers
FROM sh.customers
WHERE cust_year_of_birth > 1970
GROUP BY cust_marital_status;



SELECT promo_category, AVG(promo_cost) AS avg_promo_cost
FROM sh.promotions
WHERE promo_cost > 500
GROUP BY promo_category;

SELECT prod_id, MAX(unit_price) AS max_unit_price
FROM sh.costs
WHERE unit_cost > 50
GROUP BY prod_id;


SELECT cust_marital_status, COUNT(*) AS total_customers
FROM sh.customers
GROUP BY cust_marital_status
HAVING COUNT(*) > 100;


SELECT prod_category, AVG(prod_list_price) AS avg_list_price
FROM sh.products
GROUP BY prod_category
HAVING AVG(prod_list_price) > 500;




SELECT channel_id, SUM(amount_sold) AS total_sales_amount
FROM sh.sales
GROUP BY channel_id
HAVING SUM(amount_sold) > 100000;


SELECT promo_category, AVG(promo_cost) AS avg_promo_cost
FROM sh.promotions
GROUP BY promo_category
HAVING AVG(promo_cost) > 1000;

SELECT prod_id, AVG(unit_price) AS avg_unit_price
FROM sh.costs
GROUP BY prod_id
HAVING AVG(unit_price) > 500;