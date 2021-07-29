SELECT * FROM desafio_conquer.cubo_pedidos;

SELECT Categoria_Produto
	min(preco_produto+preco_frete) AS menor_preco_total_pedido,
    max(preco_produto+preco_frete) AS maior_preco_total_pedido,
    sum(preco_produto+preco_frete) AS soma_preco_total_pedido,
    avg(preco_produto+preco_frete) AS media_preco_total_pedido,
	count(preco_produto+preco_frete) AS count_preco_total_pedido,
FROM desafio_conquer.cubo_pedidos
GROUP BY Categoria_Produto;
