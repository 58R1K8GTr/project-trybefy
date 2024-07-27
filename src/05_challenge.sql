SELECT
  full_name AS 'Nome completo',
  birthday AS 'Data de nascimento'
FROM users AS usr
WHERE usr.active AND year(usr.birthday) >= 1990;