
Table resident {
  id_resident integer [primary key, increment]
  cpf  char(11) [not null]
  name_resident varchar(255) [not null]
  address varchar(100) [not null]
  password char(8)
  phone char(11)
}

Table resident_route {
  id_resident_route  integer [primary key, increment]
  resident_id integer [REF: > resident.id_resident]
  route_id integer [REF: > route.id_route]
}

Table route {
  id_route integer [primary key, increment]
  name_route varchar(100) [not null]
  date date [not null]
  start_time time [not null]
  end_time time [not null]
  status bool
  vehicle_id integer [REF: - vehicle.id_vehicle]
}

Table vehicle {
  id_vehicle integer [primary key, increment]
  plate char(7) [not null]
  capacity_weste decimal(10, 2) [not null]
  created_at timestamp [default: 'now']
}

Table driver_vehicle {
  id_driver_vehicle integer [primary key]
  driver_id integer [REF: > driver.id_drive]
  vehicle_id integer [REF: > vehicle.id_vehicle]
}

Table driver {
  id_drive integer [primary key, increment]
  name_driver varchar(60) [not null]
  age integer
  cpf char(11) [not null]
  cnh char(9) [not null]
  phone char(11)
  created_at timestamp [default: 'now']
}

Table collect {
  id_collect integer [primary key, increment]
  date_collect date [not null]
  hour_collect time
  location varchar(100) [not null]
  check_collect varchar(50)
  cashback decimal(10, 3)
  resident_id integer [REF: - resident.id_resident]
  route_id integer [REF: - route.id_route]
}

Table collect_residue {
  id_collect_residue integer [primary key, increment]
  collect_id integer [REF: > collect.id_collect]
  residue_id integer [REF: > residue.id_residue]
  
}

Table residue {
  id_residue integer [primary key, increment]
  type_residue varchar(100) [not null]
  category varchar(100)
  checks_discard varchar(50)
}

Table denounce {
  id_denounce integer [primary key, increment]
  name_denounce varchar(50) [not null]
  description_denounce text(400) [not null]
  status_denounce varchar(50)
  resident_id integer [REF: - resident.id_resident]
  collect_id integer [REF: - collect.id_collect]
  created_at timestamp [default: 'now']
}