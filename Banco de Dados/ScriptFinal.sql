CREATE DATABASE phos4;
use phos4;

CREATE TABLE empresa_cadastro (
	id_cadastro  int primary key auto_increment, 
	razaosocial varchar (80),
    nomefantasia varchar(45),
	telefone char(13),
	celular char(14),
    estado char(2),
	cidade varchar(45),
	bairro varchar(30),
	rua varchar(60),
	numero int,
    CNPJ char(14),
	representante varchar(45),
	email varchar(225),
	senha varchar(20)
    );

	CREATE TABLE Cadastro_usuario (
	 fkEmpresa_cadastro int,
     foreign key (fkEmpresa_cadastro) references empresa_cadastro (id_cadastro),
     CPF char(14),
    email varchar(225),
    senha varchar(20),
	Função varchar(45),
	primary key (fkEmpresa_cadastro, CPF)
    );

	create table Ambiente(
	id_Ambiente int primary key auto_increment,
	Nome varchar(45),
    Andar char (3),
	fkempresa_cadastro int,
    foreign key(fkempresa_cadastro) references empresa_cadastro (id_cadastro)
	)auto_increment = 1000;
    


 CREATE TABLE Sensor (
		id_Sensor int primary key auto_increment,
        Nome varchar(45),
        fkambiente int,
        foreign key(fkambiente) references Ambiente (id_Ambiente)
    ) auto_increment= 5000;
      

      
      INSERT INTO empresa_cadastro 
VALUES(null,'Google LLC','GOOGLE','(11)4002-8922','(11)98360-8328','SP','São Paulo','Jardins', 'rua cinco',100,'63512489000121','Pedro Leiva','google@gmail.com','Pedrohlhl'),
      (null,'Alphabet Inc. YouTube','youtube','(11)4969-0122','(11)97622-9000','AM','Manaus','Vila Mariana','rua Jácoba',52,'26254897000151','Luiz Fernando','arebaba@hotmail.com','lferocha'),
      (null,'Puma Sports LTDA','Puma','(11)4880-3562','(11)99028-0121','RJ','Rio de Janeiro','Maria','rua augustina',1057,'36598421000119','Beatriz Campos','puma@gmail.com','bea3Camp'),
      (null,'Coca-Cola Indústrias Ltda','Coca-Cola','(11)4272-8054','(11)94227-0031','MG','Belo horizonte','Vila Mercedez', 'rua de melo',201, '23654789000125','Franklin Oliveira','cocacola@gmail.com','frank321'),
      (null,'Amazon.com, Inc.','Amazon', '(11)4462-5662','(11)97714-3475','SC','Criciuma','Leonidas','rua hadock',300,'86968356000139','Isabella Pires','amazon@amazon.com','isabel123'),
      (null,'McDonald`s Corporation','McDonalds','(11)4955-9231','(11)98852-1372','SP','São Caetano','Albuquerque','rua joaquim marra',511,'05125461000125','Carlos Eduardo','mcdonalds@mcdonalds.com','Carlinhos321'),
      (null,'GETNET ADQUIRENCIA E SERVICOS PARA MEIOS DE PAGAMENTO S.A.','GetNet','(11)4976-4548','(11)99774-2019','SP','itaquaquecetuba','Paraíso','rua alcântara',1001,'12345688000135','Matheus Silva','getnet@getnet.com','@123456');

	  INSERT INTO Cadastro_usuario
VALUES(1,'849.564.170-47','leonardolg@gmail.com','leo12nardo','ADM gestão'),
      (1,'656.648.130-32','fernandamg@gmail.com','f3rn4nd4','Fullstack'),
	  (2,'383.463.160-46','gabriellaalb@gmail.com','g4br13ll4','ADM gestão'),
      (2,'378.665.150-77','kaiquefgds@gmail.com','k41qu3123','Gerente setor A'),
	  (3,'143.330.110-51','marcoskst@gmail.com','m4rc0s123','ADM gestão'),
	  (3,'630.738.150-74','luisavict@gmail.com','lu1s4v1c123','Assistente ADM gestão'),
      (4,'310.394.080-79','rafaelacam@gmail.com','r4f43l4123','ADM gestão'),
      (4,'651.678.152-20','victorhenr@gmail.com','v1ct0rh3nr1123','Assistente ADM'),
	  (5,'872.498.160-55','lendrobrol@gmail.com','l34ndr0br123','ADM gestão'),
	  (5,'438.684.360-49','geovannasest@gmail.com','g30v4nn4s3st4','Analista de dados'),
      (6,'821.809.740-60','joaovilr@gmail.com','j040v1t0r123','ADM gestão'),
	  (6,'081.754.050-40','julianaamparo@gmail.com','jul14n44mp4r0','Suporte de comunicação e rede'),
      (7,'549.876.370-06','samueldepor@gmail.com','s4mu3lde123','ADM gestão'),
	  (7,'153.362.910-21','lucasaugus@gmail.com','luc4s4ugust0','Front-end');
      
      INSERT INTO Ambiente 
VALUES(null,'Sala 1C',1,1),
      (null,'escritório 1A',3,2),
      (null,'Sala 3B',2,3),
      (null,'Sala 1A',4,4),
      (null,'Sala 11B',9,5),
      (null,'Sala 1',8,6),
      (null,'Sala 2E',7,7);

INSERT INTO Sensor 
VALUES(null,'Centro',1000),
      (null,'Canto Esquerdo',1001),
      (null,'Canto direito',1002),
      (null,'centro',1003),
      (null,'Centro',1004),
      (null,'centro',1005),
      (null,'centro',1006);
      
      
      
      CREATE TABLE Leitura (
		data_hora datetime,
		fkSensor int,
		foreign key(fksensor) references Sensor (id_Sensor),
		Lux decimal(6,2),
        primary key (data_hora, fkSensor)
	    )auto_increment = 10000;

    
INSERT INTO Leitura 
VALUES('2020-10-17 12:34:00.000',5000,'701.45'),
      ('2020-10-17 12:34:00.000',5001,'632.00'),
      ('2020-10-17 12:34:00.000',5002,'550.72'),
      ('2020-10-17 12:34:00.000',5003,'666.77'),
      ('2020-10-17 12:34:00.000',5004,'676.77'),
      ('2020-10-17 12:34:00.000',5005,'600.50'),
      ('2020-10-17 12:34:00.000',5006,'689.22');


select * from Cadastro_usuario, empresa_cadastro, Ambiente, Sensor, Leitura where fkempresa_cadastro = id_cadastro and fkambiente = id_Ambiente and fksensor = id_Sensor;


      
      

                     
                        
                        


