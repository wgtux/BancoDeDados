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
