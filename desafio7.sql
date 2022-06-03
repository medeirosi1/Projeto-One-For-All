SELECT a.artist_name AS artista, b.name_album as album, COUNT(c.artist_id) AS seguidores
FROM SpotifyClone.Album as b
INNER JOIN SpotifyClone.Artista as a
ON a.artist_id = b.artist_id
INNER JOIN SpotifyClone.Artista_Seguidos as c
ON a.artist_id = c.artist_id
GROUP BY a.artist_name, b.name_album
ORDER BY seguidores DESC, artista, album;