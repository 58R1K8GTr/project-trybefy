SELECT
  name AS 'Artista'
FROM artists AS art
  INNER JOIN albums AS alb
    ON art.id = alb.artist_id
GROUP BY art.name
HAVING COUNT(alb.title) >= 3
ORDER BY art.name;