use igreja;

desc membros;


/* ## Relacionamento Membro/Cargo## 1 para n */
alter table membros add column cargoId int;
alter table membros add foreign key (cargoId) references cargo (idCargo);


/* ## Relacionamento Membro/Igreja##  1 para N */
alter table membros add column igrejaId int;
alter table membros add foreign key (igrejaId) references igreja (idIgreja);

/* ## Relacionamento Membro/Departamento## N para N */



/* ## INSERINDO DADOS ## */
select * from membros;
select * from cargo;
select * from igreja;

update membros set cargoId = '6' where idMembro = '1';
update membros set igrejaId = '2' where idMembro = '1';