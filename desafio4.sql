SELECT
	users.user_name AS usuario,
    IF(MAX(YEAR(history.reproduction_date)) = 2021,
		'Usuário ativo',
        'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.history AS history ON users.user_id = history.user_id
GROUP BY usuario
ORDER BY usuario;