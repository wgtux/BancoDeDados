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