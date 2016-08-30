/*Criando o Banco*/
Create database igreja
default character set utf8
default collate utf8_general_ci;

use igreja;

/*Criando tabelas*/
create table if not exists membros (
idMembro int not null auto_increment,
nome varchar(40) not null,
sexo enum('M','F'),
dataNasc date,
rg varchar(13),
cpf varchar(14),
endereco varchar (50),
bairro varchar (30),
cidade varchar (30),
estado varchar (4),
tel int (11),
email varchar (30),
estadoCivil varchar (10),
primary key (idMembro)
) default charset=utf8;

create table departamento (
idDep int not null auto_increment,
nomeDep varchar (40) not null,
primary key (idDep)
) default charset=utf8;

create table cargo (
idCargo int not null auto_increment,
nomeCargo varchar (40) not null,
primary key (idCargo)
) default charset=utf8;

create table igreja (
idIgreja int not null auto_increment,
nomeIgreja varchar (40) not null,
endIgreja varchar (40) not null,
bairro varchar (30) not null,
cep varchar (10),
cidade varchar (30) not null,
estado varchar (2),
pais varchar (20),
primary key (idIgreja)
) default charset=utf8;