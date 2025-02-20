# DDL

-- Create
USE meudb;

CREATE DATABASE meudb;

CREATE TABLE pessoas (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO pessoas (nome) VALUES ('Felicity Jones');

SELECT * FROM pessoas;

-- Alter
ALTER TABLE pessoas ADD ano_nascimento INT;

ALTER TABLE pessoas ADD mes_nascimento INT NOT NULL;

UPDATE pessoas set mes_nascimento = 6 WHERE id = 1;

-- Drop
DROP TABLE pessoas;

DROP DATABASE meudb;