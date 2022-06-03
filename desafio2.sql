SELECT COUNT(c.id) AS cancoes, COUNT( DISTINCT a.artist_name) AS artistas, COUNT( DISTINCT b.name_album) AS albuns
FROM SpotifyClone.Artista as a
INNER JOIN SpotifyClone.Album as b
ON a.artist_id = b.artist_id
INNER JOIN SpotifyClone.Canções as c
ON b.album_id = c.album_id
;