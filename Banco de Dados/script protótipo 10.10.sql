CREATE DATABASE phos4;
use phos4;


CREATE TABLE empresa_login (
	id_login int  primary key auto_increment,
    login_empresa varchar(40),
    senha varchar(70),
    adm_usuario int check (adm_usuario = 0 or adm_usuario = 1)
    );

CREATE TABLE empresa_cadastro (
	id_cadastro  int primary key auto_increment, 
    nome_empresa varchar(70),
    telefone varchar(11),
    email varchar(255),
    enderço varchar(100),
    CNPJ char(14),
    fklogin int,
	foreign key(fklogin) references empresa_login (id_login)
    ) auto_increment= 100;

	create table Ambiente(
	id_Ambiente int primary key auto_increment,
	Nome varchar(45),
	Local_ambiente varchar(45),
	fkcadastro int,
    foreign key(fkcadastro) references empresa_cadastro (id_cadastro)
	)auto_increment = 1000;

    
 CREATE TABLE Sensor (
		id_Sensor int primary key auto_increment,
        Nome varchar(45),
        fkambiente int,
        foreign key(fkambiente) references Ambiente (id_Ambiente)
    ) auto_increment= 5000;
      

INSERT INTO empresa_login 
VALUES(null,'natanista','@2e1oUdhu8QWQ80BWD', 1),
      (null,'LuizGsilva','ghghhghg', 0),
      (null,'ViniOliveira','vinivini321', 0 ),
      (null, 'LuisFRocha','lflflflf', 0),
      (null,'Carlos','carlos15', 0),
      (null,'ThallesBuso','thallesb', 0),
      (null,'MatheusDaniel','@123456', 0);
      
      INSERT INTO empresa_cadastro 
VALUES(null,'GOOGLE','11987388111','google@gmail.com', 'rua cinco','63512489000121', 1),
      (null,'iutube','21923421421','arebaba@hotmail.com','rua J','26254897000151', 1),
      (null,'Puma','51977686316','puma@gmail.com','rua augusta', '36598421000119', 2),
      (null,'Git','1199878787','git@hub.com', 'rua de melo', '23654789000125', 3),
      (null,'amazon','19933142','amazon@amazon.com','rua hadock', '54236987000141', 4),
      (null,'McDonalds','1198754432','mcdonalds@mcdonalds.com', 'rua joaquim marra', '05125461000125', 5),
      (null,'GetNet','1153462455','getnet@getnet.com', 'rua coracao de maça','12345688000135', 6);
      
      INSERT INTO Ambiente 
VALUES(null,'Sala1C GOOGLE','centro',100),
      (null,'escritório1A iutube','centro',101),
      (null,'Salão1 Puma','centro',102),
      (null,'Sala1A Git','centro',103),
      (null,'Sala11B amazon','centro',104),
      (null,'Sala1 McDonalds','centro',105),
      (null,'Sala2E GetNet','centro',106);

INSERT INTO Sensor 
VALUES(null,'Sala 1C',1000),
      (null,'escritório 1A',1001),
      (null,'Salão 1',1002),
      (null,'Sala 1A',1003),
      (null,'Sala 11B',1004),
      (null,'Sala 1',1005),
      (null,'Sala 2E',1006);
      
      
      
      CREATE TABLE Leitura (
      fksensor int primary key,
        foreign key(fksensor) references Sensor (id_Sensor),
		Lux decimal(6,2),
		data_hora datetime
    );

    
INSERT INTO Leitura 
VALUES(5000,'701.45','2020-10-17 12:30:00.000'),
      (5001,'632.00','2020-10-17 12:31:00.000'),
      (5002,'550.72','2020-10-17 12:32:00.000'),
      (5003,'666.77','2020-10-17 12:33:00.000'),
      (5004,'676.77','2020-10-17 12:34:00.000'),
      (5005,'600.50','2020-10-17 12:35:00.000'),
      (5006,'689.22','2020-10-17 12:40:00.000');


select * from empresa_login, empresa_cadastro, Ambiente, Sensor, leitura where fklogin = id_login and fkcadastro = id_cadastro and fkambiente = id_Ambiente and fksensor = id_Sensor;

      
