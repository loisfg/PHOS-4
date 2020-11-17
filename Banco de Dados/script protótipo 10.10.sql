CREATE DATABASE phos4;
use phos4;

CREATE TABLE empresa_cadastro (
	id_cadastro  int primary key auto_increment, 
    nome_empresa varchar(70),
    telefone varchar(11),
    email varchar(255),
    enderço varchar(100),
    CNPJ char(14),
    );

	   CREATE TABLE Cadastro_usuario (
	id_Cadastro_usuario int  primary key auto_increment,
    E_mail varchar(75),
    senha varchar(75),
    CPF char(14),
	Função varchar(50)
	fkempresa_cadastro int,
	foreign key(fkempresa_cadastro) references empresa_cadastro (id_cadastro)
    );

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
      

      
      INSERT INTO empresa_cadastro 
VALUES(null,'GOOGLE','11987388111','google@gmail.com', 'rua cinco','63512489000121' ),
      (null,'iutube','21923421421','arebaba@hotmail.com','rua J','26254897000151'),
      (null,'Puma','51977686316','puma@gmail.com','rua augusta', '36598421000119'),
      (null,'Git','1199878787','git@hub.com', 'rua de melo', '23654789000125'),
      (null,'amazon','19933142','amazon@amazon.com','rua hadock', '54236987000141'),
      (null,'McDonalds','1198754432','mcdonalds@mcdonalds.com', 'rua joaquim marra', '05125461000125'),
      (null,'GetNet','1153462455','getnet@getnet.com', 'rua coracao de maça','12345688000135');

	  INSERT INTO Cadastro_usuario
VALUES(null,'natanista','@2e1oUdhu8QWQ80BWD','849.564.170-47','ADM gestão', 1),
      (null,'Luciene','glapccd','656.648.130-32','Fullstack', 1),
	  (null,'LuizGsilva','ghghhghg','383.463.160-46','ADM gestão', 2),
      (null,'Maristela','joinha','378.665.150-77','Gerente setor A', 2),
	  (null,'ViniOliveira','vinivini321','143.330.110-51','ADM gestão',3),
	  (null,'Robson','robinho','630.738.150-74','Assistente ADM gestão', 3),
      (null, 'LuisFRocha','lflflflf','310.394.080-79','ADM gestão',4),
      (null,'Cleiton','basquete123','651.678.152-20','Assistente ADM', 4),
	  (null,'Carlos','carlos15','872.498.160-55','ADM gestão',5),
	  (null,'Oswaldo','oswaldinho123','438.684.360-49','Analista de dados', 5),
      (null,'ThallesBuso','thallesb','821.809.740-60','ADM gestão',6),
	  (null,'Cleberson','batinha','081.754.050-40','Suporte de comunicação e rede',6),
      (null,'MatheusDaniel','@123456','549.876.370-06','ADM gestão',7),
	  (null,'Silene','senha123','153.362.910-21','Front-end',7);
      
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


select * from Cadastro_usuario, empresa_cadastro, Ambiente, Sensor, Leitura where fkcadastro = id_cadastro and fkambiente = id_Ambiente and fksensor = id_Sensor;

      
