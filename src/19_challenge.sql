SELECT
  son.title AS 'Título',
  duration_in_seconds AS 'Duração',
  alb.title AS 'Álbum'
FROM songs AS son
  INNER JOIN albums AS alb
    ON son.album_id = alb.id
WHERE duration_in_seconds BETWEEN 300 AND 480
ORDER BY duration_in_seconds;