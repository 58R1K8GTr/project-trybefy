SELECT
  art.name AS 'Artista',
  COUNT(*) AS 'Quantidade de músicas reproduzidas'
FROM artists AS art
  INNER JOIN albums AS alb
    ON art.id = alb.artist_id
  INNER JOIN songs AS son
    ON son.album_id = alb.id
  INNER JOIN history_play_songs AS hps
    ON hps.song_id = son.id
GROUP BY `Artista`
HAVING `Quantidade de músicas reproduzidas` >= 10
ORDER BY art.name;