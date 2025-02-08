SELECT * FROM tipos_produto;

# DTL

-- Transaction
START TRANSACTION;
	INSERT INTO tipos_produto (codigo, descricao) VALUES (77, 'Mais');
    INSERT INTO tipos_produto (descricao) VALUES ('Escritorio');

-- Commit
COMMIT;

-- Rollback
ROLLBACK;

UPDATE tipos_produto SET codigo = 10 WHERE codigo = 77;