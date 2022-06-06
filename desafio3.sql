SELECT 
	users.user_name AS "usuario",
	COUNT(history.user_id) AS "qtde_musicas_ouvidas",
    ROUND(SUM(musics.music_duration/60), 2) AS "total_minutos"
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.history AS history ON users.user_id = history.user_id
INNER JOIN SpotifyClone.musics AS musics ON history.music_id = musics.music_id
GROUP BY users.user_id
ORDER BY usuario;