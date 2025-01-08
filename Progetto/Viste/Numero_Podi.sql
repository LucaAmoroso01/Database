CREATE VIEW Vista_Podi AS
SELECT P.nome_pilota, P.cognome_pilota, S.nome_scuderia, 
    (SELECT COUNT(*) 
     FROM Disputa_Gara DG 
     WHERE DG.numero_pilota = P.numero_pilota AND DG.posizione_finale_gara <= 3) AS numero_podi
FROM Pilota P
JOIN Scuderia S ON P.nome_scuderia = S.nome_scuderia
ORDER BY numero_podi DESC
