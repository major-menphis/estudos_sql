CREATE DATABASE IF NOT EXISTS loja;

USE loja;

CREATE TABLE categoria (
	id INT(3) PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL
    );
    
CREATE TABLE produto (
	Código INT(3) PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Valor DECIMAL(6, 2),
    Id_Categoria INT(3) NOT NULL,
    FOREIGN KEY (ID_Categoria) REFERENCES categoria(id)
    );
    
INSERT Categoria VALUES (0, 'DVD'), (0, 'Livro'), (0, 'Informática');

INSERT Produto VALUES (0, 'Código da Vinci', '39.99', 2),
	(0, 'Hancock', '89.99', 1),
    (0, 'Diário de um Mago', '19.99', 2),
    (0, 'Eu sou a lenda', '39.99', 1);