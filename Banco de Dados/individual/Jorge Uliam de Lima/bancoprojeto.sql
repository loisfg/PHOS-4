create database site_institucional;
use site_institucional;


-- Dados do Usuário (provavelmente um representante da empresa)
create table Usuario (
id_usuario int primary key,
nome varchar(60),
email varchar(60),
senha varchar(255),
telefone_celular varchar(11),
  );

-- Dados mais levados para empresa
create table Empresa (
  id_empresa int primary key,
  empresa varchar(60),
  cnpj char(14),
  telefone_celular varchar(11),
  );
  
  -- Penso aqui como um dado em porcentagem de luminosidade da empresa que apareceria no site
  create table Luminosidade (
  id_lumiempresa int primary key,
  luminosidade_natural varchar(19),
  luminosidade_eletrica varchar(19),
  horario char(8),
  );

insert into Usuario values (1,'Jaime Barão Hoffman','contatojaimebarao@hotmail.com','baraohoff_m=an','1197656968'),
                           (2,'Joyce Lothbrok','empresavivaz@gmail.com','loth0b-r_o..k','1122317477');
                           
insert into Empresa values (1,'Loja do Barao','008543000173','1125879945'),
                           (2,'Vivaz contabilidade','657739000123','1122039548');

insert into Luminosidade values (1,'45%','55%','17:10:09),
                                (2,'78%','22%%'11:05:01);
