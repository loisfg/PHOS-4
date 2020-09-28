CREATE DATABASE PHOS4;
-- "PHOS4" (PHOSPHOUR)
-- Cria o Banco de Dados "PHOS4" 

USE PHOS4 ; 
-- Seleciona o Banco de Dados "PHOS4"

CREATE TABLE Login (
-- Tabela para o Login de Usuário
    idempresa int primary key NOT NULL,
    login varchar(20),
    senha varchar(20)); 
    -- Inserção dos campos para a tabela login


CREATE TABLE Empresa (
-- Tabela para o Cadastro das Empresas
    idempresa int primary key NOT NULL,
    CNPJ char(18),
    nome varchar(30),
    senha varchar(20),
    telefone varchar(20),
    email varchar (50));
    -- Inserção dos campos para a tabela empresa

CREATE TABLE Endereco (
-- Tabela para o Endereço
    idempresa INT primary key NOT NULL,
    endereco varchar(30),
    numero char(4),
    bairro varchar(20),
    cidade varchar(20),
    uf char(2));
    -- Inserção dos campos para a tabela endereço

CREATE TABLE Sensor (
-- Criação da Tabela "Sensor"
    idempresa int primary key not null,
    lum_ideal varchar(10),
    lum_atual varchar(10),
    variacao_lum varchar(10));
    -- Inserção dos campos para a tabela sensor
  
insert into login values
    (1,'enterprise','enter0123'),
    (2,'google','google123'),
    (3,'nike','nikeair'),
    (4,'contcom','cont321');
    -- Inserção dos registros para a tabela login
    
insert into empresa values
    (1,'18.781.203/0001-28','Enterprise','enter0123','011 5291-3922','enterprise@gmail.com'),
    (2,'23.234.123/0001-24','Google','google123','011 5928-3245','google@gmail.com'),
    (3,'19,234,231/0001-67','Nike','nikeair','011 5872-1234','nike@gmail.com'),
    (4,'24,432,782/0001-98','Contcom','cont321','011 5143-2324','contcom@gmail.com');
	-- Inserção dos registros para a tabela empresa
    
insert into endereco values
    (1,'Rua Marcolina Sampaio','264','Jardim Florenzio','São Paulo','SP'),
    (2,'Rua da Google Inc','224','Jardim Google','São Paulo','SP'),
    (3,'Rua da Seta','989','Jardim Swoosh','São Paulo','SP'),
    (4,'Rua Empresarial Augusto','134','Jardim Empresarial','Jundiaí','SP');
    -- Inserção dos registros para a tabela endereço
    
insert into sensor values
    (1,'1000 lux','900 lux','50 lux'),
    (2,'1250 lux','1000 lux','200 lux'),
    (3,'1150 lux','850 lux','100 lux'),
    (4,'1100 lux','1050 lux','50 lux');
	-- Inserção dos registros para a tabela do sensor
    
    

    
    
    
