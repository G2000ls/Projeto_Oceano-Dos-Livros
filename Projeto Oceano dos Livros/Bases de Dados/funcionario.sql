create table funcionario (
	id_funcionario INT PRIMARY KEY,
	nome VARCHAR(50),
	cargo VARCHAR(9),
	salario FLOAT
);

insert into funcionario (id_funcionario, nome, cargo, salario) values (1, 'Gabriel Souza', 'gerente', 3000);
insert into funcionario (id_funcionario, nome, cargo, salario) values (2, 'Gustavo Guimarães', 'vendedor', 2000);
insert into funcionario (id_funcionario, nome, cargo, salario) values (3, 'Jermaine Karim', 'vendedor', 2000);
insert into funcionario (id_funcionario, nome, cargo, salario) values (4, 'Adelaide Brood', 'faxineiro', 1500);
insert into funcionario (id_funcionario, nome, cargo, salario) values (5, 'Gustavo Minguta', 'caixa', 1700);
insert into funcionario (id_funcionario, nome, cargo, salario) values (6, 'Myranda Greenwood', 'caixa', 1700);
