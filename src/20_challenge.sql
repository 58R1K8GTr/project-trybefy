SELECT
  name AS 'Artista',
  alb.title AS 'Álbum',
  son.title AS 'Música'
FROM songs AS son
  INNER JOIN albums AS alb
    ON son.album_id = alb.id
  INNER JOIN artists AS art
    ON art.id = alb.artist_id
WHERE name NOT LIKE '%The%Beatles%'
ORDER BY name, alb.title, son.title;