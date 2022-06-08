SELECT
	musics.music_name AS nome,
	COUNT(history.music_id) AS reproducoes
FROM SpotifyClone.musics AS musics
INNER JOIN SpotifyClone.history AS history ON musics.music_id = history.music_id
INNER JOIN SpotifyClone.users AS users ON history.user_id = users.user_id
INNER JOIN SpotifyClone.plans AS plans ON users.plan_id = plans.plan_id
WHERE plans.plan_name = "gratuito" OR plans.plan_name = "pessoal"
GROUP BY musics.music_name;