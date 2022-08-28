create database Tomato_town;

use Tomato_town;

create table temp_umid (
id int auto_increment primary key,
temperatura float not null,
umidade float not null,
dtaRegistro datetime
);

insert into temp_umid values
(null, 22.01, 30, '2022-08-27 18:45:04'),
(null, 23.00, 32, '2022-08-27 18:47:04'),
(null, 22.05, 32, '2022-08-27 18:49:04'),
(null, 22.28, 32, '2022-08-27 18:51:04'),
(null, 21.98, 31, '2022-08-27 18:53:04'),
(null, 22.03, 30, '2022-08-27 18:55:04'),
(null, 22.64, 31, '2022-08-27 18:57:04'),
(null, 23.01, 31, '2022-08-27 18:59:04'),
(null, 23.61, 32, '2022-08-27 19:01:04'),
(null, 24.03, 32, '2022-08-27 19:03:04');

select * from temp_umid;

select * from temp_umid order by dtaRegistro asc;

select * from temp_umid order by dtaRegistro desc;

select * from temp_umid order by umidade asc;

select * from temp_umid order by umidade desc;

select * from temp_umid order by temperatura asc;

select * from temp_umid order by dtaRegistro desc;

select * from temp_umid where umidade = '32';

select * from temp_umid where temperatura like'22%';

select * from temp_umid where dtaRegistro like '%1%';

create table dados_cliente (
id int auto_increment primary key,
NomeEmpresa varchar (40),
CNPJ double,
email varchar (80),
telefone varchar (15)
);

insert into dados_cliente values
(null, 'OneWorld Agro Brandão SA', 01222333000145, 'oneworldagrobrandao@gmail.com', '1150512299'),
(null, 'Very Vivian Tomato LTDA', 02333444000156, 'veryviviantomato@gmail.com', '1151502388'),
(null, 'EduAGRO ForLife LTDA', 01333444000167, 'eduagroforlife@gmail.com', '11525132477'),
(null, 'Monica Agro Premier SA', 03444555000178, 'monicaagropremier@gmail.com', '1153553851'),
(null, 'GreenTree Caio AgroPlant SA', 06555666000189, 'greentreecaioagroplant@gmail.com', '1154523842'),
(null, 'EagleEye Thiago RedPlant Tomato LTDA', 05777222000144, 'eagleeyethiagoredplanttomato@gmail.com', '1152573374');

select * from dados_cliente;

select * from dados_cliente order by NomeEmpresa;

select * from dados_cliente order by CNPJ DESC;

select * from dados_cliente order by CNPJ ASC;

select * from dados_cliente where NomeEmpresa = 'Agro';

select * from dados_cliente;

select NomeEmpresa, email, CNPJ FROM dados_cliente;

select * from dados_cliente where NomeEmpresa = 'very vivian tomato ltda';

select * from dados_cliente;

select * from dados_cliente where NomeEmpresa like '%a%';