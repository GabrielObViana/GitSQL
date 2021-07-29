SELECT * FROM desafio_conquer.order_items_dataset;

CREATE TABLE Cubo_Pedidos AS
SELECT t1.order_id AS ID_Pedido,
       t1.shipping_limit_date AS Data_Limite_Envio,
       t1.price AS Preco_Produto,
       t1.freight_value AS Preco_Frete,
        t2.order_status AS Status_Pedido,
		t2.order_delivered_customer_date AS Data_Entrega_Cliente,
		t2.order_estimated_delivery_date AS Data_Estimada_Entrega_Cliente,
	   t1.product_id AS ID_Produto,
            t3.product_category_name AS Categoria_Produto,
            t3.product_photos_qty AS Qtd_Fotos_Produto,
            t3.product_weight_g AS Peso_Produto,
	   t1.seller_id AS ID_Seller,
				t4.seller_city AS Cidade_Seller,
                t4.seller_state AS Estado_Seller
FROM desafio_conquer.order_items_dataset t1
		INNER JOIN desafio_conquer.orders_delivery_dataset t2 ON t1.order_id = t2.order_id
			INNER JOIN desafio_conquer.products_dataset t3 ON t1.product_id = t3.product_id
				INNER JOIN desafio_conquer.sellers_dataset t4 ON t1.seller_id = t4.seller_id;
