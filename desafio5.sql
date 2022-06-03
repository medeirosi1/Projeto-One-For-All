SELECT c.musicas AS cancao, Count(h.data_repro)	as reproducoes
FROM SpotifyClone.Canções as c
INNER JOIN SpotifyClone.Historico_de_Reproduções as h
ON c.id = h.cançao_id
GROUP BY c.musicas
ORDER BY reproducoes DESC, cancao
LIMIT 2;