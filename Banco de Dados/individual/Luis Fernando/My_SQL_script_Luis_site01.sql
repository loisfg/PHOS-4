
create database Empresa;
create table Empresa_01 (
  CNPJ_CPF int primary key,
  Nome_da_empresa varchar (50),
  CEP varchar (50),
  Telefone int, 
  Email varchar (50),
  Senha varchar (50),  
  );
select * from usuario_01;
insert into empresa_01 values (1564894165, 'LuckLight' , 'JdAngela' , 654165105 , 'luis.oliveira@bandtec.com.br', null, null);

create database Medidor; 
create table Lum_01 (

  leitura int, -- faz a leitura no Arduino
  leituraconvertida float, -- converte para numeros float
  sentenca varchar(128), -- qual a ação
  valorlum varchar (10)
                      ); -- demonstra o valor da lum



