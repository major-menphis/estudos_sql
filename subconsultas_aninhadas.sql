# subconsultas com IN, NOT IN, SOME
USE loja;

# uso do IN
SELECT Nome FROM categoria WHERE categoria.id IN (SELECT Id_categoria FROM produto);

# uso do NOT IN 
SELECT Nome FROM categoria WHERE categoria.id NOT IN (SELECT Id_categoria FROM produto);

# uso do SOME
SELECT Nome FROM categoria WHERE id = SOME(SELECT Id_categoria FROM produto
WHERE produto.valor <= 20);

# uso de SELECT aninhado
SELECT nome, (
	SELECT COUNT(*) FROM produto WHERE produto.Id_categoria = categoria.id
    ) AS cadPorCateg FROM categoria;

# uso do EXISTS para consultar se existe ao menos 1 registro do 'nome' com categoria valida
SELECT nome FROM produto p WHERE EXISTS (
	SELECT 1 FROM categoria c 
    WHERE c.id = p.Id_Categoria
    );

SELECT * FROM produto;

SELECT * FROM categoria;