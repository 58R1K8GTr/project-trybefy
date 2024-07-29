SELECT
  name AS 'Artista',
  COUNT(*) AS 'Quantidade de músicas'
FROM artists AS art
  INNER JOIN albums AS alb
    ON alb.artist_id = art.id
  INNER JOIN songs AS son
    ON son.album_id = alb.id
GROUP BY art.id
ORDER BY `Quantidade de músicas` DESC, name
LIMIT 3;