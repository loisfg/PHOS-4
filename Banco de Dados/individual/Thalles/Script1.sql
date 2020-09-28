use projeto_pi;
create table usuario (
			id int primary key,
            usuario varchar (20),
            senha varchar(20),
            nome varchar(80),
            rua varchar(100),
            numero varchar(10),
            cep varchar(8),
            telefone varchar(11),
            email varchar (60));

create table dados_luminosidade (
				id_empresa int primary key,
                area int,
                luminosidade_ideal varchar(10),
                luminosidade_atual varchar(10),
                variacao_luminosidade varchar(10));
            