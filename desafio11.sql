SELECT musicas AS nome_musica,
CASE
	WHEN musicas LIKE '%Streets' THEN REPLACE(musicas, 'Streets', 'Code Review')
    WHEN musicas LIKE '%Her Own' THEN REPLACE(musicas, 'Her Own', 'Trybe')
	WHEN musicas LIKE '%Inner Fire' THEN REPLACE(musicas, 'Inner Fire', 'Project')
	WHEN musicas LIKE '%Silly' THEN REPLACE(musicas, 'Silly', 'Nice')
	WHEN musicas LIKE '%Circus' THEN REPLACE(musicas, 'Circus', 'Pull Request')
END AS novo_nome
FROM SpotifyClone.Canções
WHERE musicas LIKE '%Streets'
OR musicas LIKE '%Her Own'
OR musicas LIKE '%Inner Fire'
OR musicas LIKE '%Silly'
OR musicas LIKE '%Circus'
ORDER BY musicas;