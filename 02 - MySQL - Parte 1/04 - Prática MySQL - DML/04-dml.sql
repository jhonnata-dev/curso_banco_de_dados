# DML

-- Insert
INSERT INTO tipos_produto (descricao) VALUES ('Apple');
INSERT INTO produtos VALUES (NULL, 'iPad', '2200', 3);

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('iPad', '2200', 3);

INSERT INTO produtos VALUES (NULL, 'iPad Air', '1200', 3);

SELECT * FROM tipos_produto;
SELECT * FROM produtos;

-- Update
UPDATE produtos set codigo_tipo = 3 WHERE codigo = 6;
UPDATE produtos set descricao = 'Impressora Laser', preco = '700' WHERE codigo = 4;

# NUNCA ESQUEÇA DE FILTRAR O REGISTRO COM O WHERE!!!

-- Delete
DELETE FROM produtos WHERE codigo = 4;

# NUNCA ESQUEÇA DE FILTRAR O REGISTRO COM O WHERE!!!