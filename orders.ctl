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
