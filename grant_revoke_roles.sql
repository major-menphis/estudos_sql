# uso de DCL para controle de acesso
USE world;

# criar usuários
CREATE USER 'proprietario'@'localhost' IDENTIFIED BY 'senha123';
CREATE USER 'caixa'@'localhost' IDENTIFIED BY 'senha456';

# conceder acesso ao usuario proprietario
GRANT SELECT, INSERT, UPDATE, DELETE
ON world.city
TO 'proprietario'@'localhost';

# conceder acesso ao usuario caixa
GRANT SELECT
ON world.city
TO 'caixa'@'localhost';

# verificar privilégios
SHOW GRANTS FOR 'proprietario'@'localhost';
SHOW GRANTS FOR 'caixa'@'localhost';

# revogar o privilegio do caixa
REVOKE SELECT
ON world.city
FROM 'caixa'@'localhost';

# criar roles
CREATE ROLE 'roleteste'@'localhost';

# atribui os privilegio para a role
GRANT SELECT ON world.city TO 'roleteste'@'localhost';

# atribui o usuario a role criada
CREATE USER 'testerole'@'localhost' IDENTIFIED BY 'senha123';
GRANT 'roleteste'@'localhost' TO 'testerole'@'localhost';

# verificar privilegio de uma role
SHOW GRANTS FOR 'roleteste'@'localhost';

# apagar role
DROP ROLE 'roleteste'@'localhost';