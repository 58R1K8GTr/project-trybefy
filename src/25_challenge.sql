SELECT
  alb.title AS 'Álbum',
  COUNT(hps.played_at) AS 'Quantidade de músicas reproduzidas'
FROM albums AS alb
  INNER JOIN songs AS son
    ON alb.id = son.album_id
  INNER JOIN history_play_songs AS hps
    ON hps.song_id = son.id
GROUP BY son.album_id
ORDER BY
  `Quantidade de músicas reproduzidas` DESC,
  alb.title
LIMIT 5;