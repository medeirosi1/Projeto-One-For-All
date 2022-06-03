SELECT a.artist_name AS artista, b.name_album as album
FROM SpotifyClone.Album as b
INNER JOIN SpotifyClone.Artista as a
ON a.artist_id = b.artist_id
GROUP BY a.artist_name, b.name_album
HAVING a.artist_name = "Walter Phoenix"
ORDER BY album;