-- Atualizar nome de resíduo
UPDATE TiposResiduos
SET NomeResiduo = 'Celular'
WHERE ResiduoID = 1;

-- Remover descarte antes de remover resíduo ou local
DELETE FROM Descarte WHERE ResiduoID = 4 OR LocalID = 2;

-- Remover tipo de resíduo
DELETE FROM TiposResiduos WHERE ResiduoID = 4;

-- Remover local de descarte
DELETE FROM LocaisDescarte WHERE LocalID = 2;
