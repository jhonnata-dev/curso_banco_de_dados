# Inserindo dados de teste - DML

-- Tipos Produtos
INSERT INTO tipos_produtos (tipo) VALUES ('Remedios');
INSERT INTO tipos_produtos (tipo) VALUES ('Cosmeticos');
INSERT INTO tipos_produtos (tipo) VALUES ('Diversos');

-- Fabricantes
INSERT INTO fabricantes (fabricante) VALUES ('Roche');
INSERT INTO fabricantes (fabricante) VALUES ('Vitalis');
INSERT INTO fabricantes (fabricante) VALUES ('Palmolive');

-- Medicos
INSERT INTO medicos (nome, crm) VALUES ('Alfredo Muniz', '1231235SP');
INSERT INTO medicos (nome, crm) VALUES ('Fernanda Silva', '3423423MG');
INSERT INTO medicos (nome, crm) VALUES ('Julieta Santana', '56546SC');

-- Clientes
INSERT INTO clientes (nome, endereco, telefone, codigo_postal, localidade, cpf) VALUES ('Felicity Jones', 'Rua da Paz, 34', '(11) 2345-8899', '34.567-098', 'Santos', '234.789.433-98');
INSERT INTO clientes (nome, endereco, telefone, codigo_postal, localidade, cpf) VALUES ('Angelina Jolie', 'Rua do Ipiranga, 456', '(21) 7544-3234', '56.564-567', 'Rio de Janeiro', '345.678.234-12');
INSERT INTO clientes (nome, endereco, telefone, codigo_postal, localidade, cpf) VALUES ('Ricardo Chavez', 'Rua Certa, 678', '(21) 2678-3984', '12.4569-223', 'Planaltina', '786.123.445-31');

-- Produtos
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante) VALUES ('Dipirona', 'Dores em geral', 'Metilpropileno', '12.44', 1, 1);
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante) VALUES ('Sabonete', 'Limpeza', 'Sei la', '3.56', 2, 2);
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante) VALUES ('Protetor Solar', 'Protetor Solar', 'Soro de abacate', '98.12', 2, 1);

-- Compras
INSERT INTO compras (id_cliente, data) VALUES (1, '2019-03-18');
INSERT INTO compras (id_cliente, data) VALUES (2, '2019-04-15');
INSERT INTO compras (id_cliente, data) VALUES (1, '2019-05-10');

-- Produtos Compra
INSERT INTO produtos_compra (id_compra, id_produto, quantidade) VALUES ( 1, 1, 2);
INSERT INTO produtos_compra (id_compra, id_produto, quantidade) VALUES ( 1, 2, 3);
INSERT INTO produtos_compra (id_compra, id_produto, quantidade) VALUES ( 2, 3, 2);

-- Receita medicas
INSERT INTO receitas_medica (id_produto_compra, id_medico, receita) VALUES ( 1, 1, 'receita1.pdf');
INSERT INTO receitas_medica (id_produto_compra, id_medico, receita) VALUES ( 3, 2, 'receita2.pdf');