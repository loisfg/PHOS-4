create database Projeto;

use Projeto;

-- registro da empresa

create table registrar(
idRegistro int primary key,
cpnj varchar(30),
login varchar(50),
nomeempresa varchar(30),
telefone varchar(11),
email varchar(50),
senha varchar(50)
);

-- backlog dos registros da API

create table registros(
idBacklog int primary key,
densidadeiluminacao int,
tempoiluminicao varchar(8),
variacaoilumicao varchar(15),
datailuminacao varchar(8)
);

-- Insersão de dados criados pelas empresas

insert into registrar(100,12345678912,'empresalogin1','empresa1','63215847','empresa1@live.com','123456'),
                     (101,21987654321,'empresalogin2','empresa2','51573214','empresa2@hotmail.com','password'),
                     (102,54321487532,'empresalogin3','empresa3','21435461','empresa3@outlook.com','senha');

-- mostrar todos os dados

select * from registrar;

