/*Atividade 2

Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o 
seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as informações dos produtos desta empresa. */

create database db_pizzaria_legal

use db_pizzaria_legal;

/*O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.Siga  exatamente esse passo a passo:*/

--Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes.
create table tb_categoria (
id bigint(5) auto_increment,
tamanho varchar(100) not null,
tipo_entrega varchar(100) not null,
acompanhamento varchar(100) not null,
primary key (id)
);

--Popule esta tabela categoria com até 5 dados
insert into tb_categoria(tamanho, tipo_entrega, acompanhamento) values
("Pequena", "Retirada", "Sem"),
("Grande", "Entregue", "Refrigerante"),
("Média", "Retirada", "Batata"),
("Pequena", "Entregue", "Sem"),
("Média", "Retirada", "Refrigerante");

--Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes .
create table tb_pizza (
id bigint auto_increment,
nome varchar(100) not null,
preco decimal(10,2),
borda varchar(100) not null,
tipo_massa varchar(100) not null,
tipo_recheio varchar(100) not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

--Popule esta tabela pizza com até 8 dados.
insert into tb_pizza(nome, preco, borda, tipo_massa, tipo_recheio, categoria_id) values
("Calabresa", "20.00", "Sem borda recheada", "Sem glútem", "Misto", 1),
("Mussarela", "25.00", "Com borda recheada", "Com glútem", "Único", 2),
("Portuguesa", "30.00", "Sem borda recheada", "Sem glútem", "Misto", 3),
("Quatro queijos", "35.00", "Com borda recheada", "Com glútem", "Único", 4),
("Marguerita", "40.00", "Sem borda recheada", "Sem glútem", "Misto", 5),
("Napolitana", "45.00", "Com borda recheada", "Com glútem", "Único", 1),
("Frango", "50.00", "Sem borda recheada", "Sem glútem", "Misto", 2),
("Atum", "55.00", "Com borda recheada", "Com glútem", "Único", 3);

select * from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_personagem.categoria_id

--Faça um select que retorne os Produtos com o valor maior do que 45 reais.
select * from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where preco> 45

--Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
select * from tb_pizza                                                                                                                                                   
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where preco between 29.00 and 60.00
order by preco asc;

--Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select nome from tb_pizza                                                                                                                                                
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where nome like "%C%"
order by nome;

--Faça um um select com Inner join entre  tabela categoria e pizza.
select * from tb_pizza                                                                                                                                                  
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
order by nome;


--Faça um select onde traga todos os Produtos de uma categoria específica.
select * from tb_pizza                                                                                                                                                 
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where tipo_recheio in ("Único")
order by tipo_recheio;