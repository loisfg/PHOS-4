CREATE DATABASE phos4;
use phos4;


CREATE TABLE empresa_login (
	id_login int  primary key auto_increment,
    login_empresa varchar(40),
    senha varchar(70),
    adm_usuario char(1)
    );

CREATE TABLE empresa_cadastro (
	id_cadastro  int primary key auto_increment, 
    nome_empresa varchar(70),
    telefone varchar(11),
    email varchar(255),
    enderço varchar(100),
    cnpj char(14),
    fklogin int,
	foreign key(fklogin) references empresa_login (id_login)
    ) auto_increment= 100;
    
 CREATE TABLE luminosidade (
		id_luminosidade int primary key auto_increment,
        luminosidade_local varchar(45),
		luminosidade_ideal varchar(10),
        luminosidade_atual varchar(10),
		variacao_luminosidade varchar(10),
        data_luminosidade date,
        fkcadastro int,
        foreign key(fkcadastro) references empresa_cadastro (id_cadastro)
    ) auto_increment= 1000;


    
SELECT *
FROM empresa_login;

INSERT INTO luminosidade 
VALUES(null,'1000lux','980lux','20lux', '1990-05-18'),
      (null,'1100lux','950lux','150lux', '2020-10-10'),
      (null,'1200lux','1000lux','200lux','2010-10-12'),
      (null,'1300lux','1050lux','100lux','2001-09-11'),
      (null,'500lux','300lux','200lux', '2001-08-14'),
      (null,'750lux','540lux','100lux','2003-04-15'),
      (null,'650lux','850lux','50lux','1998-06-30');
      
INSERT INTO empresa_cadastro 
VALUES(null,'GOOGLE','11987388111','google@gmail.com', 'rua cinco','63512489000121', 1000),
      (null,'iutube','21923421421','arebaba@hotmail.com','rua J','26254897000151', 1001),
      (null,'Puma','51977686316','puma@gmail.com','rua augusta', '36598421000119', 1002),
      (null,'Git','1199878787','git@hub.com', 'rua de melo', '23654789000125', 1003),
      (null,'amazon','19933142','amazon@amazon.com','rua hadock', '54236987000141', 1004),
      (null,'McDonalds','1198754432','mcdonalds@mcdonalds.com', 'rua joaquim marra', '05125461000125', 1005),
      (null,'GetNet','1153462455','getnet@getnet.com', 'rua coracao de maça','12345688000135', 1006);

INSERT INTO empresa_login 
VALUES(null,'natanista','@2e1oUdhu8QWQ80BWD', 1, 100),
      (null,'LuizGsilva','ghghhghg', 0, 101),
      (null,'ViniOliveira','vinivini321', 0, 102),
      (null, 'LuisFRocha','lflflflf', 0, 103),
      (null,'Carlos','carlos15', 0, 104),
      (null,'ThallesBuso','thallesb', 0, 105),
      (null,'MatheusDaniel','@123456', 0, 106);


select * from empresa_cadastro, luminosidade, empresa_login where fkcadastro = id_cadastro and fklogin = id_login;

      
