SELECT
  usr.full_name AS 'Pessoa usuária',
  COUNT(*) AS 'Artistas que segue'
FROM users AS usr
  INNER JOIN artists_followers AS arf
    ON usr.id = arf.user_id
  INNER JOIN artists AS art
    ON art.id = arf.artist_id
GROUP BY usr.full_name
ORDER BY usr.full_name;