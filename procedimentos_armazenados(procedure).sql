USE World;

# criação de procedimentos armazenados (sem retorno definido)
CREATE PROCEDURE verPopulacao(varPopulacao INT)
SELECT Name, CONCAT('A população é ', Population) AS População
FROM city
WHERE ID = varPopulacao;

# executar a procedure
CALL verPopulacao(1);

# exibir os procedures
SHOW PROCEDURE STATUS;

# excluir procedures
DROP PROCEDURE verPopulacao;