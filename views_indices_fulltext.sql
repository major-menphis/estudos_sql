# CRIAÇÃO, USO E EXCLUSÃO DE VIEWS
USE loja;

# criação da view
CREATE VIEW v_categorias_sem_produtos AS
	SELECT id, nome
    FROM categoria
    WHERE categoria.id
    NOT IN (SELECT Id_Categoria FROM produto);
    
# uso da view
SELECT * FROM v_categorias_sem_produtos;

# exclusão da view
DROP VIEW v_categorias_sem_produtos;

# CRIAÇÃO E USO DE INDICES

# criação durante a criação da tabela
CREATE TABLE teste_indice(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    idade INT,
    INDEX (id));
    
# criação em tabela existente categoria e na coluna id
CREATE INDEX idx_nomeIndice ON categoria(id);

# visualização indices
SHOW INDEX FROM categoria;

# utilizacao do indice
SELECT Nome
FROM categoria
USE INDEX (idx_nomeIndice)
WHERE categoria.id = 3;

# USO DO FULLTEXT

# buscar um trecho dentro de várias strings
# deve habilitar o FULLTEXT antes de usar na tabela 
ALTER TABLE teste_indice ADD FULLTEXT (nome);

# busca palavras dentro de longos textos
SELECT nome FROM teste_indice WHERE MATCH (nome) AGAINST ('Informática');

