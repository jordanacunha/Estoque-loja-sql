-- Inserção de dados de exemplo

INSERT INTO Categoria (nome) VALUES
('Eletrônicos'), ('Roupas'), ('Alimentos');

INSERT INTO Produto (nome, id_categoria, preco, quantidade_estoque) VALUES
('Smartphone XYZ', 1, 2500.00, 10),
('Camiseta Preta', 2, 50.00, 100),
('Arroz 5kg', 3, 25.00, 200);

INSERT INTO Fornecedor (nome, telefone, email) VALUES
('Tech Distribuidora', '(11) 99999-9999', 'contato@techdistribuidora.com'),
('Moda Brasil', '(21) 98888-8888', 'vendas@modabrasil.com'),
('Alimentos SA', '(31) 97777-7777', 'contato@alimentos.com');

INSERT INTO Compra (id_produto, id_fornecedor, quantidade, data_compra) VALUES
(1, 1, 5, '2025-08-01'),
(2, 2, 50, '2025-08-02'),
(3, 3, 100, '2025-08-03');

INSERT INTO Venda (id_produto, quantidade, data_venda) VALUES
(1, 2, '2025-08-05'),
(2, 5, '2025-08-06'),
(3, 10, '2025-08-07');
