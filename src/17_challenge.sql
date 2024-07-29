SELECT
  son.title AS 'Título'
FROM songs AS son
  INNER JOIN albums AS alb
    ON alb.id = son.album_id
WHERE alb.title LIKE '%Thriller%'
ORDER BY son.title;