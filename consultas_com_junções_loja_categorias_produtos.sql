USE loja;

SELECT * FROM produto;

SELECT categoria.nome, produto.nome FROM Categoria INNER JOIN 
Produto ON Categoria.id = Produto.id_categoria;

# CONSULTAS COM JUNÇÕES
# inner join (pega os dados comuns das tabelas dos dois lados do comando JOIN)
SELECT categoria.nome as 'Tipo', produto.nome as 'Produto', produto.Valor as 'Custo'
FROM Categoria INNER JOIN Produto ON Categoria.Id = Produto.Id_Categoria
WHERE produto.valor < 50.00;

# left join (pega os dados da tabela da esquerda do comando JOIN)
SELECT categoria.nome as 'Tipo', produto.nome as 'Produto', produto.valor
FROM Categoria LEFT JOIN Produto ON Categoria.Id = Produto.Id_Categoria;

# right join (pega os dados da tabela da direita do comando JOIN)
SELECT categoria.nome as 'Tipo', produto.nome as 'Produto', produto.valor
FROM Categoria RIGHT JOIN Produto ON Categoria.Id = Produto.Id_Categoria;