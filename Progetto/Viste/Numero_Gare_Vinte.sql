CREATE VIEW Vista_GareVinte AS
SELECT P.nome_pilota, P.cognome_pilota, S.nome_scuderia, COUNT(DG.posizione_finale_gara) AS gare_vinte
FROM (Pilota P JOIN Disputa_Gara DG ON P.numero_pilota = DG.numero_pilota)
JOIN Scuderia S ON P.nome_scuderia = S.nome_scuderia
WHERE DG.posizione_finale_gara = 1
GROUP BY P.nome_pilota, P.cognome_pilota, S.nome_scuderia
ORDER BY gare_vinte DESC;