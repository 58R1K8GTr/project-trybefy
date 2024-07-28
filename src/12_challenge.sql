SELECT
  name AS 'Artista',
  COUNT(*) AS 'Quantidade de álbuns'
FROM albums AS alb
  INNER JOIN artists AS art
    ON alb.artist_id = art.id
GROUP BY art.name
ORDER BY COUNT(alb.id) DESC, art.name