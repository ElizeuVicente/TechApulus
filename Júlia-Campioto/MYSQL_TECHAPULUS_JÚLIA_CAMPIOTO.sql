create database techapulus;

use techapulus;

create table cadastro (
id_empresa int primary key auto_increment,
nome_empresa varchar(50) not null,
representante varchar(50)not null,
email varchar(40) unique not null,
telefone char(11) not null,
endereço varchar(70)not null,
tamanho_empresa varchar(20) not null,
senha varchar(15) not null) auto_increment = 100;

insert into cadastro values
(null, 'Café Pelé', 'Pedro da Silva', 'pedro.silva123@gmail.com', 11913945622, 'Rua João Carlos, 10, Sé - São Paulo - SP', '400m', '#Pelecafe45'), 
(null, 'Melitta', 'Anna Maria Souza', 'annamariasouza1@gmail.com', 11972648772, 'Rua Antonio João Costa, 47, Tremembé - São Paulo - SP', '5000m', '#Melitta165#'),
(null, 'Três Corações', 'Lucas Oliveira Moraes', 'lucasmoraesdeeo@gmail.com', 11973768832, 'Avenida Rogério Lima, 500 , Vila Olímpia - São Paulo - SP', '4950m', '@MTresCoracoes3');

select * from cadastro;

describe cadastro;

create table sensor (
id_sensor int primary key	auto_increment,
data_horario datetime default current_timestamp, 
temperatura varchar(5),
umidade varchar(5)) auto_increment = 1000;

insert into sensor (temperatura, umidade) values
(30, 50),
(40, 70),
(30, 20);

select * from sensor;

describe sensor; 

create table graos (
id_graos int primary key auto_increment, 
nome_grao varchar(30) not null, 
temperatura_adequada varchar(5) not null,
umidade_adequada varchar(5) not null
); 

insert into graos values	
(null, 'Libérica', '20 C', '23%'),
(null, 'Arábica', '30 C', '50%'),
(null, 'Catuaí', '27 C',  '70%');

select * from graos;

describe graos; 