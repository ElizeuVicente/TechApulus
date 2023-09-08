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
	(null, 10, 'GRUPO TRES CORACOES', 'Gustavo Samuel', 'gustavo.samuel@gmail.com', 1140028922, 'Rua Haddock Lobo, 973', 'Gustavo123'),
    (null, 20, 'JACOBS DOUWE EGBERTS BR', 'Elizeu', 'elizeus456@outlook.com', 1189224002, 'Rua Aurora, 793', 'Zeu456'),
    (null, 30, 'MELITTA DO BRASIL', 'Amanda', 'amanda1208@hotmail.com', 1198282998, 'Rua Halo, 117', 'Amanda789');

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