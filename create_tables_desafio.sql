use desafio_conquer;

CREATE TABLE `order_items_dataset` (
  `order_id` varchar(300),
  `order_item_id` int ,
  `product_id` varchar(300),
  `seller_id` varchar(300),
  `shipping_limit_date` varchar(300),
  `price` double ,
  `freight_value` double,
  primary key(order_id,order_item_id),
  index(product_id),
  index(order_id)
);

CREATE TABLE `orders_delivery_dataset` (
  `order_id` varchar(300),
  `customer_id` varchar(300),
  `order_status` varchar(300),
  `order_purchase_timestamp` varchar(300),
  `order_approved_at` varchar(300),
  `order_delivered_carrier_date` varchar(300),
  `order_delivered_customer_date` varchar(300),
  `order_estimated_delivery_date` varchar(300),
  primary key(order_id)
) ;

CREATE TABLE `products_dataset` (
  `product_id` varchar(300),
  `product_category_name` varchar(300),
  `product_name_lenght` int ,
  `product_description_lenght` int ,
  `product_photos_qty` int ,
  `product_weight_g` int ,
  `product_length_cm` int ,
  `product_height_cm` int ,
  `product_width_cm` int ,
  PRIMARY KEY(product_id)
);

CREATE TABLE `sellers_dataset` (
  `seller_id` varchar(300),
  `seller_zip_code_prefix` varchar(300),
  `seller_city` varchar(300),
  `seller_state` varchar(300),
  PRIMARY KEY(seller_id)
) ;

