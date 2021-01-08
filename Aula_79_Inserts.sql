-- inserts no PG_Admin

--Tipos Produto

INSERT INTO tipos_produtos (descricao) VALUES ('Computadores');
INSERT INTO tipos_produtos (descricao) VALUES ('Impressoras');
INSERT INTO tipos_produtos (descricao) VALUES ('Diversos');

select * from tipos_produtos;



-- Produtos:
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('NoteBook', '5.520,67',1);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Impressora', '1.550,47',2);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Mouse', '320,17',3);

select * from produtos;

-- Pacientes:
INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, data_nascimento) VALUES ('Catifundo', 'Rua Das Camelias', 'Itaitinga', 'Campa','SP','00000-000','02/02/2002');

select * from pacientes;