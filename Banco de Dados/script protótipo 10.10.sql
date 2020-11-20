CREATE DATABASE phos4;
use phos4;

CREATE TABLE empresa_cadastro (
	id_cadastro  int primary key auto_increment, 
	razaosocial varchar (80),
    nomefantasia varchar(50),
	telefone char(13),
	celular char(14),
    endereco varchar(100),
    CNPJ char(14),
	representante varchar(70),
	email varchar(100),
	senha varchar(50)
    );

	   CREATE TABLE Cadastro_usuario (
	id_Cadastro_usuario int  primary key auto_increment,
    email varchar(75),
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
VALUES(null,'Google LLC','GOOGLE','(11)4002-8922','(11)98360-8328', 'rua cinco','63512489000121','google@gmail.com','Pedro Leiva'),
      (null,'Alphabet Inc. YouTube','youtube','(11)4969-0122','(11)97622-9000','rua J','26254897000151','arebaba@hotmail.com','Luiz Fernando'),
      (null,'Puma Sports LTDA','Puma','(11)4880-3562','(11)99028-0121','rua augusta', '36598421000119','puma@gmail.com','Beatriz Campos'),
      (null,'Coca-Cola Indústrias Ltda','Coca-Cola','(11)4272-8054','(11)94227-0031', 'rua de melo', '23654789000125','cocacola@gmail.com','Franklin Oliveira'),
      (null,'amazon','19933142','rua hadock', '(11)4462-5662','(11)97714-3475','amazon@amazon.com','Isabella Pires'),
      (null,'McDonald`s Corporation','McDonalds','(11)4955-9231','(11)98852-1372', 'rua joaquim marra', '05125461000125','mcdonalds@mcdonalds.com','Carlos Eduardo'),
      (null,'GETNET ADQUIRENCIA E SERVICOS PARA MEIOS DE PAGAMENTO S.A.','GetNet','(11)4976-4548','(11)99774-2019', 'rua coracao de maça','12345688000135','getnet@getnet.com','Matheus Silva');

	  INSERT INTO Cadastro_usuario
VALUES(null,'Pedro Leiva','Pedrohlhl','849.564.170-47','ADM gestão', 1),
      (null,'Luciene','glapccd','656.648.130-32','Fullstack', 1),
	  (null,'Luiz Fernando','lferocha','383.463.160-46','ADM gestão', 2),
      (null,'Maristela','joinha','378.665.150-77','Gerente setor A', 2),
	  (null,'Franklin Oliveira','frank321','143.330.110-51','ADM gestão',3),
	  (null,'Robson','robinho','630.738.150-74','Assistente ADM gestão', 3),
      (null, 'Beatriz Campos','bea3Camp','310.394.080-79','ADM gestão',4),
      (null,'Cleiton','basquete123','651.678.152-20','Assistente ADM', 4),
	  (null,'Isabella Pires','isabel123','872.498.160-55','ADM gestão',5),
	  (null,'Oswaldo','oswaldinho123','438.684.360-49','Analista de dados', 5),
      (null,'Carlos Eduardo','Carlinhos321','821.809.740-60','ADM gestão',6),
	  (null,'Cleberson','batinha','081.754.050-40','Suporte de comunicação e rede',6),
      (null,'Matheus Silva','@123456','549.876.370-06','ADM gestão',7),
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

      
