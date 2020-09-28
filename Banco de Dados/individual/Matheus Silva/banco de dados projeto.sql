CREATE DATABASE dados;

CREATE TABLE login (
	id_empresa INT NOT NULL,
    login varchar(50),
    senha varchar(60)
);

CREATE TABLE empresa (
	id_empresa  INT NOT NULL, 
    nome_empresa varchar(80),
    telefone INT,
    email varchar(250),
    cnpj varchar(20)
    );

    CREATE TABLE endereco(
		id_empresa INT NOT NULL,
		endereco varchar(70),
        numero INT,
        bairro varchar(70),
        cidade varchar(70),
        estado varchar(70),
        cep INT
    );

    CREATE TABLE luminosidade (
		luminosidade_ideal varchar(15),
        luminosidade_atual varchar(15),
		variacao_luminosidade varchar(15)
    );

INSERT INTO login
VALUES ('01','Carlos','carlos15');

INSERT INTO empresa
VALUES ('02','amazon','19933142','amazon@amazon.com',
'00021315129');

INSERT INTO endereco
VALUES ('03','rua caxias','17','carrao','Sao Paulo',
'Sao Paulo','0822558');

INSERT INTO luminosidade 
VALUES ('500lux','300lux','200lux');

