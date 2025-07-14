create database livraria;
use livraria;

create table autor(
idAutor int primary key auto_increment,
nomeAutor	varchar(45)	
);

create table genero(
idGenero int primary key auto_increment,
nomeGenero varchar(45)
);

create table livro(
idLivro  int primary key auto_increment,
Fk_autor int,
titulo	varchar(100),
fk_genero int,
preco_de_compra	int,
preco_de_venda int,
qntd int,
foreign key(fk_autor) references autor(idAutor),
foreign key(fk_genero) references genero(idGenero) 
);

select * from genero;

insert into genero(nomeGenero)values
('Drama'),
('Ação'),
('Romance'),
('ficção científica')