USE WAREHOUSE MYWARE;
USE DATABASE MYDATABASE;






CREATE OR REPLACE TABLE ASSIGNMENT2(
             order_id VARCHAR(30) ,
             order_date DATE PRIMARY KEY,
             ship_date  DATE,
             ship_mode VARCHAR(35),
             customer_name VARCHAR(35),
             segment VARCHAR(25),
             state VARCHAR(50),
             country VARCHAR(50),
             market VARCHAR(40),
             region VARCHAR(40),
             product_id VARCHAR(40),
             category VARCHAR(40),
             sub_category VARCHAR(40),
             product_name VARCHAR(200),
             sales INT,
             quantity INT,
             discount INT,
             profit INT,
             shipping_cost INT,
             order_priority VARCHAR(40),
             year VARCHAR(10)

);

describe table assignment2;



alter table assignment2  ----Drop the Primary Key--------
drop primary key;

alter table assignment2         ------------Create New Primary Key--------
add constraint pk primary key(ORDER_ID);

-------------------------order_extract-----------------------
select ORDER_ID from assignment2
limit 10;

select ORDER_ID,len(ORDER_ID)as length from assignment2
limit 10;

select ORDER_ID,substring(ORDER_ID,9)
from assignment2
limit 10;






alter table assignment2
add column order_extract int default 0;

update assignment2 set order_extract=substring(order_id,9);

--------------------------------------------------------------------




describe table assignment2;

select substring(ORDER_ID,9)
from assignment2;

------------- DISCOUNT FLAG-----------

select *,
       case 
           when DISCOUNT>0 then 'YES'
           else 'NO'
       end AS DIS_FLAG
from assignment2
limit 5;

----------------- Order Procee----------