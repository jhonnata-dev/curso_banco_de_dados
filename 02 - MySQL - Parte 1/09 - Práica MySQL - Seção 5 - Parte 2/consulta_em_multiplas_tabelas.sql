# CONSULTA EM MULTIPLAS TABELAS

SELECT * FROM tipos_produto;
SELECT * FROM produtos;

-- Consulta em multiplas tabelas
SELECT p.codigo AS 'Código', p.descricao AS 'Descrição', p.preco AS 'Preço', tp.descricao AS 'Tipo Produto'
	FROM produtos AS p, tipos_produto AS tp
    WHERE p.codigo_tipo = tp.codigo;