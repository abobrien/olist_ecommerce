CREATE TABLE olist_customers (
	customer_id char(32),
	customer_unique_id char(32),
	customer_zip_code_prefix varchar(5),
	customer_state char(2)
	);

CREATE TABLE olist_geolocation (
	geolocation_zip_code_prefix varchar(5),
	geolocation_lat real,
	geolocation_lng real,
	geolocation_city varchar(255),
	geolocation_state char(2)
	);

CREATE TABLE olist_order_items (
	order_id char(32),
	order_item_id int,
	product_id char(32),
	seller_id char(32),
	shipping_limit_date datetime2,
	price float(2),
	freight_value float(2)
	);

CREATE TABLE olist_order_payments (
	order_id char(32),
	payment_sequential int,
	payment_type varchar(255),
	payment_installations int,
	payment_value float(2)
	);

CREATE TABLE olist_order_reviews (
	review_id char(32),
	order_id char(32),
	review_score int,
	review_comment_title varchar(255),
	review_comment_message varchar(255),
	review_creation_date datetime2,
	review_answer_timestamp datetime2
	);

CREATE TABLE olist_orders (
	order_id char(32),
	customer_id char(32),
	order_status varchar(255),
	order_purchase_timestamp datetime2,
	order_approved_at datetime2,
	order_delivered_carrier_date datetime2,
	order_delivered_customer_date datetime2,
	order_estimated_delivery_date datetime2
	);

CREATE TABLE olist_products (
	product_id char(32),
	product_category_name varchar(255),	
	product_name_length int,
	product_description_length int,
	product_photos_qty int,
	product_weight_g int,	
	product_length_cm int,	
	product_height_cm int,
	product_width_cm int
	);

CREATE TABLE olist_sellers (
	seller_id char(32),
	seller_zip_code_prefix varchar(5),
	seller_city varchar(255),
	seller_state char(2)
	);

CREATE TABLE olist_product_category_name_translation (
	product_category_name varchar(255),
	product_category_name_english varchar(255)
	);
