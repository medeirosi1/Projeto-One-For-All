SELECT c.musicas AS nome, Count(h.data_repro)	as reproducoes
FROM SpotifyClone.Canções as c
INNER JOIN SpotifyClone.Historico_de_Reproduções as h
ON c.id = h.cançao_id
INNER JOIN SpotifyClone.Usuario as u
ON h.usuario_id = u.id
INNER JOIN SpotifyClone.Plano as p
ON u.plano_id = p.id
WHERE p.type_plano IN ('gratuito', 'pessoal')
GROUP BY c.musicas;