create database projeto;
use projeto;

create table empresa (
cnpj bigint primary key not null,
nome varchar(40) not null,
rua varchar(40) not null,
telefone bigint,
email varchar(40) not null
);

create table luminosidade (
id_luminosidade int not null,
locais varchar(40),
luminosidade_atual int,
luminosidade_ideal int
);

-- Apenas quando aprendermos chave estrangeira.
create table endereco (
rua varchar(40) not null,
bairro varchar(40) not null,
cidade varchar(40) not null,
numero int not null,
complemento varchar(40)
);

insert into empresa values( 23456654289802 , 'Teminate' , 'Rua das oliveiras' , 1145553923 , 'teminate@teminate.com.br'),
						( 32654456982202 , 'Armazem do Zé' , 'Rua Pedroso' , 1123244554, 'AZem@gmail.com');

insert into luminosidade values( 1 , 'Escritório' , '50' , '30'),
							   ( 2 , 'Estoque' , '70' , '20');

select * from empresa;
select * from luminosidade;
drop table empresa;