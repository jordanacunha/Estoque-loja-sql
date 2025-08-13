-- Consultas de exemplo

-- 1. Listar todos os produtos e suas categorias
SELECT p.nome AS produto, c.nome AS categoria, p.preco, p.quantidade_estoque
FROM Produto p
JOIN Categoria c ON p.id_categoria = c.id_categoria;

-- 2. Mostrar as vendas realizadas
SELECT v.id_venda, p.nome AS produto, v.quantidade, v.data_venda
FROM Venda v
JOIN Produto p ON v.id_produto = p.id_produto;

-- 3. Mostrar compras realizadas
SELECT co.id_compra, p.nome AS produto, f.nome AS fornecedor, co.quantidade, co.data_compra
FROM Compra co
JOIN Produto p ON co.id_produto = p.id_produto
JOIN Fornecedor f ON co.id_fornecedor = f.id_fornecedor;

-- 4. Produtos com estoque baixo
SELECT nome, quantidade_estoque
FROM Produto
WHERE quantidade_estoque < 10;

-- 5. Total de vendas por produto
SELECT p.nome, SUM(v.quantidade) AS total_vendido
FROM Venda v
JOIN Produto p ON v.id_produto = p.id_produto
GROUP BY p.nome;

-- 6. Fornecedores e produtos que fornecem
SELECT f.nome AS fornecedor, p.nome AS produto
FROM Fornecedor f
JOIN Compra co ON f.id_fornecedor = co.id_fornecedor
JOIN Produto p ON co.id_produto = p.id_produto;
