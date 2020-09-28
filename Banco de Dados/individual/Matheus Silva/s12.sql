create database projeto;

create table projeto (
idUsuario int primary key,
senha tinyint,
sensor varchar(40),
email varchar (60),
luminosidade tinyint,
economia tinyint
);

select * from projeto;

insert into projeto values (01, 120, 'luminosidade', 'tkx18@gmail.com', 15, 50);
						   
 insert into projeto values(02, 121, 'luminosidade', 'jkx18@gmail.com', 12, 38),
                           (03, 122, 'luminosidade', 'gkx18@gmail.com', 18, 25),
                           (04, 125, 'luminosidade', 'ckx18@gmail.com', 47, 30),
						   (05, 110, 'luminosidade', 'dkx18@gmail.com', 09, 60),
						   (06, 126, 'luminosidade', 'lkx18@gmail.com', 13, 40);
                           
     select *from projeto;
     select email from projeto;