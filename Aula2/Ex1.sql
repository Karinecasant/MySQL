create database db_generation_game_online

use db_generation_game_online;

--Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes.
create table tb_classe(
id bigint(5) AUTO_INCREMENT,
elemento varchar(100) NOT NULL,
habilidade_luta varchar(100) NOT NULL,
projecao_energia varchar (100) NOT NULL,
PRIMARY KEY (id)
);

-- Popule esta tabela classe com até 5 dados
insert into tb_classe (elemento, habilidade_luta, projecao_energia) VALUES
("Agua", "Normal", "Sem"),
("Fogo", "Algum treinamento", "Curta duração"),
("Terra", "Lutador experiente", "Média duração"),
("Ar", "Normal", "Longa duração"),
("Éter", "Lutador experiente", "Permanente");

--Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos relevantes.
create table tb_personagem (
id bigint AUTO_INCREMENT,
nome varchar(100) NOT NULL,
inteligencia varchar(100) not NULL,
forca varchar(100) not NULL,
velocidade varchar(100) not NULL,
resistencia varchar(100) not NULL,
poder_ataque double not NULL,
poder_defesa double not NULL,
classe_id bigint not NULL,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

-- Popule esta tabela personagem com até 8 dados.
insert into tb_personagem (nome, inteligencia,forca,velocidade,resistencia, poder_ataque,poder_defesa,classe_id) VALUES
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
where poder_defesa between 1000 AND 2000
order by poder_defesa ASC;

--Faça um select  utilizando LIKE buscando os personagens com a letra A.
select nome from tb_personagem                                                                                                                                                
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
where nome like "%A%"
order by nome;

--Faça um um select com Inner join entre  tabela classe e personagem.
select * from tb_personagem                                                                                                                                                   
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
order by nome;

--Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
select * from tb_personagem                                                                                                                                                   
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
where habilidade_luta in (“Normal”)
order by habilidade_luta;