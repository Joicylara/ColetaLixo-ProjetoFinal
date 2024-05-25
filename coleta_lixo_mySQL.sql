CREATE DATABASE collect_waste;

CREATE TABLE collect (
	id_collect integer primary key,
    date_collect date,
    hour_collect time,
    location varchar(100),
    check_collect varchar(50),
    id_resident integer,
    id_route integer,
    
    foreign key (id_resident) references resident (id),
    foreign key (id_route) references route (id)
);

CREATE TABLE resident (
	id_resident integer primary key,
    name varchar(255),
    address varchar(100),
    password char(8),
    phone char(11),
    cpf char(11),
    
    
    foreign key (collect_id) references collect_waste (id),
    foreign key (waste_id) references resident (id)
);

CREATE TABLE route (
	id_route integer primary key,
    name_route varchar(100),
    start_time time,
    end_time time,
    status bool,
    date date
);

CREATE TABLE residues (
	id_residues integer primary key,
    type_residues varchar(100),
    category varchar(100),
    checks_discard varchar(50),
    created_at timestamp
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

CREATE TABLE vehicle (
	id_vehicle integer primary key,
    vehicle_plate char(7),
    start_time time,
    end_time time,
    capacity_waste decimal,
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
    
    foreign key (collect_id) references collect_waste (id),
    foreign key (resident_id) references resident (id),
    
    created_at timestamp
);