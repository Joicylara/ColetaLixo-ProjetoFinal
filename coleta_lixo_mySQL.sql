CREATE DATABASE selective_collect;
USE selective_collect;


-- Entidades
CREATE TABLE resident (
	id_resident  integer auto_increment primary key,
    name_resident  varchar(255) not null,
    address varchar(100) not null,
    password char(8),
    phone char(11),
    cpf char(11) not null
    
);
INSERT INTO resident(name_resident, address, password, phone, cpf)
VALUES("Ana Maria da Silva", "Bairro Santa Laura, rua Antonio, C 23, Q12", "abacaxi#", "65998769543", "12345678909"),
("Rosamaria da Souza", "Bairro Palmeiras, rua Ypê, C 09, Q72", "av345678", "71458769755", "98745678967"),
("Roberta", "Bairro Imperial, rua Porfirío, C 87, Q34", "#cajusim", "76543290863", "67543218907"),
("Silva Nogueira", "Bairro Santa Laura, rua Antonio, C 23, Q12", "abacaxi#", "65998769543", "12345678909"),
("Fernada Lima", "Bairro Três café, rua cenoura, C 12, Q51", "cenoura#", "67988869543", "09834567128");


CREATE TABLE vehicle (
	id_vehicle integer auto_increment  primary key,
    plate char(7) not null ,
    capacity_waste decimal (10,2) not null,
    created_at timestamp default (now())
);
INSERT INTO  vehicle  (plate, capacity_waste) 
VALUES 
("RXW2670", 20.23),  
("YZW1773", 25.15),
("SXW4088", 15.20),
("SAW4077", 23.05),
("FKL2660", 10.12); 


CREATE TABLE route (
	id_route integer auto_increment  primary key,
    name_route varchar(100) not null,
    start_time time not null,
    end_time time not null,
    status bool,
    date date not null,
    vehicle_id integer,
    foreign key (vehicle_id) references vehicle (id_vehicle) on update cascade on delete cascade
);
INSERT INTO route  (name_route,start_time,end_time,status,date,vehicle_id )
VALUES 
("Rota 1036", '09:59:58', '19:00:00', true, '2023-05-11',1),
("Rota 1037", '05:11:56', '12:11:24', false, '2023-09-21',3),
("Rota 1038", '13:59:58', '22:00:00', true, '2023-10-13',5),
("Rota 1039", '09:00:00', '17:10:05', false, '2023-11-23',4),
("Rota 1040", '09:00:45', '19:00:23', true, '2024-01-05',2);

-- definir as casas decimais do cashback
CREATE TABLE collect (
	id_collect integer auto_increment  primary key,
    date_collect date not null,
    hour_collect time,
    location varchar(100) not null,
    check_collect varchar(50),
    resident_id integer,
	route_id integer,
    cashback decimal (10, 3),
    foreign key (resident_id) references resident (id_resident) on update cascade on delete cascade,
    foreign key (route_id) references route (id_route) on update cascade on delete cascade
);
INSERT INTO collect  (date_collect,hour_collect, location,check_collect,resident_id,route_id,cashback )
VALUES 
('2023-05-11', '10:33:59', " Rua Jardim das Goiabeiras, Parque São Lucas, São Paulo", "verificado",1,1, 0.02),
('2023-09-21', '11:35:06', " Rua Jardim das Oliveiras, São Pedro, Bahia", "não verificado",2,2, 0.00),
('2023-10-13', '07:40:41', " Rua Goias, Avenida Lucas, Minas Gerais", "verificado",3,3, 0.04),
('2023-11-23', '18:09:45', " Rua Terra Nova, Parque São Rafael, Mato Grosso", " não verificado",4,4, 0.00),
('2024-01-05', '05:33:54', " Rua Belém , Avenida Cantareira, Santa Catarina", "coleta incorreta ",5,5, 0.00);

select * from collect;


CREATE TABLE residue (
	id_residue integer auto_increment  primary key,
    type_residue varchar(100) not null,
    category varchar(100),
    checks_discard varchar(50)
);

INSERT INTO residue (type_residue, category, checks_discard)
VALUES 
("papel e papelão", "reciclável", "verificado"),
("eletrônico", "perigoso", " não verificado"),
("folha", "compostável", "verificado"),
("vidro", "reciclável", " não verificado"),
("madeira", "reciclável", "categoria inválida");



CREATE TABLE driver (
	id_driver integer auto_increment  primary key,
    name_driver varchar(60) not null,
    phone char(11),
    cpf char(11) not null,
    cnh char(9) not null,
    age integer,
    created_at timestamp default (now())
);

CREATE TABLE denounce (
	id_denounce integer auto_increment  primary key,
    name_denounce varchar(50) not null,
    description_denounce text (400) not null,
    status_denounce varchar(50),
    resident_id integer,
    collect_id integer,
    foreign key (resident_id) references resident (id_resident) on update cascade on delete cascade,
    foreign key (collect_id) references collect (id_collect) on update cascade on delete cascade,
    created_at timestamp default (now())
);


-- Tabelas intermediárias

CREATE TABLE resident_route(
	id_resident_route integer auto_increment  primary key,
	resident_id integer,
	route_id integer,
	foreign key (resident_id) references resident (id_resident) on update cascade on delete cascade,
	foreign key (route_id) references route (id_route) on update cascade on delete cascade

);

CREATE TABLE collect_residue(
	id_collect_residue integer auto_increment  primary key,
    collect_id integer,
    residue_id integer,
	foreign key (collect_id) references collect (id_collect) on update cascade on delete cascade,
    foreign key (residue_id) references residue (id_residue) on update cascade on delete cascade
);

CREATE TABLE driver_vehicle(
	id_driver_vehicle integer auto_increment  primary key,
    driver_id integer,
    vehicle_id integer,
    foreign key (driver_id) references  driver (id_driver) on update cascade on delete cascade,
    foreign key (vehicle_id) references vehicle (id_vehicle) on update cascade on delete cascade
);

SELECT * FROM vehicle;
SELECT * FROM residue;
SELECT * FROM resident;
SELECT * FROM route;
SELECT * FROM collect;
