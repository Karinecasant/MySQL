use db_rh

create table tb_funcionarios(
id bigint(5) auto_increment,
nome varchar(100) not null,
cpf varchar(11) not null,
estado_civil varchar(100) not null,
salario double not null,
primary key (id)
);

insert into tb_funcionarios(nome, estadocivil, cpf,salario) values
("Maria Silva" , "casada" , "11111111111" , 1000),
("Joao Batista" , "solteiro" , "22222222222" , 2000),
("Laura Lima" , "casada" , "33333333333" , 3000),
("Vitor Martins" , "solteiro" , "44444444444" , 4000),
("Lorena Silva" , "solteira" , "55555555555" , 5000);

select * from tb_funcionarios  where salario > 2000
select * from tb_funcionarios  where salario < 2000
update tb_funcionarios set salario = 1500 where id = 1;
