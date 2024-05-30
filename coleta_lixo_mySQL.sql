CREATE DATABASE collect_waste;
USE collect_waste;

-- Entidades
CREATE TABLE resident (
	id_resident integer primary key,
    name_resident varchar(255),
    address varchar(100),
    password char(8),
    phone char(11),
    cpf char(11)
);

CREATE TABLE vehicle (
	id_vehicle integer primary key,
    plate char(7),
    capacity_waste decimal,
    created_at timestamp
);

CREATE TABLE route (
	id_route integer primary key,
    name_route varchar(100),
    start_time time,
    end_time time,
    status bool,
    date date,
    vehicle_id integer,
    
    foreign key (vehicle_id) references vehicle (id_vehicle)
);

CREATE TABLE collect (
	id_collect integer primary key,
    date_collect date,
    hour_collect time,
    location varchar(100),
    check_collect varchar(50),
    resident_id integer,
	route_id integer,
    cashback decimal,
    foreign key (resident_id) references resident (id_resident),
    foreign key (route_id) references route (id_route)
);

CREATE TABLE residue (
	id_residue integer primary key,
    type_residue varchar(100),
    category varchar(100),
    checks_discard varchar(50)
);

CREATE TABLE driver (
	id_driver integer primary key,
    name_driver varchar(60),
    phone char(11),
    cpf char(11),
    cnh char(9),
    age integer,
    created_at timestamp
);

CREATE TABLE denounce (
	id_denounce integer primary key,
    name_denounce varchar(50),
    date_denounce date,
    description_denounce text,
    status_denounce varchar(50),
    
    resident_id integer,
    collect_id integer,
    
    foreign key (resident_id) references resident (id_resident),
    foreign key (collect_id) references collect (id_collect),
    
    
    created_at timestamp
);


-- Tabelas intermediárias

CREATE TABLE resident_route(
	id_resident_route integer primary key,
	resident_id integer,
	route_id integer,

	foreign key (resident_id) references resident (id_resident),
	foreign key (route_id) references route (id_route)

);

CREATE TABLE collect_residue(
	id_collect_residue integer primary key,
    collect_id integer,
    residue_id integer,
    
	foreign key (collect_id) references collect (id_collect),
    foreign key (residue_id) references residue (id_residue)
);

CREATE TABLE driver_vehicle(
	id_driver_vehicle integer primary key,
    driver_id integer,
    vehicle_id integer,
    
    foreign key (driver_id) references  driver (id_driver),
    foreign key (vehicle_id) references vehicle (id_vehicle)
);
