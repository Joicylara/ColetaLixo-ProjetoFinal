CREATE DATABASE selective_collect;
USE selective_collect;
DROP DATABASE selective_collect;

-- Entidades
CREATE TABLE resident (
	id_resident  integer auto_increment primary key,
    name_resident  varchar(255) not null,
    address varchar(100) not null,
    password char(8),
    phone char(11),
    cpf char(11) not null
);

CREATE TABLE vehicle (
	id_vehicle integer auto_increment  primary key,
    plate char(7) not null ,
    capacity_waste decimal (10,2) not null,
    created_at timestamp default (now())
);

CREATE TABLE route (
	id_route integer auto_increment  primary key,
    name_route varchar(100) not null,
    start_time time not null,
    end_time time not null,
    status bool,
    date date not null,
    vehicle_id integer,
    foreign key (vehicle_id) references vehicle (id_vehicle)
);

CREATE TABLE collect (
	id_collect integer auto_increment  primary key,
    date_collect date not null,
    hour_collect time,
    location varchar(100) not null,
    check_collect varchar(50),
    resident_id integer,
	route_id integer,
    cashback decimal,
    foreign key (resident_id) references resident (id_resident),
    foreign key (route_id) references route (id_route)
);

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

select * from residue;

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
    foreign key (resident_id) references resident (id_resident),
    foreign key (collect_id) references collect (id_collect),
    created_at timestamp default (now())
);


-- Tabelas intermediárias

CREATE TABLE resident_route(
	id_resident_route integer auto_increment  primary key,
	resident_id integer,
	route_id integer,
	foreign key (resident_id) references resident (id_resident),
	foreign key (route_id) references route (id_route)

);

CREATE TABLE collect_residue(
	id_collect_residue integer auto_increment  primary key,
    collect_id integer,
    residue_id integer,
	foreign key (collect_id) references collect (id_collect),
    foreign key (residue_id) references residue (id_residue)
);

CREATE TABLE driver_vehicle(
	id_driver_vehicle integer auto_increment  primary key,
    driver_id integer,
    vehicle_id integer,
    foreign key (driver_id) references  driver (id_driver),
    foreign key (vehicle_id) references vehicle (id_vehicle)
);
