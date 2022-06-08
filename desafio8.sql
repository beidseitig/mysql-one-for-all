SELECT
	artists.artist_name AS artista,
    albuns.album_name AS album
FROM SpotifyClone.artists AS artists
INNER JOIN SpotifyClone.albuns AS albuns ON artists.artist_id = albuns.artist_id
WHERE artists.artist_name LIKE "Walter Phoenix";