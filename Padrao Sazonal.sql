SELECT 
    YEAR(DataVenda) AS Ano,
    MONTH(DataVenda) AS Mes,
    SUM(QuantidadeVendida) AS TotalVendido
FROM Vendas
GROUP BY YEAR(DataVenda), MONTH(DataVenda)
ORDER BY TotalVendido DESC;

-- Produtos foram mais vendidos nos meses de dezembro e fevereiro onde h� carnaval e ano novo