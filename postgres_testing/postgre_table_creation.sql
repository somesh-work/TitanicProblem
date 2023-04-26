
drop table if exists test_sales_data_december;

create table test_sales_data_december
(
order_id varchar
,product varchar
,order_qty varchar
,price_per_item varchar
,order_dt varchar
,purchase_addr varchar
);

copy public.test_sales_data_december 
(order_id, product, order_qty, price_per_item, order_dt, purchase_addr) 
FROM '/Users/someshkumar/Documents/Postgres/SalesProblem/Sales_December_2019.csv' 
DELIMITER ',' 
CSV
HEADER
ENCODING 'UTF8' 
QUOTE '"' 
ESCAPE '''';

select * from test_sales_data_december limit 10;

