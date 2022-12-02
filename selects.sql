-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados
-- 1)
SELECT 
pedidos.id,
pedidos.status,
pedidos.cliente_id,
produtos.id,
produtos.nome,
produtos.tipo,
produtos.preco,
produtos.pts_de_lealdade
FROM  produtos,pedidos,clientes WHERE pedidos.id = clientes.id;
-- 2)
SELECT
clientes.nome
FROM pedidos 
JOIN produtos_pedidos ON pedidos.id = produtos_pedidos.pedido_id
JOIN produtos ON produtos.id = produtos_pedidos.produto_id 
JOIN clientes ON  clientes.id = pedidos.cliente_id
WHERE produtos.nome = 'Fritas';
-- 3)
SELECT
pedidos.id
FROM pedidos 
JOIN produtos_pedidos ON pedidos.id = produtos_pedidos.pedido_id
JOIN produtos ON produtos.id  = produtos_pedidos.produto_id
WHERE produtos.nome = 'Fritas';
-- 4)
SELECT 
ROUND(SUM(produtos.preco)::numeric,2) 
FROM produtos 
JOIN produtos_pedidos ON produtos.id = produtos_pedidos.produto_id
JOIN pedidos ON pedidos.id = produtos_pedidos.pedido_id
JOIN clientes ON clientes.id = produtos_pedidos.pedido_id
WHERE clientes.nome = 'Laura';
-- 5)
SELECT 
  produtos.nome,
  count(produtos.id)
FROM produtos 
JOIN produtos_pedidos ON produtos.id = produtos_pedidos.produto_id
JOIN pedidos ON pedidos.id = produtos_pedidos.pedido_id
WHERE produtos_pedidos.pedido_id >= 0
GROUP BY produtos.nome;

