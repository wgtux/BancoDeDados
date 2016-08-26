/*Apagando Banco de Dados*/
drop database cadastro;

/*criando o banco cadastro*/
create database cadastro 
default character set utf8
default collate utf8_general_ci;

/*selecionando o banco cadastro*/
use cadastro;

/*criando tabela membros*/
create table if not exists membros (
id int not null auto_increment,
Nome varchar(30) not null,
Sexo enum('M','F'),
DataNasc date,
LocalNasc varchar(20),
CidadeIgreja varchar(20),
Nacionalidade varchar (20) default 'Brasileiro(a)',
primary key (id)
) default charset=utf8;

/*descrevendo a tabela*/
describe membros;

/*Inserindo os dados*/
insert into	membros 
(id, Nome, Sexo, DataNasc, LocalNasc, CidadeIgreja, Nacionalidade)
values 
(DEFAULT, 'Wesley', 'M', '1988-01-26', 'Vinhedo', 'Vinhedo', 'Brasil'),
(default,'Godofredo', 'M', '1990-02-04', 'Vinhedo', 'Pacaembu', default),
(default,'Maria Joana', 'F', '1970-05-23', 'Pacaembu', 'Campinas', 'Portugual'),
(default, 'Ana Carol', 'F', '1995-07-03', 'Luzitania', 'Santa Gertudes', 'EUA');

/*Selecionando a tabela membros*/
select	* from membros;

/*Alterando Nome da Coluna*/
alter table membros
change column Nacionalidade País varchar (20) default 'Brasil';

/* Criando a tabela cargos*/
create table if not exists cargos (
id int not null auto_increment,
nome varchar (15) not null,
primary key (id)
) default charset=utf8;

desc cargos;
/*Inserindo dados na tabela cargo*/
insert into cargos values
(default, 'Pastor (a)'),
(default, 'Evangelista'),
(default, 'Presbitero'),
(default, 'Diacono(isa)'),
(default, 'Cooperador'),
(default, 'Membro');

select * from cargos;

/*Tabela Departamento*/
create table departamento (
id int not null auto_increment,
nomeDep varchar (15) not null,
primary key (id)
) default charset=utf8;

alter table departamento modify column nomeDep varchar(30) not null;
/*Inserindo Dados*/
insert into departamento values
(default, 'Circulo de Oracao/Mulheres'),
(default, 'Mocidade'),
(default, 'Criancas'),
(default, 'Varoes'),
(default, 'Somente Membro');

select * from departamento;

/*Tabela Igreja*/
create table igreja (
id int not null auto_increment,
Endereco varchar (25),
num int,
bairro varchar (15),
cep varchar (10), 
cidade varchar (15) not null,
estado varchar (15) not null,
primary key (id)
) default charset=utf8;

insert into igreja values 
(default, 'Rua Egidio Altieri', '55', 'Capela', '13.280-000','Vinhedo', 'SP');

select * from igreja;

