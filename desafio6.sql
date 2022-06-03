SELECT MIN(p.valor) AS faturamento_minimo, MAX(p.valor) AS faturamento_maximo,
ROUND(AVG(p.valor), 2) AS faturamento_medio, SUM(p.valor) AS faturamento_total
FROM SpotifyClone.Plano as p
INNER JOIN SpotifyClone.Usuario as u
ON p.id = u.plano_id;