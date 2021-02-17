/*Atividade 1
Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.*/

create database db_generation_game_online;
USE db_generation_game_online;

/*O sistema trabalhará com 2 tabelas tb_personagem e tb_classe. Siga exatamente esse passo a passo:*/

--Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes.
create table tb_classe(
id bigint(5) auto_increment,
elemento varchar(100) not null,
habilidade_luta varchar(100) not null,
projecao_energia varchar (100) not null,
primary key (id)
);

-- Popule esta tabela classe com até 5 dados
insert into tb_classe (elemento, habilidade_luta, projecao_energia) values
("Agua", "Normal", "Sem"),
("Fogo", "Algum treinamento", "Curta duração"),
("Terra", "Lutador experiente", "Média duração"),
("Ar", "Normal", "Longa duração"),
("Éter", "Lutador experiente", "Permanente");

--Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos relevantes.
create table tb_personagem (
id bigint auto_increment,
nome varchar(100) not null,
inteligencia varchar(100) not null,
forca varchar(100) not NULL,
velocidade varchar(100) not null,
resistencia varchar(100) not null,
poder_ataque double not null,
poder_defesa double not null,
classe_id bigint not null,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

-- Popule esta tabela personagem com até 8 dados.
insert into tb_personagem (nome, inteligencia,forca,velocidade,resistencia, poder_ataque,poder_defesa,classe_id) values
("Ares", "Normal", "Fraca", "Velocidade do Som", "Frágil", 500, 500, 1),
("Aristeu", "Genial", "Normal", "Normal", "Aprimorada", 1000, 1000, 2),
("Asclépio", "Superdotado","Normal","Velocidade do Som", "À Prova de Balas", 2000, 2000,3),
("Bóreas", "Super Genial", "Humana Máxima", "Normal", "Normal", 3000, 3000, 4),
("Dionisio", "Normal","Humana Máxima","Normal", "À Prova de Balas", 4000, 4000, 5),
("Éolo", "Genial","Sobre Humana","Velocidade do Som", "Normal", 5000, 5000, 1),
("Eros", "Superdotado","Incalculável","Supersônica", "Sobre-Humana", 6000, 6000, 2),
("Hades", "Super Genial","Incalculável","Supersônica", "Normal", 7000, 7000, 3);

select * from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classe_id

-- Faça um select que retorne os funcionários com o poder de ataque maior do que 2000.
select * from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
where poder_ataque> 2000

-- Faça um select trazendo  os funcionários com poder de defesa entre 1000 e 2000.
select * from tb_personagem                                                                                                                                                   
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
where poder_defesa between 1000 and 2000
order by poder_defesa asc;

--Faça um select  utilizando LIKE buscando os personagens com a letra A.
select nome from tb_personagem                                                                                                                                                
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
where nome like "%A%"
order by nome;

--Faça um um select com Inner join entre  tabela classe e personagem.
select * from tb_personagem                                                                                                                                                   
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
order by nome;

--Faça um select onde traga todos os personagem de uma classe específica.
select * from tb_personagem                                                                                                                                                   
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
where habilidade_luta in (“Normal”)
order by habilidade_luta;