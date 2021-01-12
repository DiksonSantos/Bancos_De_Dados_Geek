select * from atores_filme;
insert into atores_filme (id_filme, id_ator, personagem) values('4','4','Singer');

select * from atores_filme;
select * from filmes;
select * from atores;
select * from generos;

insert into atores (nome) values('Antonia');
insert into generos (genero) values('Drama');

	
	--(Primeiro Inclui Filme)                           Titulo ,      Genero,  Preço
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Mamma Little Girl', 4, 9.99);
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('A Volta Dos Que Não Foram', 2, 1.99);


--Depois Inclui Ator No Filme (Por 'Personagem q interpretar') ID_FILME , ID_ATOR, TIT_FILME
INSERT INTO atores_filme (id_filme, id_ator, personagem) VALUES (7, 4, 'Gezebel');
INSERT INTO atores_filme (id_filme, id_ator, personagem) VALUES (8, 4, 'Sad_Woman');
INSERT INTO atores_filme (id_filme, id_ator, personagem) VALUES (9, 1, 'Crazy Bill');



-- Procurando por genero:
SELECT f.titulo as filme, a.nome as Atores_, af.personagem as Papel
	from atores_filme as af,  filmes as f, generos as g, atores as a
	where f.id = af.id_filme and g.id = f.id_genero and a.id = af.id_ator
	and g.genero = 'Drama';

INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Other Side', 4, 4.99);


-- Procurando por genero + Personagem
SELECT f.titulo as filme, a.nome as Atores_, af.personagem as Papel
	from atores_filme as af,  filmes as f, generos as g, atores as a
	where f.id = af.id_filme and g.id = f.id_genero and a.id = af.id_ator
	and g.genero = 'Terror' and a.nome = 'Felicity Jones';


-- Procurando por ator:
SELECT f.titulo, g.genero, af.personagem
	from atores_filme as af,  filmes as f, generos as g, atores as a
	where f.id = af.id_filme and g.id = f.id_genero and a.id = af.id_ator
	and a.nome = 'Bred Pitt';

select * from clientes;
insert into clientes(nome,sobrenome,telefone,endereco) values('Dilsão','Noronha',2232-2333, 'Rua Das Piranhas,24,6');

-- Verificar qual cliente Alugou o que:
select e.id, c.nome, c.sobrenome ,e.data, f.titulo, g.genero
	from emprestimos as e, clientes as c, filmes as f, generos as g, dvds as d, filmes_emprestimo as fe
	where fe.id_emprestimo = e.id and e.id_cliente = c.id and f.id = d.id_filme and fe.id_dvd = d.id
	and f.id_genero = g.id;
	
-- Verificando o que os Clientes Devolveram:
select de.id, c.nome , c.sobrenome, de.data, f.titulo
	from devolucoes as de, clientes as c, filmes as f, filmes_devolucao as fd , dvds as d, emprestimos as e, filmes_emprestimo as fe
	where fd.id_filme_imprestimo = fe.id and e.id_cliente = c.id and f.id = d.id_filme and fe.id_dvd = d.id
	and de.id_emprestimo = e.id and fd.id_devolucao = de.id;

/*Aula Continua em 28:28min*/
	
	