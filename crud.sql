-- Aqui você deve colocar os códigos SQL referentes às
-- Simulações de um CRUD

-- Criação

-- 1)



-- 2)



-- 3)



-- Leitura

-- 1)
SELECT 
 clientes.id,
 clientes.nome,
 clientes.lealdade ,
 pedidos.id ,
 pedidos.status,
 produtos.id ,
 produtos.nome,
 produtos.tipo,
 produtos.preco ,
 produtos.pts_de_lealdade
FROM clientes
JOIN pedidos ON pedidos.cliente_id  = clientes.id
JOIN produtos_pedidos ON produtos_pedidos.pedido_id = pedidos.id 
JOIN produtos ON produtos_pedidos.produto_id = produtos.id 
WHERE clientes.nome = 'Georgia';


-- Atualização

-- 1)



-- Deleção

-- 1)


