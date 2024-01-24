SELECT 
    P.IDProduto,
    P.NomeProduto,
    SUM(V.QuantidadeVendida) AS TotalVendido
FROM Produtos P
JOIN Vendas V ON P.IDProduto = V.ProdutoID
GROUP BY P.IDProduto, P.NomeProduto
ORDER BY TotalVendido DESC;


