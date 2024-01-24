

-- Tabela de Produ��o
CREATE TABLE Producao (
    IDProducao INT PRIMARY KEY,
    DataProducao DATE,
    ProdutoID INT,
    QuantidadeProduzida INT,
    CONSTRAINT FK_Producao_Produto FOREIGN KEY (ProdutoID) REFERENCES Produtos(IDProduto)
);

-- Tabela de Vendas
CREATE TABLE Vendas (
    IDVenda INT PRIMARY KEY,
    DataVenda DATE,
    ProdutoID INT,
    QuantidadeVendida INT,
    ValorTotal DECIMAL(10, 2),
    CONSTRAINT FK_Vendas_Produto FOREIGN KEY (ProdutoID) REFERENCES Produtos(IDProduto)
);

-- Tabela de Devolu��es
CREATE TABLE Devolucoes (
    IDDevolucao INT PRIMARY KEY,
    DataDevolucao DATE,
    ProdutoID INT,
    QuantidadeDevolvida INT,
    MotivoDevolucao VARCHAR(255),
    CONSTRAINT FK_Devolucoes_Produto FOREIGN KEY (ProdutoID) REFERENCES Produtos(IDProduto)
);

-- Tabela de Feedback dos Clientes
CREATE TABLE FeedbackClientes (
    IDFeedback INT PRIMARY KEY,
    DataFeedback DATE,
    ClienteID INT,
    NotaAvaliacao INT,
    Comentario VARCHAR(255),
    CONSTRAINT FK_FeedbackClientes_Cliente FOREIGN KEY (ClienteID) REFERENCES Clientes(IDCliente)
);

-- Tabela de Produtos

CREATE TABLE Produtos (
    IDProduto INT PRIMARY KEY,
    NomeProduto VARCHAR(100),
    Categoria VARCHAR(50),
    PrecoUnitario DECIMAL(8, 2)
);

-- Tabela de Clientes
CREATE TABLE Clientes (
    IDCliente INT PRIMARY KEY,
    NomeCliente VARCHAR(100),
    EmailCliente VARCHAR(100),
    TelefoneCliente VARCHAR(20)
);
