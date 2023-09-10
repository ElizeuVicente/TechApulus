CREATE DATABASE techapulus;

USE techapulus;

CREATE TABLE cadastro (
idEmpresa int primary key auto_increment,
tamanho_armazem int not null,
nome_empresa varchar (50) not null,
representante_empresa varchar (50),
email varchar (50) unique not null default 'Sem e-mail',
telefone char (11) unique,
endereco_empresa varchar (150),
senha varchar (50) not null) auto_increment 100;

DESCRIBE cadastro;

INSERT INTO cadastro VALUES 
(null, '50', 'Starbucks', 'Bosco Romans', 'BoscoNewRomans@gmail.com', '11405789783', 'Rua Haddock Wolf, 783', 'Bosco4321'),
(null, '30', 'Grupo Tres Coracoes', 'Lucas Arial', 'LucasArial15@gmail.com', '11983047280', 'Rua Jaguar Elephant, 521', 'ArialLucas123'),
(null, '70', 'Melitta do Brasil', 'Julia Bold', 'BoldJulia137@gmail.com', '11487653208', 'Rua Elephant Snake, 982', 'BoldJulia137'),
(null, '120', 'Cafe Bom dia', 'Luis Sans', 'Luisans999@gmail,com', '1173810471', 'Rua Ant Mammoth, 777', 'SansLuis789');

SELECT * FROM cadastro;

SELECT tamanho_armazem as 'Tamanho do armazém' from cadastro;
SELECT nome_empresa as 'Nome da empresa' from cadastro;
SELECT representante_empresa as 'Representante da empresa' from cadastro;
SELECT endereco_empresa as 'Endereço da empresa' from cadastro;

DESCRIBE cadastro;

CREATE TABLE sensor (
id_sensor int primary key auto_increment,
tempo datetime default current_timestamp,
temperatura_celsius int (3) not null,
umidade_porcentagem int (3) not null) auto_increment = 1000;

DESCRIBE sensor;

SELECT temperatura_celsius as 'Temperatura em Celsius' from sensor;
SELECT umidade_porcentagem as '% da Umidade' from sensor;

INSERT INTO sensor (temperatura_celsius, umidade_porcentagem) VALUES
(22, 12),
(21, 13);

SELECT * FROM sensor;

CREATE TABLE graos (
id_grao int primary key auto_increment,
nome_grao varchar (50) not null,
temp_adequada int (3) not null,
umid_adequada int (3) not null);

SELECT nome_grao as 'Nome do grão' from graos;
SELECT temp_adequada as 'Temperatura adequada' from graos;
SELECT umid_adequada as 'Umidade adequada' from graos;

DESCRIBE graos; 

INSERT INTO graos VALUES 
(null, 'Arábico', 23, 11),
(null, 'Libérica', 24, 12);

SELECT * FROM graos;