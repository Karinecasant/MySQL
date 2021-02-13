create database db_escola;

use db_escola;

create table tb_alunos(
id bigint(8) auto_increment,
nome varchar(100) not null,
idade varchar(100) not null,
sexo varchar(100) not null,
cpf varchar(100) not null,
nascimento varchar(100) not null,
materia varchar(100) not null, 
nota double not null,
primary key (id)
);


insert into tb_alunos(nome, idade, sexo, cpf, nascimento, materia, nota) values
("Joao Silva", "14", "masculino", "11111111111", "01/01/2007", "matematica", 2),
("Maria Silva", "13", "feminino", "22222222222", "01/01/2008", "portugues", 4),
("Gabriel Nascimento", "15", "masculino", "33333333333", "01/01/2006", "geografia",6),
("Marina Souza", "14", "feminino", "44444444444", "02/02/2007", "historia", 8),
("Joaquim Lima", "13", "masculino", "55555555555", "02/02/2008", "filosofia", 10),
("Laura Santos", "15", "feminino", "66666666666", "03/03/2008", "sociologia", 10),
("Augusto Martins", "14", "masculino", "77777777777", "03/03/2007", "biologia", 10),
("Joana Bezerra", "13", "feminino", "88888888888", "03/03/2008", "computacao", 10);


--Faça um select que retorne o/as alunos/a com a nota maior do que 7.
select * from tb_alunos  where nota > 7

--Faça um select que retorne o/as alunos/a com a nota menor do que 7.
select * from tb_alunos  where nota < 7

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_alunos set nota = 8 where id = 1;
