# CRIAÇÃO DO BANCO PARA TESTE DO COMMIT, SAVEPOINT E ROLLBACK
CREATE DATABASE banco_bank;

USE banco_bank;

CREATE TABLE contas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    saldo DECIMAL(10, 2)
);

INSERT INTO contas VALUES
(0, 'conta1', 5000),
(0, 'conta2', 3000);

SELECT * FROM contas;

# desativar o autocommit para usar controle transacional
# com commit manual
SET AUTOCOMMIT = 0;

# ou usar o comando abaixo também desativa o autocommit
START TRANSACTION;

# testando com update
UPDATE contas SET saldo = 0 WHERE id = 1;

# conferindo o saldo
SELECT * FROM contas;

# criar um savepoint manualmeente
SAVEPOINT ponto1;

# voltar ao ponto que desativou o autocommit
ROLLBACK;
# ou para voltar ao ponto salvo anteriormente
ROLLBACK TO SAVEPOINT ponto1;

# executar um commit manual
COMMIT;
