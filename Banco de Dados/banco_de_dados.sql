CREATE DATABASE phos4;
use phos4;

CREATE TABLE login (
	id_empresa INT NOT NULL primary key,
    login varchar(40),
    senha varchar(70)
);

CREATE TABLE empresa (
	id_empresa  INT NOT NULL primary key, 
    nome_empresa varchar(70),
    telefone varchar(11),
    email varchar(255),
    cnpj char(14)
    );
    
    CREATE TABLE endereco(
		id_empresa INT NOT NULL primary key,
		endereco varchar(70),
        numero INT,
        bairro varchar(70),
        cidade varchar(70),
        UF char(2),
        cep char(8)
    );

    CREATE TABLE luminosidade (
		id_empresa int primary key,
		luminosidade_ideal varchar(10),
        luminosidade_atual varchar(10),
		variacao_luminosidade varchar(10)
    );

SELECT *
FROM login;

INSERT INTO login 
VALUES(1,'natanista','@2e1oUdhu8QWQ80BWD'),
      (2,'LuizGsilva','ghghhghg'),
      (3,'ViniOliveira','vinivini321'),
      (4, 'LuisFRocha','lflflflf'),
      (5,'Carlos','carlos15'),
      (6,'ThallesBuso','thallesb'),
      (7,'MatheusDaniel','@123456');

INSERT INTO empresa 
VALUES(1,'GOOGLE','11987388111','google@gmail.com','63512489000121'),
      (2,'iutube','21923421421','arebaba@hotmail.com','26254897000151'),
      (3,'Puma','51977686316','puma@gmail.com','36598421000119'),
      (4,'Git','1199878787','git@hub.com', '23654789000125'),
      (5,'amazon','19933142','amazon@amazon.com','54236987000141'),
      (6,'McDonalds','1198754432','mcdonalds@mcdonalds.com','05125461000125'),
      (7,'GetNet','1153462455','getnet@getnet.com','12345688000135');

INSERT INTO endereco
VALUES(1,'rua natenas','666','vila pumpulha','Sao Paulo','SP','09834203'),
      (2,'rua das oliveiras','16','vila do chaves','Mauá','SP','09361231'),
      (3,'rua das pumas','24','vila das feras','Guarulhos','SP','09382111'),
      (4,'rua das casas', '3112','jardim das lojas','Interlagos','SP','05315665'),
      (5,'rua caxias','17','carrao','Sao Paulo','SP','00822558'),
	(6,'av goias', '2025','Barcelona','São Caetano do Sul','SP','02542120'),
	(7,'rua alexandre dumas', '1711','Andrade','São Paulo','SP','06524511');
	  
INSERT INTO luminosidade 
VALUES(1,'1000lux','980lux','20lux'),
      (2,'1100lux','950lux','150lux'),
      (3,'1200lux','1000lux','200lux'),
      (4,'1300lux','1050lux','100lux'),
      (5,'500lux','300lux','200lux'),
      (6,'750lux','540lux','100lux'),
      (7,'650lux','850lux','50lux');

UPDATE login SET login = 'Carlinhos' where id_empresa = '5';

DELETE FROM login WHERE id_empresa = '5';
DROP DATABASE phos4;
    
    
