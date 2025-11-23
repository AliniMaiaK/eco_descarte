-- Tipos de resíduos
INSERT INTO TiposResiduos (NomeResiduo) VALUES
('Celular'),
('Notebook'),
('Bateria'),
('Pilha');

-- Locais de descarte
INSERT INTO LocaisDescarte (NomeLocal) VALUES
('Shopping Boulevard Vila Velha'),
('Prefeitura de Vila Velha');

-- Registrar descartes
INSERT INTO Descarte (ResiduoID, LocalID) VALUES
(1, 1),
(2, 2);
