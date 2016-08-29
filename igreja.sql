/*Criando o Banco*/
Create database igreja
default character set utf8
default collate utf8_general_ci;

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
primary key (id)
) default charset=utf8;