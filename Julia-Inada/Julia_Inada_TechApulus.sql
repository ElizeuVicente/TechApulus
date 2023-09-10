create database techapulus;

use techapulus;

create table cadastro (
id_empresa int primary key auto_increment,
tamanho_local int not null,
nome_empresa varchar(35) unique not null,
representante varchar(40),
email varchar(40) unique not null,
telefone char(11) unique,
endereco varchar(70),
senha varchar(20) not null) auto_increment = 100;

insert into cadastro values
	(null, 10, 'IGUAÇU', 'Fernando da Silva', 'fernando.silva@gmail.com', 1167356193, 'Rua Conselheiro Saraiva, 135', 'Fernando123'),
    (null, 20, 'PILÃO', 'Carlos Rosário', 'carlos.rosa@outlook.com', 1148903316, 'Rua Pirambolas, 85', 'CarlosRosa'),
    (null, 30, 'SARA LEE', 'Gabriela Moraes', 'gabriela.moraes@hotmail.com', 1198113240, 'Rua Águas Rasas, 247', 'Gabi123');

select * from cadastro;

select nome_empresa as Empresa from cadastro;

describe cadastro;

create table sensor (
id_sensor int primary key auto_increment,
tempo datetime default current_timestamp,
temperatura_celsius int(3),
umidade_porcentagem int(3)) auto_increment = 1000;

insert into sensor (temperatura_celsius, umidade_porcentagem) values
    (21, 13),
    (23, 14);
    
select * from sensor;

describe sensor;
    
create table graos (
id_grao int primary key auto_increment,
nome_grao varchar(30) not null,
temp_adequada int(3) not null,
umid_adequada int(3) not null
);

insert into graos values
 (null, 'Arábico', 25, 12),
 (null, 'Robusta', 20, 13);
 
select * from graos;
    
describe graos;