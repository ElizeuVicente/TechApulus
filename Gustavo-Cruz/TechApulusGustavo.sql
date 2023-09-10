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
	(null, 10, 'LATITUDE 13', 'Tamires Silva', 'contato@latitude13.com.br', 1135210200, 'Avenida Latinos 874', 'lat13@2023'),
    (null, 20, 'CAFE BOM DIA LTDA.', 'Luis Almeida', 'contato@bomdia.com.br', 1143221513, 'Avenida Aricanduva 242', ''),
    (null, 30, 'CAFE PACAEMBU LTDA.', 'Daniela Escobar', 'contato@pacaembu.com.br', 1151379212, 'Avenida Sapopemba 313', '');

select * from cadastro;

select nome_empresa as Empresa from cadastro;

describe cadastro;

create table sensor (
id_sensor int primary key auto_increment,
tempo datetime default current_timestamp,
temperatura_celsius int(3),
umidade_porcentagem int(3)) auto_increment = 1000;

insert into sensor (temperatura_celsius, umidade_porcentagem) values
    (23, 12),
    (20, 13);
    
select * from sensor;

describe sensor;
    
create table graos (
id_grao int primary key auto_increment,
nome_grao varchar(30) not null,
temp_adequada int(3) not null,
umid_adequada int(3) not null
);

insert into graos values
 (null, 'Bourdon', 18, 11),
 (null, 'Catuaí', 22, 13);
 
select * from graos;
    
describe graos;