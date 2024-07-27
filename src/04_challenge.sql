SELECT
  full_name AS 'Nome completo',
  email AS 'E-mail'
FROM users AS usr
WHERE usr.active;