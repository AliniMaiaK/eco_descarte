-- Listar todos os descartes com detalhes
SELECT D.DescarteID, R.NomeResiduo, L.NomeLocal, D.DataDescarte
FROM Descarte D
JOIN TiposResiduos R ON D.ResiduoID = R.ResiduoID
JOIN LocaisDescarte L ON D.LocalID = L.LocalID;
