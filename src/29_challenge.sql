SELECT
  name AS 'Artista'
FROM artists AS art
  INNER JOIN artists_followers AS arf
    ON arf.artist_id = art.id
  INNER JOIN users AS usr
    ON arf.user_id = usr.id
GROUP BY name
HAVING MAX(usr.id)
ORDER BY MAX(usr.id) DESC
LIMIT 1;