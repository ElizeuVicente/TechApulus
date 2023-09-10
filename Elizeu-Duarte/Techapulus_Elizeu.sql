create database techapulus;

use techapulus;

create table cadastro (
id_empresa int primary key auto_increment,
nome_empresa varchar(60) unique not null,
email varchar(40) unique not null,
representante varchar(40),
tamanho_local int not null,
telefone char(11) unique,
endereco varchar(70) unique,
senha varchar(20) not null) auto_increment = 100;

insert into cadastro values
	(null, 'GRUPO TRES CORACOES', 'sac@3coracoes.com.br', 'Hugo Carvalho', 10, 1140028922, 'Rua Haddock Lobo, 973', 'H7856'),
    (null, 'JACOBS DOUWE EGBERTS BR','jacobsdouwebrasil@outlook.com', 'Jacob Douwe', 20, 1189224002, 'Rua Aurora, 793', '378J5'),
    (null, 'MELITTA DO BRASIL','mellitabr@gmail.com', 'Melitta de Souza', 30, 1198282998, 'Rua Halo, 117', '498Mel37');

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
 (null, 'Arábico', 25, 12),
 (null, 'Libérica', 20, 13);
 
select * from graos;
    
describe graos;

drop database techapulus;