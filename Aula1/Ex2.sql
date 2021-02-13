create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint(8) auto_increment,
produto varchar(100) not null,
tamanho varchar(100) not null,
cor varchar(100) not null,
fabricante varchar(100) not null,
tecido varchar(100) not null,
genero varchar(100) not null, 
valor double not null,
primary key (id)
);

insert into tb_produtos(produto, tamanho, cor, fabricante, tecido, genero, valor) values
("camiseta", "P", "vermelho", "Sempre Bela", "algodao", "feminino", 100),
("calca", "G", "amarelo", "Gold Style", "linho", "masculino", 200),
("casaco", "P", "azul", "Belo Azul", "algodao", "feminino", 300),
("vestido", "M", "laranja", "Western Fashion", "linho", "masculino", 400),
("sueter", "G", "roxo", "Duds", "algodao", "feminino", 500),
("luvas", "P", "vinho", "Fashion Star", "linho", "masculino", 600),
("jaqueta", "M", "azul", "Woman Village", "algodao", "feminino", 700),
("short", "G", "preto", "MeninBlue", "linho", "masculino", 800);

-- Faça um select que retorne os produtos com o valor maior do que 500.
select * from tb_produtos  where valor > 500

-- Faça um select que retorne os produtos com o valor menor do que 500.
select * from tb_produtos  where valor < 500

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_produtos set valor = 150 where id = 1;

