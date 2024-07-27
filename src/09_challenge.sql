SELECT
  name AS 'Plano',
  COUNT(*) AS 'Quantidade de usuários'
FROM users
  INNER JOIN plans
    ON users.plan_id = plans.id
GROUP BY plan_id;