# Sistema de Controle de Estoque - Loja

## Descrição
Este projeto é um banco de dados para gerenciar o estoque de uma loja, registrando produtos, categorias, fornecedores, compras e vendas.

## Problema Modelado
Muitas lojas têm dificuldades para acompanhar entradas e saídas de produtos, resultando em falta de estoque ou excesso. Este sistema permite monitorar todas as movimentações, facilitando decisões de compra e venda.

## Entidades e Relacionamentos
- **Categoria**: Classifica os produtos.
- **Produto**: Item vendido pela loja.
- **Fornecedor**: Empresa ou pessoa que fornece produtos.
- **Compra**: Registro de aquisição de produtos.
- **Venda**: Registro de saída de produtos para clientes.

Relacionamentos:
- Um produto pertence a uma categoria.
- Uma compra envolve um produto e um fornecedor.
- Uma venda envolve um produto.

## Como executar no MySQL
1. Crie um banco de dados:  
   ```sql
   CREATE DATABASE estoque_loja;
   USE estoque_loja;
   ```
2. Execute o script `create_tables.sql`.
3. Execute o script `insert_data.sql`.
4. Rode as consultas do `queries.sql`.

## Como gerar o DER
O arquivo `der.txt` está no formato compatível com o [dbdiagram.io](https://dbdiagram.io/).
