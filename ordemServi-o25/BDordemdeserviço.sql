create database dbos2025;
use dbos2025;
create table tbusuarios (
	iduser int primary key, 
	usuario varchar(15) not null,
	fone varchar(15)
    login varchar(15) not null unique,
    senha varchar(250) not null,
    perfil varchar(20) not null
);

describe tbusuarios;

select * from tbusuarios;

insert into tbusuarios ( iduser, usuario, fone, login, senha, perfil )
values (1, "erick" ,"669993256633", "erick", "123456", "admin" );

create table tbclientes(
	idcli int primary key auto_increment,
    nomecli varchar(50) not null
    endcli varchar(100),
	fonecli varchar(15) not null,
    emailcli varchar (50) unique
);
insert into tbclientes (nomecli, endcli, fonecli, emailcli)
values ("Erick", "Rua 14", 66-9999-9999, "Erick@gmailcom");

select * from tbclientes;

create table tbos(
	os int primary key auto_increment,
	data_os timestamp default current_timestamp,
    tipo varchar(15) not null,
	situação varchar(20) not null,
	equipamento varchar(150) not null,
    defeito varchar(50),
    servico varchar(150),
    tecnico varchar(30),
    valor decimal(10,2),
    idcli int not null,
    foreign key(idcli) references tbclientes(idcli)
);