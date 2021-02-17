/*Atividade 3

Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter o seguinte
nome db_farmacia_do_bem, onde o sistema trabalhará com as informações dos produtos desta empresa.*/

create database db_farmacia_do_bem

use db_farmacia_do_bem;

/*O sistema trabalhará com 2 tabelas tb_produto e tb_categoria. Siga  exatamente esse passo a passo:*/

--Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes.
create table tb_categoria (
id bigint(5) auto_increment,
medicamentos varchar(100) not null,
cosmeticos varchar(100) not null,
higiene varchar(100) not null,
primary key (id)
);

--Popule esta tabela categoria com até 5 dados.
insert into tb_categoria(medicamentos, cosmeticos, higiene) values
("Fitoterápico", "Grau1", "Higiene bucal"),
("Homeopático", "Grau2", "Higiene íntima"),
("Genérico", "Grau3", "Higiene geral"),
("Manipulado", "Grau1", "Higiene bucal"),
("Referência", "Grau2", "Higiene íntima");

--Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes.
create table tb_produto (
id bigint auto_increment,
nome varchar(100) not null,
preco decimal(10,2),
receita varchar(100) not null,
fabricante (100) not null,
revendedor (100) not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

--Popule esta tabela produto com até 8 dados.
insert into tb_produto(nome, preco, receita, fabricante, revendedor,categoria_id) values
("Paracetamol", "20.00", "Sob prescrição", "EMS Corp","Drogaria Bifarma", 1),
("Acetazolamida", "25.00", "Sem prescrição", "Hypera Pharma", "Droga Raia", 2),
("Anastrozol", "30.00", "Sob prescrição", "Aché", "Drogaria Araujo", 3),
("Canagliflozina", "35.00", "Sem prescrição", "Bayer", "Drogaria Rosário", 4),
("Daptomicina", "40.00", "Sob prescrição", "Eurofarma", "Drogaria São Paulo", 5),
("Epoprostenol", "45.00", "Sem prescrição", "EMS Corp", "Drogarias Pacheco", 1),
("Flurbiprofeno", "50.00", "Sob prescrição", "Hypera Pharma", "Drogarias Big Bem", 2),
("Hidromorfona", "55.00", "Sem prescrição", "Aché", "Drogaria Nissei", 3);

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_personagem.categoria_id

--Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where preco> 50

--Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto                                                                                                                                                   
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where preco between 03.00 and 60.00
order by preco asc;

--Faça um select  utilizando LIKE buscando os Produtos com a letra B.
select nome from tb_produto                                                                                                                                                
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where nome like "%A%"
order by nome;

--Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto                                                                                                                                                  
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
order by nome;


--Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select * from tb_produto                                                                                                                                                
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tipo_recheio in ("Único")
order by tipo_recheio;