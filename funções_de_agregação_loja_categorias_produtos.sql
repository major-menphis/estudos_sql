# funções de agregação nativas: operam sobre um conjunto de valores e retornam apenas um unico resultado
# AVG: calcula a média dos valores de uma coluna 
# MIN: calcula o valor mínimo de uma coluna
# MAX: calcula o valor máximo de uma coluna
# SUM: calcula a soma dos valores de uma coluna
# COUNT: calcula a quantidade de registros que tem na coluna ou na tabela inteira
USE loja;

# consulta normal
SELECT * FROM produto;

# uso do GROUP BY
SELECT Id_Categoria FROM produto GROUP BY Id_Categoria;

# uso do SUM
SELECT Id_Categoria, SUM(valor) AS 'some de valores dos produtos por categoria' FROM produto GROUP BY Id_Categoria;

# uso do AVG
SELECT AVG(valor) AS 'Valor médio dos produtos' FROM produto;

# uso do COUNT
SELECT COUNT(*) AS 'Quantidade total de produtos' FROM produto;

# uso do COUNT com DISTINCT retorna apenas os valores distintos
SELECT COUNT(DISTINCT Id_Categoria) AS 'Quantidade de categorias de produtos' FROM produto;

# uso do MIN
SELECT MIN(valor) AS 'Valor minimo' FROM produto;

# uso do MAX
SELECT MAX(valor) AS 'Valor máximo' FROM produto;

# uso do SUM com junções JOIN
SELECT c.id, c.nome, SUM(p.valor) AS valor_categoria
FROM produto as p
INNER JOIN categoria AS c
ON p.Id_Categoria = c.id
GROUP BY c.id, c.nome
ORDER BY valor_categoria;


