# BUSINESS-DATA-ANALYSIS-USING-SQL.
THIS PROJECT IS ABOUT ANALYSIS OF BUSSINESS DATASET USING SQL.
HOW TO ADD DATA TO TOUR SQL PLUS:
CHECK SQL LOADER IS PRESENT OR NOT ESLE INSTALL IT.

1.CREATE THE TABLE FIRST.

CREATE TABLE orders (
  order_id VARCHAR2(50),
  customer_id VARCHAR2(50),
  order_status VARCHAR2(20),
  order_purchase_timestamp VARCHAR2(30),
  order_approved_at VARCHAR2(30),
  order_delivered_carrier_date VARCHAR2(30),
  order_delivered_customer_date VARCHAR2(30),
  order_estimated_delivery_date VARCHAR2(30)
);


2.CREATE A CONTROL,EXAMPLE ORDERS.CTL

OPTIONS (SKIP=1)
LOAD DATA
INFILE 'olist_orders_dataset.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(order_id, customer_id, order_status, order_purchase_timestamp,
 order_approved_at, order_delivered_carrier_date,
 order_delivered_customer_date, order_estimated_delivery_date)


3.RUN sqlldr SCOTT/T**** control=orders.ctl log=orders.log INTO TERMINAL/COMMAND PROMPT NOT INSIDE SQL* PLUS.

4.CHECK THAT ITS WORKING OR NOT BY:

SELECT COUNT(*) FROM ORDERS;
SELECT * FROM ORDERS FETCH FIRST 5 ROWS ONLY;

QUESTIONS INSIGHTS THAT WE ANALYIS AFTER EXCEUTION OF QUERIES.

1.
Based on real outputs, for example: 
From 99,441 orders, about 97% were delivered. Cancelled and unavailable orders make up a small share, so operational problems are concentrated in a few percent of orders.

2.
Based on real outputs, for example: 
Orders grew from about 45,000 in 2017 to about 54,000 in 2018, a growth of roughly 20%. The 2016 figure is very small because the dataset only begins in late 2016.

3.
Based on real outputs, for example: 
About 3% of orders have no delivery date. Most are shipped, canceled or unavailable, meaning they never completed. A few orders marked delivered have no delivery date, which points to missing data that should be fixed at the source.

4.
Based on real outputs, for example: 
The most recent order in the dataset was placed on 17 October 2018, so the data covers about two years of activity.

5.
Based on real outputs, for example: 
CUSTOMER_ID IS UNIQUE PER ORDER IN THIS DATASET, SO REPEAT CUSTOMERS HAVE TO BE IDENTIFIED THROUGH CUSTOMER_UNIQUE_ID. THIS SHOWS THE IMPORTANCE OF UNDERSTANDING THE DATA MODEL BEFORE ANALYSING IT.” THAT NOTE ALSO SHOWS GOOD ANALYST HABITS TO RECRUITERS.
