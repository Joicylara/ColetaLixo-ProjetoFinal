CREATE DATABASE select_collect;
USE select_collect;


-- 1. passo(depois de já ter criado o banco de dados e executado o 'use')
CREATE TABLE resident (
	id_resident  integer auto_increment primary key,
    name_resident  varchar(255) not null,
    address varchar(100) not null,
    password char(8),
    phone char(11),
    cpf char(11) not null
    
);

-- 2.passo
CREATE TABLE driver (
	id_driver integer auto_increment  primary key,
    name_driver varchar(60) not null,
    phone char(11),
    cpf char(11) not null,
    cnh char(9) not null,
    age integer,
    created_at timestamp default (now())
);

-- 3.passo
CREATE TABLE collect (
	id_collect integer auto_increment  primary key,
    date_collect date not null,
    hour_collect time,
    location varchar(100) not null,
    check_collect varchar(50),
    resident_id integer,
	route_id integer,
    cashback decimal (10, 2),
    foreign key (resident_id) references resident (id_resident) on update cascade on delete cascade
);
 
-- 4.passo
CREATE TABLE route (
	id_route integer auto_increment  primary key,
    name_route varchar(100) not null,
    start_time time not null,
    end_time time not null,
    status bool,
    date date not null,
	vehicle_id integer,
    collect_id integer,
    foreign key (collect_id) references collect (id_collect) on update cascade on delete cascade
);

-- 5.passo
CREATE TABLE vehicle (
	id_vehicle integer auto_increment  primary key,
    plate char(7) not null ,
    capacity_waste decimal (10,2) not null,
    created_at timestamp default (now()),
    driver_id integer,
    foreign key (driver_id) references driver (id_driver) on update cascade on delete cascade,
    route_id integer,
    foreign key (route_id) references route (id_route) on update cascade on delete cascade
);

-- 6.passo
CREATE TABLE residue (
	id_residue integer auto_increment  primary key,
    type_residue varchar(100) not null,
    category varchar(100),
    checks_discard varchar(50),
    collect_id integer,
    foreign key (collect_id) references collect (id_collect) on update cascade on delete cascade
);

-- 7.passo
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


-- 8.passo
INSERT INTO resident(name_resident, address, password, phone, cpf)
VALUES("Ana Maria da Silva", "Bairro Santa Laura, rua Antonio, C 23, Q12", "abacaxi#", "65998769543", "12345678909"),
("Rosamaria da Souza", "Bairro Palmeiras, rua Ypê, C 09, Q72", "av345678", "71458769755", "98745678967"),
("Roberta", "Bairro Imperial, rua Porfirío, C 87, Q34", "#cajusim", "76543290863", "67543218907"),
("Silva Nogueira", "Bairro Santa Laura, rua Antonio, C 23, Q12", "abacaxi#", "65998769543", "12345678909"),
("Fernada Lima", "Bairro Três café, rua cenoura, C 12, Q51", "cenoura#", "67988869543", "09834567128");


-- 9.passo
INSERT INTO driver (name_driver, phone, cpf, cnh, age)
VALUES 
("Juan dos Santos", "84964516451", "51849645164", "849645164", 24),
("José Severino Lima", "81945452424", "24819454524", "819454524", 48),
("Rodrigo Santos Pereira", "11985238523", "23119852385", "119852385", 49),
("Yago Barbosa de Lima", "45984768476", "76459847684", "459847684", 34),
("Ireneu Souza dos Santos", "83945214521", "21839452145", "839452145", 44);

-- 10.passo
INSERT INTO  vehicle (plate, capacity_waste,driver_id) 
VALUES 
("RXW2670", 20.23,1),  
("YZW1773", 25.15,2),
("SXW4088", 15.20,3),
("SAW4077", 23.05,5),
("FKL2660", 10.12,4); 

-- 11.passo
 ALTER TABLE route ADD CONSTRAINT vehicle_id FOREIGN KEY(vehicle_id) REFERENCES vehicle (id_vehicle);

 -- 12.passo
INSERT INTO route  (name_route,start_time,end_time,status,date,vehicle_id)
VALUES 
("Rota 1036", '09:59:58', '19:00:00', true, '2023-05-11',1),
("Rota 1037", '05:11:56', '12:11:24', false, '2023-09-21',3),
("Rota 1038", '13:59:58', '22:00:00', true, '2023-10-13',5),
("Rota 1039", '09:00:00', '17:10:05', false, '2023-11-23',4),
("Rota 1040", '09:00:45', '19:00:23', true, '2024-01-05',2);

-- 13.passo
ALTER TABLE collect ADD CONSTRAINT route_id FOREIGN KEY(route_id) REFERENCES route (id_route);

-- 14.passo
INSERT INTO collect  (date_collect,hour_collect, location,check_collect,resident_id,route_id,cashback )
VALUES 
('2023-05-11', '10:33:59', " Rua Jardim das Goiabeiras, Parque São Lucas, São Paulo", "verificado",1,1, 0.02),
('2023-09-21', '11:35:06', " Rua Jardim das Oliveiras, São Pedro, Bahia", "não verificado",2,2, 0.00),
('2023-10-13', '07:40:41', " Rua Goias, Avenida Lucas, Minas Gerais", "verificado",3,3, 0.04),
('2023-11-23', '18:09:45', " Rua Terra Nova, Parque São Rafael, Mato Grosso", " não verificado",4,4, 0.00),
('2024-01-05', '05:33:54', " Rua Belém , Avenida Cantareira, Santa Catarina", "coleta incorreta ",5,5, 0.00),
('2022-05-11', '05:00:00', " Rua Dona Florinda, Kiko, São Paulo", "verificado",1,5, 0.07),
('2023-09-21', '11:35:06', " AV. Das Torres, Imperial, Mato grosso", "coleta incorreta",3,4, 0.00),
('2023-10-13', '07:40:41', " Av Queijo Minas, Pão de queijo Minas Gerais", "verificado",4,3, 0.08),
('2023-11-23', '18:09:45', " Rua Fernando Corrêa,Tijucal, Mato Grosso", " não verificado",2,1, 0.00),
('2024-01-05', '05:33:54', " Rua Paulo Freire , bairro educação, Santa Catarina", "verificado ",5,2, 0.1),
('2024-01-05', '05:33:54', " Rua Abacaxi , Avenida Cantareira, Santa Catarina", "coleta incorreta ",5,5, 0.00),
('2022-05-11', '05:00:00', " Rua Chaves, Vila do 71, Santa Catrina", "coleta incorreta",1,5, 0.00),
('2023-09-21', '11:35:06', "Av. Recanto dos Passáros, Amazonas", "coleta incorreta",3,4, 0.00),
('2023-10-13', '07:40:41', " Av. Belos olhos, Colirío, Acre", "coleta incorreta",4,3, 0.00),
('2023-11-23', '18:09:45', " Rua Branca de neve, Encantado", " coleta incorreta",2,1, 0.00),
('2024-01-05', '05:33:54', " Av. Belos Ares, Ares, Pernambuco", "verificado ",5,2, 0.1);


-- 15.passo
-- busca para substituir o collect_id, que está nulo, com o valor do id_collect filtrando de acordo com o id_route
UPDATE route SET  collect_id = (SELECT  id_collect FROM collect WHERE id_collect = 1) WHERE id_route = 3;
UPDATE route SET  collect_id = (SELECT  id_collect FROM collect WHERE id_collect = 2) WHERE id_route = 1;
UPDATE route SET  collect_id = (SELECT  id_collect FROM collect WHERE id_collect = 3) WHERE id_route = 4;
UPDATE route SET  collect_id = (SELECT  id_collect FROM collect WHERE id_collect = 4) WHERE id_route = 5;
UPDATE route SET  collect_id = (SELECT  id_collect FROM collect WHERE id_collect = 5) WHERE id_route = 5;
UPDATE route SET  collect_id = (SELECT  id_collect FROM collect WHERE id_collect = 6) WHERE id_route = 2;


-- 16.passo
-- busca para substituir o route_id, que está nulo, com o valor do id_route filtrando de acordo com o id_vehicle
UPDATE vehicle SET  route_id = (SELECT  id_route FROM route WHERE id_route = 1) WHERE id_vehicle = 1;
UPDATE vehicle SET  route_id = (SELECT  id_route FROM route WHERE id_route = 2) WHERE id_vehicle = 3;
UPDATE vehicle SET  route_id = (SELECT  id_route FROM route WHERE id_route = 3) WHERE id_vehicle = 5;
UPDATE vehicle SET  route_id = (SELECT  id_route FROM route WHERE id_route = 4) WHERE id_vehicle = 4;
UPDATE vehicle SET  route_id = (SELECT  id_route FROM route WHERE id_route = 5) WHERE id_vehicle = 2;

-- 17.passo
INSERT INTO residue (type_residue, category, checks_discard, collect_id)
VALUES 
("papel e papelão", "reciclável", "verificado",1),
("eletrônico", "perigoso", " não verificado",12),
("folha", "compostável", "verificado",11),
("vidro", "reciclável", " não verificado",14),
("madeira", "reciclável", "categoria inválida",12),
("pneus", "reciclável", "verificado",8),
("pilhas", "perigoso", "verificado",8),
("papel higiênico", "reciclável", "categoria inválida",11),
("latas de alumínio", "reciclável", "verificado",12),
("garrafa pet", "reciclável", "não verificado",11),
("latas de alumínio", "reciclável", "verificado",12),
("garrafa pet", "reciclável", "não verificado",11),
("pilhas", "perigoso", "verificado",8),
("papel higiênico", "reciclável", "categoria inválida",11),
("latas de alumínio", "reciclável", "verificado",12),
("papel e papelão", "reciclável", "verificado",11),
("papel e papelão", "reciclável", "verificado",11),
("latas de alumínio", "reciclável", "verificado",12),
("garrafa pet", "reciclável", "não verificado",11),
("latas de alumínio", "reciclável", "verificado",12),
("garrafa pet", "reciclável", "não verificado",11),
("vidro", "reciclável", " não verificado",14),
("madeira", "reciclável", "categoria inválida",12),
("garrafa pet", "reciclável", "não verificado",11),
("pilhas", "perigoso", "verificado",8),
("papel higiênico", "reciclável", "categoria inválida",11),
("garrafa pet", "reciclável", "não verificado",11),
("latas de alumínio", "reciclável", "verificado",12),
("resto de comida", "compostavel", "verificado",11),
("bateria de celular", "perigoso", " não verificado",14),
("resto de comida", "compostável", "verificado",12),
("garrafa pet", "reciclável", "não verificado",11),
("tv", "perigoso", "verificado",8),
("resto de comida", "compostável", "verificado",11);


-- 18.passo
INSERT INTO denounce (name_denounce, description_denounce, status_denounce, resident_id, collect_id)
VALUES 
("Impossibilitação da Via", "Há diversos entulhos espalhados na via, impossibilitando a passagem das pessoas.","Resolvida", 1, 16),
("Pedaços de Vidro na Ciclofaxa", "Diversos cacos de vidro de garrafa de bebida estão espalhados. Alguns ciclistas tiveram os pneus de suas bicicletas furados", "Pendente", 2, 2),
("Amontoado de Plástico", "Há bastantes descartaveis aglomerados na entrada da rua", "Resolvida", 3, 13),
("Descarte Irregular na via", "Há diversos entulhos como madeira, aluminios jogados no meio da passagem dos carros", "Pendente", 4, 14),
("Descarte Irregular em Terreno Baldio", "Este terreno de frente a minha casa, muitas pessoas jogam seus lixos aqui e isso tem dado muito problema", "Pendente", 5, 15),
("Eletrodomésticos Abandonados", "Diversos eletrodomésticos, incluindo geladeiras e televisores, foram deixados na rua", "Resolvida", 1, 10),
("Garrafas de Vidro Quebradas", "Garrafas de vidro quebradas estão espalhadas na calçada", "Pendente", 3, 14),
("Resto de Comida na Rua", "Grandes quantidades de restos de comida foram jogadas na rua, atraindo ratos e insetos", "Resolvida", 2, 13),
("Plástico na rua", "Grandes quantidades de plástico na rua após a feira,", "pendente", 5, 8),
("Descarte Irregular na via", "Há diversos entulhos como madeira, aluminios jogados no meio da passagem dos carros", "Pendente", 2, 15),
("Pedaços de Vidro na Ciclofaxa", "Diversos cacos de vidro de garrafa de bebida estão espalhados. Alguns ciclistas tiveram os pneus de suas bicicletas furados", "Pendente", 1, 9),
("Garrafas de Vidro Quebradas", "Garrafas de vidro quebradas estão espalhadas na calçada", "Pendente", 4, 7);
 
-- verificação dos dados

SELECT * FROM vehicle;
SELECT * FROM residue;
SELECT * FROM resident;
SELECT * FROM route;
SELECT * FROM collect;
SELECT * FROM driver;
SELECT * FROM denounce;




-- SELECTs

-- 1- Total de cashback por moradores
SELECT 
    resident.name_resident AS 'Morador(a)',
    SUM(collect.cashback)*100 AS 'Total de Cashback(Porcentagem)'
FROM 
    resident
JOIN 
    collect ON resident.id_resident = collect.resident_id
GROUP BY 
    resident.name_resident
ORDER BY 
     resident.name_resident ASC;
     
-- 2. Quantidade coleta por categoria
SELECT 
    residue.category AS 'Categoria de Resíduo',
    COUNT(collect.id_collect) AS 'Quantidade Coletada'
FROM 
    collect
JOIN 
	residue ON collect.id_collect = residue.collect_id

GROUP BY 
    residue.category
ORDER BY 
    residue.category ASC;
    

-- 3. Quantidade de coleta por tipo de resíduo
SELECT 
    residue.type_residue AS 'Tipo de Resíduo',
    COUNT(collect.id_collect) AS 'Quantidade Coletada'
FROM 
    collect
JOIN 
    residue  ON collect.id_collect = residue.collect_id
GROUP BY 
    residue.type_residue
ORDER BY 
    residue.type_residue ASC;

-- 4. quantidade de coleta incorreta por moradores
SELECT resident.name_resident AS 'Morador',
	COUNT(collect.resident_id) AS 'Quantidade de coleta incorreta'
FROM
	collect
JOIN
	resident ON collect.resident_id = id_resident
WHERE
	collect.check_collect LIKE '%incorreta%'
GROUP BY
	resident.id_resident
ORDER BY
	resident.name_resident ASC;
 
-- 5. Qunatidade de coleta por horário do veículo
SELECT 
    vehicle.plate AS 'Placa do veículo',
    HOUR(collect.hour_collect) AS 'Hora da Coleta',
    COUNT(collect.id_collect) AS 'Quantidade de Coletas'
FROM 
    collect
JOIN 
    vehicle ON collect.route_id = vehicle.route_id
GROUP BY 
    vehicle.plate, HOUR(collect.hour_collect)
ORDER BY 
   vehicle.plate ASC;

-- 6. Quantidade de denúncia por morador
SELECT resident.name_resident AS 'Morador',
	COUNT(denounce.id_denounce) AS 'Quantidade de denúncias'
FROM
	denounce
JOIN
	resident ON resident.id_resident = denounce.resident_id
GROUP BY
	resident.name_resident
ORDER BY
	resident.name_resident ASC;
    