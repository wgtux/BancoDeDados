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
numero int,
bairro varchar (15),
cep varchar (10), 
primary key (id)
) default charset=utf8;

alter table igreja add column nomeIgreja varchar(30) not null after id;
alter table igreja modify column Endereco varchar(40);
alter table igreja modify column bairro varchar(40);

desc igreja;

insert into igreja values 
(default, 'Novo Tempo Vinhedo', 'Rua Egidio Altieri', '55', 'Capela', '13.280-000'),
(default, 'Novo Tempo Campinas', 'Rua São Paulo', '150', 'Campo Belo', '13.123-000'),
(default, 'Novo Tempo Santa Gertrudes', 'Rua 25 de marco', '100', 'Bela Vista', '13.123-100'),
(default, 'Novo Tempo Santa Lucia', 'Rua nove de julho', '80', 'Centro', '13.280-231'),
(default, 'Novo Tempo Pacaembu', 'Av. Paulista', '76', 'Capela', '13.760-000');


select * from igreja;

/*Cadastro de cidades*/
create table cidade (
id int auto_increment not null,
cidade varchar (30) not null,
estado varchar (2) not null,
pais varchar (20),
primary key (id)
) default charset=utf8;

insert into cidade values
(default,'Vinhedo', 'SP', 'Brasil'),
(default,'Campinas', 'SP', 'Brasil'),
(default,'Santa Gertrudes', 'SP', 'Brasil'),
(default,'Santa Lucia', 'SP', 'Brasil'),
(default,'Pacaembu', 'SP', 'Brasil');

select * from cidade;