CREATE DATABASE subconsulta;

USE subconsulta;

CREATE TABLE escritorios(
	id INT NOT NULL AUTO_INCREMENT,
	pais VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE funcionarios(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(20) NOT NULL,
    sobrenome VARCHAR(20) NOT NULL,
    id_escritorio INT,
    PRIMARY KEY(id),
	FOREIGN KEY(id_escritorio) REFERENCES escritorios(id)
);

CREATE TABLE pagamento(
	id INT NOT NULL AUTO_INCREMENT,
    id_funcionario INT NOT NULL,
	salario DECIMAL(8,2) NOT NULL,
    data_ DATE NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id)
);

INSERT INTO escritorios (pais) VALUES ('Brasil');
INSERT INTO escritorios (pais) VALUES ('Estados Unidos');
INSERT INTO escritorios (pais) VALUES ('Alemanha');
INSERT INTO escritorios (pais) VALUES ('França');

INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Pedro', 'Souza', 1);
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Sandra', 'Rubin', 2);
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Mikail', 'Schumer', 3);
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Oliver', 'Gloçan', 4);

INSERT INTO pagamento (id_funcionario, salario, data_) VALUES (1, '5347.55', '2019-03-17');
INSERT INTO pagamento (id_funcionario, salario, data_) VALUES (2, '9458.46', '2019-03-17');
INSERT INTO pagamento (id_funcionario, salario, data_) VALUES (3, '4669.67', '2019-03-17');
INSERT INTO pagamento (id_funcionario, salario, data_) VALUES (4, '2770.32', '2019-03-17');


-- SUB CONSULTAS

-- Exemplo 1
SELECT nome, sobrenome FROM funcionarios WHERE id_escritorio IN (SELECT id FROM escritorios WHERE pais = 'Brasil');

-- Sem subconsulta
SELECT nome, sobrenome FROM funcionarios, escritorios AS e WHERE id_escritorio = e.id AND e.pais = 'Brasil';

-- Exemplo 2
SELECT f.nome, f.sobrenome, e.pais, p.salario
	FROM pagamento AS p, funcionarios AS f, escritorios AS e
    WHERE f.id_escritorio = e.id
		AND f.id = p.id_funcionario
        AND salario = (SELECT MAX(salario) FROM pagamento);

-- Exemplo 3
SElECT f.nome, f.sobrenome, e.pais, p.salario
	FROM pagamento AS p, funcionarios AS f, escritorios AS e
    WHERE f.id_escritorio = e.id
		AND f.id = p.id_funcionario
        AND salario < (SELECT AVG(salario) FROM pagamento);