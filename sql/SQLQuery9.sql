USE LixoEletronico

-- Tabela de tipos de resíduos
CREATE TABLE TiposResiduos (
    ResiduoID INT PRIMARY KEY IDENTITY(1,1),
    NomeResiduo NVARCHAR(100) NOT NULL
);

-- Tabela de locais de descarte
CREATE TABLE LocaisDescarte (
    LocalID INT PRIMARY KEY IDENTITY(1,1),
    NomeLocal NVARCHAR(100) NOT NULL
);

-- Tabela de registros de descarte
CREATE TABLE Descarte (
    DescarteID INT PRIMARY KEY IDENTITY(1,1),
    ResiduoID INT NOT NULL,
    LocalID INT NOT NULL,
    DataDescarte DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (ResiduoID) REFERENCES TiposResiduos(ResiduoID),
    FOREIGN KEY (LocalID) REFERENCES LocaisDescarte(LocalID)
);
