CREATE DATABASE dados;

CREATE TABLE login(
	id_login INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	login varchar(40) NOT NULL,
        senha varchar(40) NOT NULL
 );
 
 CREATE TABLE representante (
 	id_representante INT NOT NULL PRIMARY KEY, 
	 nome_representante varchar (70),
	 empresa_id INT
 );
 
 CREATE TABLE empresa(
	 id_empresa INT NOT NULL PRIMARY KEY,
	 id_representante INT NOT NULL, 
	 cnpj INT  NOT NULL,
    nome_empresa varchar(40),
    email varchar(255),
    telefone INT ,
    endereço varchar(255),
    bairro varchar(80),
    numero INT, 
    cep INT,
    cidade varchar(80),
    estado varchar(80)
 );
 
 INSERT INTO login
 VALUES('1','natanista','teamojesus1234');
 
 INSERT INTO representante 
 VALUES('1','Jonas Albulquerque','2');
 
 INSERT INTO empresa 
 VALUES ('1','1','1232132134','Google','google@gmail.com','123231312',
 'rua mauricelis','vila caieitatuba','223','2133214','Sao Paulo','SP');
