/*Atividade 4

Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o seguinte nome db_cidade_das_carnes,
onde o sistema trabalhará com as informações dos produtos desta empresa.*/

create database db_cidade_das_carnes;

use db_cidade_das_carnes;

/*O sistema trabalhará com 2 tabelas tb_produto e tb_categoria. Siga  exatamente esse passo a passo:*/

--Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes.
create table tb_categoria (
id bigint(5) auto_increment,
cortes varchar (100) not null,
tipo_carne varchar(100) not null,
validade_dias double not null,
primary key (id)
);

--Popule esta tabela categoria com até 5 dados.
insert into tb_categoria(cortes,tipo_carne,validade_dias) values
("Bovino", "Vermelha", 1),
("Suíno", "Vermelha", 2),
("Aves", "Branca", 3),
("Bovino", "Vermelha",1 ),
("Suíno", "Vermelha", 2);

--Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes.
create table tb_produto (
id bigint auto_increment,
nome varchar(100) not null,
preco decimal(10,2),
tipo_venda varchar(100) not null,
fornecedor varchar (100) not null,
revendedor varchar (100) not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

--Popule esta tabela produto com até 8 dados.
insert into tb_produto(nome, preco, tipo_venda, fornecedor, revendedor,categoria_id) values
("Acém", "20.00", "Peça", "Comercial AMG","Churchill’s Butchery", 1),
("Filé mignon", "25.00", "Quilograma", "Aurora Alimentos", "Boucherie Le Bourdonnec", 2),
("Filé de Costela", "30.00", "Peça", "BRF", "Allens de Mayfair", 3),
("Bisteca", "35.00", "Quilograma", "Brasil Burguer", "Florence Prime Meat Market", 4),
("Lombo", "40.00", "Peça", "Frigo Estrela", "Churchill’s Butchery", 5),
("Pernil", "45.00", "Quilograma", "Prieto Alimentos", "Boucherie Le Bourdonnec", 1),
("Sobrecoxa", "50.00", "Peça", "Ad'oro SA", "Allens de Mayfair", 2),
("Moela", "55.00", "Quilograma", "Cossari", "Florence Prime Meat Market", 3);

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id

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


--Faça um select onde traga todos os Produtos de uma categoria específica.
select * from tb_produto                                                                                                                                                
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tipo_venda in ("Quilograma")
order by tipo_venda;