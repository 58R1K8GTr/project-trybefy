SELECT
  full_name AS 'Nome',
  COUNT(*) AS 'Quantidade de músicas reproduzidas'
FROM users AS usr
  INNER JOIN history_play_songs AS hps
    ON hps.user_id = usr.id
  INNER JOIN songs AS son
    ON hps.song_id = son.id
GROUP BY usr.id
ORDER BY
  `Quantidade de músicas reproduzidas` DESC,
  full_name;