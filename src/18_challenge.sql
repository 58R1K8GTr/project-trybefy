SELECT
  title AS 'Título',
  duration_in_seconds AS 'Duração'
FROM songs AS son
WHERE son.duration_in_seconds <= 240
ORDER BY duration_in_seconds;