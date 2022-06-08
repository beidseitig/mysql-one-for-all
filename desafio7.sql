SELECT
	artists.artist_name AS artista,
    albuns.album_name AS album,
    COUNT(followers.artist_id) AS seguidores
FROM SpotifyClone.followers AS followers
INNER JOIN SpotifyClone.artists AS artists ON followers.artist_id = artists.artist_id
INNER JOIN SpotifyClone.albuns AS albuns ON artists.artist_id = albuns.artist_id
GROUP BY artista, album, followers.artist_id
ORDER BY seguidores DESC, artista, album;