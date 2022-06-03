SELECT Count(h.data_repro)	as quantidade_musicas_no_historico
FROM SpotifyClone.Usuario as u
INNER JOIN SpotifyClone.Historico_de_Reproduções as h
ON u.id = h.usuario_id
GROUP BY u.user_name
HAVING u.user_name = "Bill";