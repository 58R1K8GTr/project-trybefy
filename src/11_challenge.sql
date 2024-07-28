SELECT
  title AS 'Album',
  release_year AS 'Ano de lançamento',
  name AS 'Artista'
FROM albums AS alb
  INNER JOIN artists AS art
    ON art.id = alb.artist_id
WHERE title LIKE '%you%'
ORDER BY release_year;