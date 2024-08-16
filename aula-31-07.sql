create database cadrastro;
use cadastro;
-- criacao de uma tabela
create table pessoa(
id int not null auto_increment ,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id) 
)default charset= utf8;

 -- --------------------------------------------------------------------------------------------------------------------------------------------
 -- aula 31/07/24
 
insert into pessoa (nome, nascimento, sexo, peso, altura, nacionalidade) 
values 
('Pereira','1984-06-01','M','87.5','1.78','Brasil');
select * from pessoa;
insert into pessoa (id,nome, nascimento, sexo, peso, altura, nacionalidade) 
values 
(default, 'Cleuza','1924-09-01','F','47.5','1.60', default);
select * from pessoa;
insert into pessoa values
(default,'Farley','1987-12-01','M','98.0', '1.95', 'Italia'), 
(default,'Pedro','1999-12-03','M','87','2', default), 
(default,'Janaina','1987-11-12','F','75','1.66','EUA');
select * from pessoa;
insert into pessoa(nome, nascimento,sexo,peso,altura,nacionalidade)
values
('Ana',current_date(),'F','3.5','0.51','Brasil');
select * from pessoa;
alter table pessoa 
add profissao varchar(20) first;
select * from pessoa;
alter table pessoa
add profissao varchar(10)after nome;
alter table pessoa 
drop column profissao;
desc pessoa;

-- alula dia 01/08
-- comando para modificar uma tabela
alter table pessoa
modify profissao varchar(20);
-- comando para modificar o nome de uma caluna
alter table pessoa 
change prof prof varchar(30) after nacionalidade;
-- comando para renomear uma tabela
alter table pessoa 
rename to aluno;
-- criar tabela curso
create table curso(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totalaula int unsigned,
ano year default'2016'
) default charset=utf8mb4;

alter table curso
add id_curso int primary key auto_increment;
alter table curso
modify id_curso int first; 
-- adicionar registros no curso
insert into curso 
values
(1,'HTML4','Curso de HTML5', 40, 37,'2014'),
(2,'Algoritmos','Lógica de programação','20','15','2014'),
(3,'Photoshop','Dicas de Photoshop', 10, 8,'2014'),
(4,'PGP','PHP para iniciantes', 40, 20,'2010'),
(5,'JARVA','Introdução Linguagem Java', 40, 29,'2000'),
(6,'MySQL','Banco de Dados MySQL', 30, 15,'2016'),
(7,'Word','Curso Completo de Word', 40, 30,'2016'),
(8,'Sapateado','Dança Rítmica', 40, 30,'2018'),
(9,'Cozinha árabe','Aprenda a cozinhar', 40, 30,'2018'),
(10,'YOUTuber','Ganhar seguidores', 5, 2,'2018');
-- comando para modificar linhas incorretas
update curso
set nome ='HTML5'
where id_curso = '1';
update curso
set nome = 'PHP', ano = '2015'
where id_curso = 4;
update curso
set nome = 'JAVA', carga = '80', ano = '2015'
where id_curso = 5;
-- limita o numero de modificações
update curso
set ano = '2050', carga = '800'
where ano = '2018'
limit 2;
-- apagando linhas incorretas
delete from curso
where ano = '2018'
limit 1;
-- comando que apaga todas as linhas da tabela
truncate table curso;
-- similar a delete from curso;









desc aluno;
select * from aluno;
desc curso;
select * from curso;







