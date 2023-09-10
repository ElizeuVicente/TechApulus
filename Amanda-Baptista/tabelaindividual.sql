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
senha varchar(20) not null)
 auto_increment = 100;

insert into cadastro (tamanho_local, nome_empresa, representante, email, telefone, endereco, senha) values
	(15, 'Café Emporium', 'Amanda Geovanna', 'amanda1208@gmail.com', 1140028922, 'Rua Haddock Lobo, 973', 'Amanda123#'),
    (30, 'Três Corações', 'Elizeu Duarte', 'elizeus456@outlook.com', 1189224002, 'Rua Aurora, 793', 'Zeu456#'),
    (45, 'Pilão', 'Lucas Pagliarini', 'lucaspagli@hotmail.com', 1198282998, 'Rua Halo, 117', 'Lucas798%');

select * from cadastro;

select nome_empresa as Empresa from cadastro;

describe cadastro;

create table sensor(
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

insert into graos (nome_grao, temp_adequada, umid_adequada) values
 ('Arábico', 25, 12),
 ('Libérica', 20, 13);
 
select * from graos;
    
describe graos;