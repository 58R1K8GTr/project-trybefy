SELECT
  alb.title AS 'Álbum',
  SUM(son.duration_in_seconds) AS 'Duração'
FROM albums AS alb
  INNER JOIN songs AS son
    ON alb.id = son.album_id
GROUP BY alb.title
ORDER BY `Duração` DESC;