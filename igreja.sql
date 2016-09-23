/*Criando o Banco*/
Create database igreja
default character set utf8
default collate utf8_general_ci;

use igreja;

/* ########## CRIANDO TABELAS ########## */
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

use igreja;

/* ######### INSERINDO DADOS ########## */
insert into	membros values 
(default,'Junior', 'M', '1990-03-26', '21.526.698-8', '168.654.575-88', 'Rua 9 de Julho, 55', 'Centro', 'Campinas', 'SP', 19856-5826, 'jr@test.com.br', 'Solteiro'),
(default,'Maria', 'F', '1995-05-05', '35.526.698-9', '178.654.575-87', 'Rua 10 de agosto, 07', 'Centro', 'Pacaembu', 'SP', 15886-1534, 'maria@test.com.br', 'Solteiro'),
(default,'Josefina', 'F', '1989-09-10', '24.526.688-7', '159.654.575-86', 'Rua Iracema, 1555', 'Centro', 'Santa Lucia', 'SP', 16589-1285, 'josefina@test.com.br', 'Solteiro'),
(default,'Edeclildes', 'M', '1990-08-21', '23.526.584-6', '148.654.575-84', 'Rua do cafe, 180', 'Centro', 'Santa Lucia', 'SP', 16863-1584, 'ede@test.com.br', 'Solteiro'),
(default,'Joana', 'F', '1975-01-30', '20.558.698-5', '158.664.575-83', 'Rua Consolacao, 120', 'Centro', 'Santa Gertrudes', 'SP', 16856-1748, 'joana@test.com.br', 'Solteiro'),
(default,'Marcela', 'F', '1999-07-09', '18.525.698-4', '159.654.575-82', 'Rua 9 de Julho, 80', 'Centro', 'Santa Gertrudes', 'SP', 16852-1574, 'marcela@test.com.br', 'Solteiro'),
(default,'Julio', 'M', '1980-012-17', '11.526.458-9', '148.674.558-42', 'Rua Adelmo, 59', 'Centro', 'Campinas', 'SP', 19546-1258, 'julio@test.com.br', 'Solteiro');


insert into igreja values 
(default, 'Novo Tempo Vinhedo', 'Rua Egidio Altieri,55', 'Capela', '13.280-000', 'Vinhedo', 'SP', 'Brasil'),
(default, 'Novo Tempo Campinas', 'Rua São Paulo,150', 'Campo Belo', '13.123-000','Campinas', 'SP', 'Brasil'),
(default, 'Novo Tempo Santa Gertrudes', 'Rua 25 de marco,100', 'Bela Vista', '13.123-100', 'Santa Gertrudes', 'SP', 'Brasil'),
(default, 'Novo Tempo Santa Lucia', 'Rua nove de julho,80', 'Centro', '13.280-231', 'Santa Lucia', 'SP', 'Brasil'),
(default, 'Novo Tempo Pacaembu', 'Av. Paulista,76', 'Capela', '13.760-000', 'Pacaembu', 'SP', 'Brasil');


insert into departamento values
(default, 'Mulheres'),
(default, 'Mocidade'),
(default, 'Criancas'),
(default, 'Varoes'),
(default, 'Somente Membro');

insert into cargo values
(default, 'Pastor(a)'),
(default, 'Evangelista'),
(default, 'Presbitero'),
(default, 'Diacono(isa)'),
(default, 'Cooperador(a)'),
(default, 'Membro');

insert into departamento values (default, 'Obreiro(a)');

select * from cargo;
select * from departamento;
select * from igreja;
select * from membros;

show tables;