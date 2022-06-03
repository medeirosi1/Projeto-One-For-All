SELECT u.user_name AS usuario, 
IF(MAX(YEAR(h.data_repro)) = 2021, "Usuário ativo", "Usuário inativo") AS condicao_usuario
FROM SpotifyClone.Usuario as u
INNER JOIN SpotifyClone.Historico_de_Reproduções as h
ON u.id = h.usuario_id
GROUP BY u.user_name;