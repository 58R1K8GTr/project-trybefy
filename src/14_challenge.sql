SELECT
  name AS 'Artista',
  GROUP_CONCAT(title) AS 'Álbuns'
FROM albums AS alb
  INNER JOIN artists AS art
    ON alb.artist_id = art.id
GROUP BY art.name
ORDER BY art.name;