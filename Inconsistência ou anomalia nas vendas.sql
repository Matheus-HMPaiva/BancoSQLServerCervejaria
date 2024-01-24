SELECT * FROM Vendas
WHERE QuantidadeVendida < 0 OR ValorTotal < 0 OR DataVenda IS NULL OR ProdutoID IS NULL;