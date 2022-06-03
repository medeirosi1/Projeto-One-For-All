SELECT u.user_name AS usuario, COUNT(h.data_repro) AS qtde_musicas_ouvidas, ROUND(SUM(c.duração)/60, 2) AS total_minutos
FROM SpotifyClone.Usuario as u
INNER JOIN SpotifyClone.Historico_de_Reproduções as h
ON u.id = h.usuario_id
INNER JOIN SpotifyClone.Canções as c
ON h.cançao_id = c.id
GROUP BY u.user_name
;