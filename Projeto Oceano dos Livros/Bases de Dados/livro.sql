create table livro (
	id_livro INT PRIMARY KEY,
	id_fornecedor INT,
	titulo VARCHAR(25),
	genero VARCHAR(8),
	valor_compra INT,
	valor_venda INT,
	FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (1, 2, 'Cidade de papel', 'comédia', 58, 23);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (2, 3, 'Quem é você alaska', 'terror', 55, 18);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (3, 3, 'Bíblia sagrada', 'ficção', 60, 10);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (4, 1, 'Weiss: a mente é o limite', 'comédia', 62, 19);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (5, 3, 'A culpa das estrelas', 'fantasia', 58, 24);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (6, 3, 'A casa da madrinha', 'fantasia', 59, 21);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (7, 2, 'Harry potter', 'fantasia', 60, 30);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (8, 1, 'Senhor dos anéis', 'poesia', 55, 14);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (9, 2, 'O Demônio de Diamante', 'suspense', 48, 27);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (10, 2, 'Religião do Palácio', 'poesia', 37, 19);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (11, 1, 'O Vampiro da Liberdade', 'terror', 48, 22);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (12, 2, 'Princesa do Poder', 'aventura', 55, 26);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (13, 3, 'Espada dos Anjos', 'suspense', 45, 21);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (14, 2, 'O Alado da Herança', 'romance', 47, 19);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (15, 1, 'Telepata do Palácio', 'terror', 42, 11);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (16, 3, 'A Seita do Apocalipse', 'fantasia', 35, 31);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (17, 1, 'Querubim de Ouro', 'poesia', 61, 24);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (18, 1, 'Crepúsculo', 'aventura', 53, 21);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (19, 3, 'O Herege de Almas', 'suspense', 44, 25);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (20, 3, 'A Lenda do Mar', 'suspense', 46, 23);
insert into livro (id_livro, id_fornecedor, titulo, genero, valor_venda, valor_compra) values (21, 3, 'Sangue da Escuridão', 'ficção', 41, 7);
