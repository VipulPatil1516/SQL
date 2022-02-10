

create database ACRPSQL

use ACRPSQL
drop table Regions
create table Regions
(
Regions_id int Identity(1,1) Primary key,
Regions_name varchar(50) not null
);

select * from Regions

Insert into Regions(Regions_name)
values('Europe'),
('Americas'),
('Asia'),
('Middle East And Africa');


  --countries table

create table countries
(
country_id Char(2) primary key,
country_name varchar(40) not null,
Region_id int, --fk
constraint fk_countries_Regions foreign key(Region_id)
references Regions(Regions_id)
on delete cascade
);

select * from countries

Insert into countries (country_id,country_name,Region_id)
values ('AR','Argentina',2),
('AU','Australia',3),
('BE','Belgium',1),
('BR','Brazil',2),
('CA','Canada',2),
('CH','Switzerland',1),
('CN','China',3),
('DE','Germany',1),
('DK','Denmark',1),
('EG','Egypt',4),
('FR','France',1),
('IL','Israel',4),
('IN','India',3),
('IT','Italy',1),
('JP','Japan',3),
('KW','Kuwait',4),
('ML','Malaysia',3),
('MX','Mexico',2),
('NG','Nigeria',4),
('NL','Netherlands',1),
('SG','Singapore',3),
('UK','United Kingdom',1),
('US','United States of America',2),
('ZM','Zambia',4),
('ZW','Zimbabwe',4);

CREATE TABLE locations
(
Location_id int IDENTITY(1,1) PRIMARY KEY,
Address VARCHAR( 255 ) NOT NULL,
Postal_code VARCHAR( 20 ) ,
City VARCHAR( 50 ),
State VARCHAR( 50 ),
country_id CHAR( 2 ), -- fk
CONSTRAINT fk_locations_countries
FOREIGN KEY( country_id ) REFERENCES countries( country_id )
ON DELETE CASCADE
);

Insert into LOCATIONS (ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID)
values ('1297 Via Cola di Rie','00989','Roma',null,'IT'),
('93091 Calle della Testa','10934','Venice',null,'IT'),
('2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP'),
('9450 Kamiya-cho','6823','Hiroshima',null,'JP'),
('2014 Jabberwocky Rd','26192','Southlake','Texas','US'),
('2011 Interiors Blvd','99236','South San Francisco','California','US'),
('2007 Zagora St','50090','South Brunswick','New Jersey','US'),
('2004 Charade Rd','98199','Seattle','Washington','US'),
('147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),
('6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA'),
('40-5-12 Laogianggen','190518','Beijing',null,'CN'),
('1298 Vileparle (E)','490231','Bombay','Maharashtra','IN'),
('12-98 Victoria Street','2901','Sydney','New South Wales','AU'),
('198 Clementi North','540198','Singapore',null,'SG'),
('8204 Arthur St',null,'London',null,'UK'),
('Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK'),
('9702 Chester Road','09629850293','Stretford','Manchester','UK'),
('Schwanthalerstr. 7031','80925','Munich','Bavaria','DE'),
('Rua Frei Caneca 1360 ','01307-002','Sao Paulo','Sao Paulo','BR'),
('20 Rue des Corps-Saints','1730','Geneva','Geneve','CH'),
('Murtenstrasse 921','3095','Bern','BE','CH'),
('Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL'),
('Mariano Escobedo 9991','11932','Mexico City','Distrito Federal,','MX');

select * from locations

CREATE TABLE warehouses
(
warehouse_id int IDENTITY(1,1) PRIMARY KEY,
warehouse_name VARCHAR( 255 ) ,
location_id int -- fk
CONSTRAINT fk_warehouses_locations
FOREIGN KEY( location_id ) REFERENCES locations( location_id )
ON DELETE CASCADE
);


Select * from WAREHOUSES



Insert into WAREHOUSES (WAREHOUSE_NAME,LOCATION_ID)
values ('Southlake, Texas',5),
('San Francisco',6),
('New Jersey',7),
('Seattle, Washington',8),
('Toronto',9),
('Sydney',13),
('Mexico City',23),
('Beijing',11),
('Bombay',12);


create table employees
(
employee_id int Identity(1,1) unique,
first_name varchar(255) not null,
last_name varchar(255) not null,
email varchar(255)  not null,
phone varchar (50) not null,
hire_date date not null,
manager_id varchar not null,
job_title varchar(255) not null
);



drop table employees

create table employees
(
employee_id int Identity(1,1) unique,
first_name varchar(255) not null,
last_name varchar(255) not null,
email varchar(255)  not null,
phone varchar (50) not null,
hire_date date not null,
manager_id int,
job_title varchar(255) not null
);

Insert into EMPLOYEES (FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE)
values('Annabelle','Dunn','annabelle.dunn@example.com','515.123.4444',CONVERT(DATETIME,'17-SEP-16' ),2,'Administration Assistant'),
('Tommy','Bailey','tommy.bailey@example.com','515.123.4567',CONVERT(DATETIME,'17-JUN-16'),null,'President'),
('Blake','Cooper','blake.cooper@example.com','515.123.4569',CONVERT(DATETIME,'13-JAN-16'),1,'Administration Vice President'),
('Jude','Rivera','jude.rivera@example.com','515.123.4568',CONVERT(DATETIME,'21-SEP-16'),1,'Administration Vice President'),
('Tyler','Ramirez','tyler.ramirez@example.com','515.124.4269',CONVERT(DATETIME,'28-SEP-16'),9,'Accountant'),
('Ryan','Gray','ryan.gray@example.com','515.124.4169',CONVERT(DATETIME,'16-AUG-16'),9,'Accountant'),
('Elliot','Brooks','elliot.brooks@example.com','515.124.4567',CONVERT(DATETIME,'07-DEC-16'),9,'Accountant'),
('Elliott','James','elliott.james@example.com','515.124.4369',CONVERT(DATETIME,'30-SEP-16'),9,'Accountant'),
('Albert','Watson','albert.watson@example.com','515.124.4469',CONVERT(DATETIME,'07-MAR-16'),9,'Accountant'),
('Mohammad','Peterson','mohammad.peterson@example.com','515.124.4569',CONVERT(DATETIME,'17-AUG-16'),2,'Finance Manager'),
('Harper','Spencer','harper.spencer@example.com','515.123.7777',CONVERT(DATETIME,'07-JUN-16'),2,'Human Resources Representative'),
('Louie','Richardson','louie.richardson@example.com','590.423.4567',CONVERT(DATETIME,'03-JAN-16'),3,'Programmer'),
('Nathan','Cox','nathan.cox@example.com','590.423.4568',CONVERT(DATETIME,'21-MAY-16' ),4,'Programmer'),
('Bobby','Torres','bobby.torres@example.com','590.423.5567',CONVERT(DATETIME,'07-FEB-16'),4,'Programmer'),
('Charles','Ward','charles.ward@example.com','590.423.4560',CONVERT(DATETIME,'05-FEB-16'),4,'Programmer'),
('Gabriel','Howard','gabriel.howard@example.com','590.423.4569',CONVERT(DATETIME,'25-JUN-16'),4,'Programmer'),
('Emma','Perkins','emma.perkins@example.com','515.123.5555',CONVERT(DATETIME,'17-FEB-16'),1,'Marketing Manager'),
('Amelie','Hudson','amelie.hudson@example.com','603.123.6666',CONVERT(DATETIME,'17-AUG-16'),102,'Marketing Representative'),
('Gracie','Gardner','gracie.gardner@example.com','515.123.8888',CONVERT(DATETIME,'07-JUN-16' ),2,'Public Relations Representative'),
('Frederick','Price','frederick.price@example.com','515.127.4563',CONVERT(DATETIME,'24-DEC-16' ),15,'Purchasing Clerk'),
('Alex','Sanders','alex.sanders@example.com','515.127.4562',CONVERT(DATETIME,'18-MAY-16' ),15,'Purchasing Clerk'),
('Ollie','Bennett','ollie.bennett@example.com','515.127.4564',CONVERT(DATETIME,'24-JUL-16' ),15,'Purchasing Clerk'),
('Louis','Wood','louis.wood@example.com','515.127.4565',CONVERT(DATETIME,'15-NOV-16' ),15,'Purchasing Clerk'),
('Dexter','Barnes','dexter.barnes@example.com','515.127.4566',CONVERT(DATETIME,'10-AUG-16' ),15,'Purchasing Clerk'),
('Rory','Kelly','rory.kelly@example.com','515.127.4561',CONVERT(DATETIME,'07-DEC-16' ),1,'Purchasing Manager'),
('Isabella','Cole','isabella.cole@example.com','011.44.1344.619268',CONVERT(DATETIME,'15-OCT-16' ),1,'Sales Manager'),
('Jessica','Woods','jessica.woods@example.com','011.44.1344.429278',CONVERT(DATETIME,'10-MAR-16' ),1,'Sales Manager'),
('Ella','Wallace','ella.wallace@example.com','011.44.1344.467268',CONVERT(DATETIME,'05-JAN-16' ),1,'Sales Manager'),
('Ava','Sullivan','ava.sullivan@example.com','011.44.1344.429268',CONVERT(DATETIME,'01-OCT-16' ),1,'Sales Manager'),
('Mia','West','mia.west@example.com','011.44.1344.429018',CONVERT(DATETIME,'29-JAN-16' ),1,'Sales Manager'),
('Evie','Harrison','evie.harrison@example.com','011.44.1344.486508',CONVERT(DATETIME,'23-NOV-16' ),46,'Sales Representative'),
('Scarlett','Gibson','scarlett.gibson@example.com','011.44.1345.429268',CONVERT(DATETIME,'30-JAN-16' ),47,'Sales Representative'),
('Ruby','Mcdonald','ruby.mcdonald@example.com','011.44.1345.929268',CONVERT(DATETIME,'04-MAR-16' ),47,'Sales Representative'),
('Chloe','Cruz','chloe.cruz@example.com','011.44.1345.829268',CONVERT(DATETIME,'01-AUG-16' ),47,'Sales Representative'),
('Isabelle','Marshall','isabelle.marshall@example.com','011.44.1345.729268',CONVERT(DATETIME,'10-MAR-16' ),47,'Sales Representative'),
('Daisy','Ortiz','daisy.ortiz@example.com','011.44.1345.629268',CONVERT(DATETIME,'15-DEC-16' ),47,'Sales Representative'),
('Freya','Gomez','freya.gomez@example.com','011.44.1345.529268',CONVERT(DATETIME,'03-NOV-16' ),47,'Sales Representative'),
('Elizabeth','Dixon','elizabeth.dixon@example.com','011.44.1644.429262',CONVERT(DATETIME,'04-JAN-16' ),50,'Sales Representative'),
('Florence','Freeman','florence.freeman@example.com','011.44.1346.229268',CONVERT(DATETIME,'19-MAR-16' ),48,'Sales Representative'),
('Alice','Wells','alice.wells@example.com','011.44.1346.329268',CONVERT(DATETIME,'24-JAN-16' ),48,'Sales Representative'),
('Charlotte','Webb','charlotte.webb@example.com','011.44.1346.529268',CONVERT(DATETIME,'23-FEB-16' ),48,'Sales Representative'),
('Sienna','Simpson','sienna.simpson@example.com','011.44.1346.629268',CONVERT(DATETIME,'24-MAR-16' ),48,'Sales Representative'),
('Matilda','Stevens','matilda.stevens@example.com','011.44.1346.729268',CONVERT(DATETIME,'21-APR-16' ),48,'Sales Representative'),
('Evelyn','Tucker','evelyn.tucker@example.com','011.44.1343.929268',CONVERT(DATETIME,'11-MAR-16' ),49,'Sales Representative'),
('Eva','Porter','eva.porter@example.com','011.44.1343.829268',CONVERT(DATETIME,'23-MAR-16' ),49,'Sales Representative'),
('Millie','Hunter','millie.hunter@example.com','011.44.1343.729268',CONVERT(DATETIME,'24-JAN-16' ),49,'Sales Representative'),
('Sofia','Hicks','sofia.hicks@example.com','011.44.1343.629268',CONVERT(DATETIME,'23-FEB-16' ),49,'Sales Representative'),
('Lucy','Crawford','lucy.crawford@example.com','011.44.1343.529268',CONVERT(DATETIME,'24-MAR-16' ),49,'Sales Representative'),
('Elsie','Henry','elsie.henry@example.com','011.44.1343.329268',CONVERT(DATETIME,'21-APR-16' ),49,'Sales Representative'),
('Imogen','Boyd','imogen.boyd@example.com','011.44.1644.429267',CONVERT(DATETIME,'11-MAY-16' ),50,'Sales Representative'),
('Layla','Mason','layla.mason@example.com','011.44.1644.429266',CONVERT(DATETIME,'19-MAR-16' ),50,'Sales Representative'),
('Rosie','Morales','rosie.morales@example.com','011.44.1644.429265',CONVERT(DATETIME,'24-MAR-16' ),50,'Sales Representative'),
('Maya','Kennedy','maya.kennedy@example.com','011.44.1644.429264',CONVERT(DATETIME,'23-APR-16' ),50,'Sales Representative'),
('Esme','Warren','esme.warren@example.com','011.44.1644.429263',CONVERT(DATETIME,'24-MAY-16' ),50,'Sales Representative'),
('Grace','Ellis','grace.ellis@example.com','011.44.1344.987668',CONVERT(DATETIME,'09-DEC-16' ),46,'Sales Representative'),
('Lily','Fisher','lily.fisher@example.com','011.44.1344.498718',CONVERT(DATETIME,'30-MAR-16' ),46,'Sales Representative'),
('Sophia','Reynolds','sophia.reynolds@example.com','011.44.1344.478968',CONVERT(DATETIME,'20-AUG-16' ),46,'Sales Representative'),
('Sophie','Owens','sophie.owens@example.com','011.44.1344.345268',CONVERT(DATETIME,'24-MAR-16' ),46,'Sales Representative'),
('Poppy','Jordan','poppy.jordan@example.com','011.44.1344.129268',CONVERT(DATETIME,'30-JAN-16' ),46,'Sales Representative'),
('Phoebe','Murray','phoebe.murray@example.com','011.44.1346.129268',CONVERT(DATETIME,'11-NOV-16' ),48,'Sales Representative'),
('Holly','Shaw','holly.shaw@example.com','650.509.1876',CONVERT(DATETIME,'27-JAN-16' ),22,'Shipping Clerk'),
('Emilia','Holmes','emilia.holmes@example.com','650.509.2876',CONVERT(DATETIME,'20-FEB-16' ),22,'Shipping Clerk'),
('Molly','Rice','molly.rice@example.com','650.509.3876',CONVERT(DATETIME,'24-JUN-16' ),22,'Shipping Clerk'),
('Ellie','Robertson','ellie.robertson@example.com','650.509.4876',CONVERT(DATETIME,'07-FEB-16' ),22,'Shipping Clerk'),
('Jasmine','Hunt','jasmine.hunt@example.com','650.505.1876',CONVERT(DATETIME,'14-JUN-16' ),23,'Shipping Clerk'),
('Eliza','Black','eliza.black@example.com','650.505.2876',CONVERT(DATETIME,'13-AUG-16' ),23,'Shipping Clerk'),
('Lilly','Daniels','lilly.daniels@example.com','650.505.3876',CONVERT(DATETIME,'11-JUL-16' ),23,'Shipping Clerk'),
('Abigail','Palmer','abigail.palmer@example.com','650.505.4876',CONVERT(DATETIME,'19-DEC-16' ),23,'Shipping Clerk'),
('Georgia','Mills','georgia.mills@example.com','650.501.1876',CONVERT(DATETIME,'04-FEB-16' ),24,'Shipping Clerk'),
('Maisie','Nichols','maisie.nichols@example.com','650.501.2876',CONVERT(DATETIME,'03-MAR-16' ),24,'Shipping Clerk'),
('Eleanor','Grant','eleanor.grant@example.com','650.501.3876',CONVERT(DATETIME,'01-JUL-16' ),24,'Shipping Clerk'),
('Hannah','Knight','hannah.knight@example.com','650.501.4876',CONVERT(DATETIME,'17-MAR-16' ),24,'Shipping Clerk'),
('Harriet','Ferguson','harriet.ferguson@example.com','650.507.9811',CONVERT(DATETIME,'24-APR-16' ),25,'Shipping Clerk'),
('Amber','Rose','amber.rose@example.com','650.507.9822',CONVERT(DATETIME,'23-MAY-16' ),25,'Shipping Clerk'),
('Bella','Stone','bella.stone@example.com','650.507.9833',CONVERT(DATETIME,'21-JUN-16' ),25,'Shipping Clerk'),
('Thea','Hawkins','thea.hawkins@example.com','650.507.9844',CONVERT(DATETIME,'13-JAN-16' ),25,'Shipping Clerk'),
('Lola','Ramos','lola.ramos@example.com','650.507.9876',CONVERT(DATETIME,'24-JAN-16' ),21,'Shipping Clerk'),
('Willow','Reyes','willow.reyes@example.com','650.507.9877',CONVERT(DATETIME,'23-FEB-16' ),21,'Shipping Clerk'),
('Ivy','Burns','ivy.burns@example.com','650.507.9878',CONVERT(DATETIME,'21-JUN-16' ),21,'Shipping Clerk'),
('Erin','Gordon','erin.gordon@example.com','650.507.9879',CONVERT(DATETIME,'03-FEB-16' ),21,'Shipping Clerk'),
('Reggie','Simmons','reggie.simmons@example.com','650.124.8234',CONVERT(DATETIME,'10-APR-16' ),22,'Stock Clerk'),
('Emily','Hamilton','emily.hamilton@example.com','650.121.2874',CONVERT(DATETIME,'15-MAR-16' ),25,'Stock Clerk'),
('Olivia','Ford','olivia.ford@example.com','650.121.2994',CONVERT(DATETIME,'29-JAN-16' ),25,'Stock Clerk'),
('Amelia','Myers','amelia.myers@example.com','650.121.8009',CONVERT(DATETIME,'17-OCT-16' ),25,'Stock Clerk'),
('Connor','Hayes','connor.hayes@example.com','650.121.1834',CONVERT(DATETIME,'06-APR-16' ),24,'Stock Clerk'),
('Leon','Powell','leon.powell@example.com','650.124.1214',CONVERT(DATETIME,'16-JUL-16' ),21,'Stock Clerk'),
('Kai','Long','kai.long@example.com','650.124.1224',CONVERT(DATETIME,'28-SEP-16' ),21,'Stock Clerk'),
('Aaron','Patterson','aaron.patterson@example.com','650.124.1334',CONVERT(DATETIME,'14-JAN-16' ),21,'Stock Clerk'),
('Roman','Hughes','roman.hughes@example.com','650.124.1434',CONVERT(DATETIME,'08-MAR-16' ),21,'Stock Clerk'),
('Austin','Flores','austin.flores@example.com','650.124.5234',CONVERT(DATETIME,'20-AUG-16' ),22,'Stock Clerk'),
('Ellis','Washington','ellis.washington@example.com','650.124.6234',CONVERT(DATETIME,'30-OCT-16' ),22,'Stock Clerk'),
('Jamie','Butler','jamie.butler@example.com','650.124.7234',CONVERT(DATETIME,'16-FEB-16' ),22,'Stock Clerk'),
('Isla','Graham','isla.graham@example.com','650.121.2004',CONVERT(DATETIME,'09-JUL-16' ),25,'Stock Clerk'),
('Seth','Foster','seth.foster@example.com','650.127.1934',CONVERT(DATETIME,'14-JUN-16' ),23,'Stock Clerk'),
('Carter','Gonzales','carter.gonzales@example.com','650.127.1834',CONVERT(DATETIME,'26-AUG-16' ),23,'Stock Clerk'),
('Felix','Bryant','felix.bryant@example.com','650.127.1734',CONVERT(DATETIME,'12-DEC-16' ),23,'Stock Clerk'),
('Ibrahim','Alexander','ibrahim.alexander@example.com','650.127.1634',CONVERT(DATETIME,'06-FEB-16' ),23,'Stock Clerk'),
('Sonny','Russell','sonny.russell@example.com','650.121.1234',CONVERT(DATETIME,'14-JUL-16' ),24,'Stock Clerk'),
('Kian','Griffin','kian.griffin@example.com','650.121.2034',CONVERT(DATETIME,'26-OCT-16' ),24,'Stock Clerk'),
('Caleb','Diaz','caleb.diaz@example.com','650.121.2019',CONVERT(DATETIME,'12-FEB-16' ),24,'Stock Clerk'),
('Ronnie','Perry','ronnie.perry@example.com','650.123.5234',CONVERT(DATETIME,'16-NOV-16' ),1,'Stock Manager'),
('Callum','Jenkins','callum.jenkins@example.com','650.123.4234',CONVERT(DATETIME,'10-OCT-16' ),1,'Stock Manager'),
('Jackson','Coleman','jackson.coleman@example.com','650.123.3234',CONVERT(DATETIME,'01-MAY-16' ),1,'Stock Manager'),
('Liam','Henderson','liam.henderson@example.com','650.123.2234',CONVERT(DATETIME,'10-APR-16' ),1,'Stock Manager'),
('Jaxon','Ross','jaxon.ross@example.com','650.123.1234',CONVERT(DATETIME,'18-JUL-16' ),1,'Stock Manager');


select * from employees

-- product category
CREATE TABLE product_categories
(
category_id int IDENTITY (1,1) PRIMARY KEY,
category_name VARCHAR( 255 ) NOT NULL
)



Insert into PRODUCT_CATEGORIES (CATEGORY_NAME)
values ('CPU'),
('Video Card'),
('RAM'),
('Mother Board'),
('Storage')

select * from product_categories



drop table products
CREATE TABLE products
(
product_id int IDENTITY(1,1) PRIMARY KEY,
product_name VARCHAR( 255 ) NOT NULL,
description VARCHAR( 2000 ) ,
standard_cost money ,
list_price money ,
category_id int NOT NULL ,
CONSTRAINT fk_products_categories
FOREIGN KEY( category_id ) REFERENCES product_categories( category_id )
ON DELETE CASCADE
);
select * from products

Insert into PRODUCTS (PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID)
values(4,'AMD 100-505989','Chipset:FirePro W9100,Memory:32GBCore Clock:930MHz',2128.67,2699.99,2),
(5,'PNY VCQK6000-PB','Chipset:Quadro K6000,Memory:12GBCore Clock:902MHz',1740.31,2290.79,2),
(228,'Intel Xeon E5-2699 V3 (OEM/Tray)','Speed:2.3GHz,Cores:18,TDP:145W',2867.51,3410.46,1),
(248,'Intel Xeon E5-2697 V3','Speed:2.6GHz,Cores:14,TDP:145W',2326.27,2774.98,1),
(249,'Intel Xeon E5-2698 V3 (OEM/Tray)','Speed:2.3GHz,Cores:16,TDP:135W',2035.18,2660.72,1),
(2,'Intel Xeon E5-2697 V4','Speed:2.3GHz,Cores:18,TDP:145W',2144.4,2554.99,1),
(45,'Intel Xeon E5-2685 V3 (OEM/Tray)','Speed:2.6GHz,Cores:12,TDP:120W',2012.11,2501.69,1),
(46,'Intel Xeon E5-2695 V3 (OEM/Tray)','Speed:2.3GHz,Cores:14,TDP:120W',1925.13,2431.95,1),
(47,'Intel Xeon E5-2697 V2','Speed:2.7GHz,Cores:12,TDP:130W',2101.59,2377.09,1),
(51,'Intel Xeon E5-2695 V4','Speed:2.1GHz,Cores:18,TDP:120W',1780.35,2269.99,1),
(91,'Intel Xeon E5-2695 V2','Speed:2.4GHz,Cores:12,TDP:115W',1793.53,2259.99,1),
(92,'Intel Xeon E5-2643 V2 (OEM/Tray)','Speed:3.5GHz,Cores:6,TDP:130W',1940.18,2200,1),
(93,'Intel Xeon E5-2690 (OEM/Tray)','Speed:2.9GHz,Cores:8,TDP:135W',1888.33,2116.72,1),
(98,'Intel Xeon E5-2687W V3','Speed:3.1GHz,Cores:10,TDP:160W',1781.47,2064.99,1),
(102,'Intel Xeon E5-2687W V4','Speed:3.0GHz,Cores:12,TDP:160W',1723.83,2042.69,1),
(158,'Intel Xeon E5-2667 V3 (OEM/Tray)','Speed:3.2GHz,Cores:8,TDP:135W',1504.08,2009.46,1),
(159,'Intel Xeon E5-2690 V4','Speed:2.6GHz,Cores:14,TDP:135W',1499.26,1994.49,1),
(160,'Intel Xeon E5-2690 V3','Speed:2.6GHz,Cores:12,TDP:135W',1540.35,1908.73,1),
(162,'Intel Xeon E5-2470V2','Speed:2.4GHz,Cores:10,TDP:95W',1671.95,1904.7,1),
(163,'Intel Xeon E5-2683 V4','Speed:2.1GHz,Cores:16,TDP:120W',1706.95,1899.99,1),
(164,'Intel Xeon E5-2637 V2 (OEM/Tray)','Speed:3.5GHz,Cores:4,TDP:130W',1323.12,1850,1),
(169,'Intel Xeon E5-2683 V4 (OEM/Tray)','Speed:2.1GHz,Cores:16,TDP:120W',1369.83,1844.89,1),
(240,'Intel Core i7-4960X Extreme Edition','Speed:3.6GHz,Cores:6,TDP:130W',1496.43,1805.97,1),
(241,'Intel Xeon E5-2699 V4 (OEM/Tray)','Speed:2.2GHz,Cores:22,TDP:145W',1535.62,1756,1),
(242,'Intel Xeon E5-1680 V3 (OEM/Tray)','Speed:3.2GHz,Cores:8,TDP:140W',1519.85,1751.99,1),
(243,'Intel Xeon E5-2643 V4 (OEM/Tray)','Speed:3.4GHz,Cores:6,TDP:135W',1225.59,1708.86,1),
(19,'Intel Core i7-6950X (OEM/Tray)','Speed:3.0GHz,Cores:10,TDP:140W',1479.56,1704.37,1),
(52,'Intel Xeon E5-2670 V3','Speed:2.3GHz,Cores:12,TDP:120W',1453.94,1676.98,1),
(165,'Intel Xeon E5-2680','Speed:2.7GHz,Cores:8,TDP:130W',1479.95,1666.61,1),
(212,'Intel Xeon E5-2680 V4','Speed:2.4GHz,Cores:14,TDP:120W',1365.13,1639.99,1),
(166,'Intel Xeon E5-2680 V3 (OEM/Tray)','Speed:2.5GHz,Cores:12,TDP:120W',1166.89,1638.89,1),
(82,'Intel Core i7-6950X','Speed:3.0GHz,Cores:10,TDP:140W',1052.92,1499.89,1),
(213,'Intel Xeon E5-2643 V3 (OEM/Tray)','Speed:3.4GHz,Cores:6,TDP:135W',1266.37,1469.96,1),
(218,'Intel Xeon E5-2660 V4','Speed:2.0GHz,Cores:14,TDP:105W',1194.03,1388.89,1),
(219,'Intel Xeon E5-2660 V3','Speed:2.6GHz,Cores:10,TDP:105W',1041.99,1299.73,1),
(85,'Intel Xeon E5-2660 V3 (OEM/Tray)','Speed:2.6GHz,Cores:10,TDP:105W',902.18,1274.99,1),
(153,'Intel Xeon E5-2650 V2','Speed:2.6GHz,Cores:8,TDP:95W',961.11,1249,1),
(154,'Intel Xeon E5-2650 V3','Speed:2.3GHz,Cores:10,TDP:105W',906.63,1204.98,1),
(209,'Intel Core i7-990X Extreme Edition','Speed:3.47GHz,Cores:6,TDP:130W',1072.79,1199.99,1),
(81,'Intel Xeon E5-2650 V4','Speed:2.2GHz,Cores:12,TDP:105W',945.11,1099.99,1),
(211,'Intel Xeon E5-2650','Speed:2.0GHz,Cores:8,TDP:95W',869.03,1064.99,1),
(210,'Intel Core i9-7900X','Speed:3.3GHz,Cores:10,TDP:140W',855.82,1029.99,1),
(54,'Intel Xeon E5-1660 V3 (OEM/Tray)','Speed:3.0GHz,Cores:8,TDP:140W',914.52,1019.99,1),
(167,'Intel Xeon E5-2650L V3 (OEM/Tray)','Speed:1.8GHz,Cores:12,TDP:65W',779.17,1010.46,1),
(214,'Intel Core i7-5960X','Speed:3.0GHz,Cores:8,TDP:140W',865.59,1009.79,1),
(53,'Intel Core 2 Extreme QX6800','Speed:2.93GHz,Cores:4,TDP:100W',787.72,1003.98,1),
(59,'Intel Core i7-5960X (OEM/Tray)','Speed:3.0GHz,Cores:8,TDP:140W',879.8,977.99,1),
(176,'Intel Xeon E5-2650 V3 (OEM/Tray)','Speed:2.3GHz,Cores:10,TDP:105W',799.98,939.49,1),
(9,'Intel Xeon E5-2640 V4','Speed:2.4GHz,Cores:10,TDP:90W',738.71,899.99,1),
(119,'Intel Xeon E5-2640 V3','Speed:2.6GHz,Cores:8,TDP:90W',668.24,899.99,1),
(120,'Intel Core 2 Extreme QX9775','Speed:3.2GHz,Cores:4,TDP:150W',737.68,892,1),
(16,'Intel Core i7-6900K','Speed:3.2GHz,Cores:8,TDP:140W',792.89,889.89,1),
(111,'Intel Core i7-6900K (OEM/Tray)','Speed:3.2GHz,Cores:8,TDP:140W',620.28,827.37,1),
(136,'AMD Opteron 6378','Speed:2.4GHz,Cores:16,TDP:115W',651.92,826.99,1),
(27,'Intel Core i7-3960X Extreme Edition','Speed:3.3GHz,Cores:6,TDP:130W',573.41,800.74,1),
(73,'Intel Core i7-4770K','Speed:3.5GHz,Cores:4,TDP:84W',714.15,799,1),
(70,'Intel Xeon E5-2687W','Speed:3.1GHz,Cores:8,TDP:150W',581.16,710.99,1),
(74,'Intel Xeon E5-2680 V2','Speed:2.8GHz,Cores:10,TDP:115W',567.81,701.95,1),
(198,'Intel Core i7-980','Speed:3.33GHz,Cores:6,TDP:130W',563.7,699.99,1),
(69,'Intel Core i7-7820X','Speed:3.6GHz,Cores:8,TDP:140W',511.1,678.75,1),
(71,'Intel Core i7-3930K','Speed:3.2GHz,Cores:6,TDP:130W',509.32,660,1),
(199,'Intel Xeon E5-2630 V4','Speed:2.2GHz,Cores:10,TDP:85W',528.95,647.99,1),
(76,'Intel Xeon E5-2630 V3','Speed:2.4GHz,Cores:8,TDP:85W',499.96,629.99,1),
(75,'Intel Core i7-4930K','Speed:3.4GHz,Cores:6,TDP:130W',527.69,624.04,1),
(200,'Intel Core i7-4790K','Speed:4.0GHz,Cores:4,TDP:88W',461.92,620.95,1),
(106,'Intel Xeon E5-2640 V2','Speed:2.0GHz,Cores:8,TDP:95W',545.19,608.95,1),
(8,'Intel Xeon E5-1650 V4','Speed:3.6GHz,Cores:6,TDP:140W',535.47,601.99,1),
(124,'Intel Xeon E5-1650 V4 (OEM/Tray)','Speed:3.6GHz,Cores:6,TDP:140W',453.14,594.99,1),
(72,'Intel Xeon E5-2630 V3 (OEM/Tray)','Speed:2.4GHz,Cores:8,TDP:85W',421.9,589.99,1),
(155,'Intel Xeon E5-2630 V2','Speed:2.6GHz,Cores:6,TDP:80W',493.48,588.95,1),
(80,'Intel Xeon E5-1650 V3','Speed:3.5GHz,Cores:6,TDP:140W',399.77,564.89,1),
(132,'Intel Core i7-5930K','Speed:3.5GHz,Cores:6,TDP:140W',481.56,554.99,1),
(133,'PNY VCQP6000-PB','Chipset:Quadro P6000,Memory:24GBCore Clock:1.42GHz',4058.99,5499.99,2),
(206,'PNY VCQM6000-24GB-PB','Chipset:Quadro M6000,Memory:24GBCore Clock:988MHz',3619.14,4139,2)


select * from products

drop table products

CREATE TABLE products
(
product_id int PRIMARY KEY,
product_name VARCHAR( 255 ) NOT NULL,
description VARCHAR( 2000 ) ,
standard_cost money ,
list_price money ,
category_id int NOT NULL ,
CONSTRAINT fk_products_categories
FOREIGN KEY( category_id ) REFERENCES product_categories( category_id )
ON DELETE CASCADE
);


(207,'PNY VCQM6000-PB','Chipset:Quadro M6000,Memory:12GBCore Clock:988MHz',2505.04,3254.99,2),
(110,'ATI FirePro W9000','Chipset:FirePro W9000,Memory:6GBCore Clock:975MHz',2785.55,3192.97,2),
(123,'ATI FirePro S9150','Chipset:FirePro S9150,Memory:16GBCore Clock:900MHz',2628.06,3177.44,2),
(142,'AMD FirePro W9100','Chipset:FirePro W9100,Memory:16GBCore Clock:930MHz',2483.38,2998.89,2),
(105,'EVGA 12G-P4-3992-KR','Chipset:GeForce GTX Titan Z,Memory:12GBCore Clock:732MHz',2313.07,2799.99,2),
(11,'PNY VCQP5000-PB','Chipset:Quadro P5000,Memory:16GBCore Clock:1.61GHz',1602.21,2015.11,2),
(178,'HP C2J95AT','Chipset:Quadro K5000,Memory:4GBCore Clock:706MHz',1715.91,1999.89,2),
(267,'EVGA 12G-P4-1999-KR','Chipset:GeForce GTX Titan X,Memory:12GBCore Clock:1.15GHz',1328.03,1799.99,2),
(177,'PNY VCQM5000-PB','Chipset:Quadro M5000,Memory:8GBCore Clock:861MHz',1268.42,1759.99,2),
(245,'ATI FirePro S9050','Chipset:FirePro S9050,Memory:12GBCore Clock:900MHz',1237.04,1699,2),
(161,'AMD 100-5056062','Chipset:Vega Frontier Edition Liquid,Memory:16GBCore Clock:1.5GHz',1343.84,1499.99,2),
(186,'PNY VCQK5200-PB','Chipset:Quadro K5200,Memory:8GBCore Clock:667MHz',1129.39,1449.98,2),
(48,'AMD FirePro S7000','Chipset:FirePro S7000,Memory:4GBCore Clock:950MHz',936.42,1218.5,2),
(184,'AMD 100-506061','Chipset:Vega Frontier Edition,Memory:16GBCore Clock:1.44GHz',706.99,999.99,2),
(181,'ATI FirePro R5000','Chipset:FirePro R5000,Memory:2GBCore Clock:825MHz',760.59,999.99,2),
(182,'PNY VCQK4200-PB','Chipset:Quadro K4200,Memory:4GBCore Clock:771MHz',799.05,949.89,2),
(183,'Asus GTX780TI-3GD5','Chipset:GeForce GTX 780 Ti,Memory:3GBCore Clock:876MHz',781.91,899.99,2),
(185,'MSI GTX 1080 TI LIGHTNING Z','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.61GHz',688.35,873.98,2),
(281,'Asus ROG-POSEIDON-GTX1080TI-P11G-GAMING','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.62GHz',696.14,864.98,2),
(216,'MSI GTX 1080 TI LIGHTNING X','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.57GHz',742.94,863.98,2),
(6,'Zotac ZT-P10810A-10P','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.48GHz',702.35,849.99,2),
(108,'MSI GAMING','Chipset:GeForce GTX 780 Ti,Memory:3GBCore Clock:1.02GHz',753.18,849.99,2),
(83,'Asus STRIX-GTX1080TI-O11G-GAMING','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.57GHz',691.13,829.99,2),
(215,'PNY VCQP4000-PB','Chipset:Quadro P4000,Memory:8GBCore Clock:1.23GHz',724,829.89,2),
(12,'Gigabyte GV-N108TAORUSX W-11GD','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.63GHz',596.05,824.98,2),
(114,'Zotac ZT-70203-10P','Chipset:GeForce GTX 780,Memory:3GBCore Clock:1.01GHz',580.42,820.61,2),
(103,'EVGA 11G-P4-6598-KR','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.56GHz',663.54,809.99,2),
(86,'MSI GTX 1080 TI SEA HAWK X','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.57GHz',691.32,804.98,2),
(174,'MSI GTX 1080 TI AERO 11G OC','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.51GHz',715.72,798.26,2),
(175,'NVIDIA VCQM4000-PB','Chipset:Quadro M4000,Memory:8GBCore Clock:N/A',682.09,790,2),
(58,'Gigabyte GV-N108TAORUS X-11GD','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.61GHz',688.35,784.98,2),
(270,'Gigabyte GV-N1070WF2OC-8GD','Chipset:GeForce GTX 1070,Memory:8GBCore Clock:1.56GHz',551.62,769.99,2),
(223,'MSI GeForce GTX 1080 TI ARMOR 11G OC','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.48GHz',644.19,764.98,2),
(90,'EVGA 11G-P4-6696-KR','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.56GHz',594.46,759.99,2),
(220,'MSI GeForce GTX 1080 Ti GAMING X 11G','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.57GHz',666.59,759.99,2),
(221,'Zotac ZT-P10810C-10P','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.65GHz',535.03,759.99,2),
(269,'Zotac ZT-P10810D-10P','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.57GHz',580.1,759.99,2),
(87,'PNY VCGGTX1080T11XGPB-OC','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.53GHz',600.92,759.99,2),
(222,'Zotac ZT-P10810G-10P','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.51GHz',598.25,754.98,2),
(88,'Gigabyte GV-N98TWF3OC-6GD','Chipset:GeForce GTX 980 Ti,Memory:6GBCore Clock:1.06GHz',633.29,749.99,2),
(89,'PNY VCGGTX780T3XPB-OC','Chipset:GeForce GTX 780 Ti,Memory:3GBCore Clock:980MHz',592.12,749.99,2),
(236,'MSI GTX 980 Ti Gaming 6G','Chipset:GeForce GTX 980 Ti,Memory:6GBCore Clock:1.18GHz',539.98,745.32,2),
(237,'Gigabyte GV-N108TAORUS-11GD','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.59GHz',605.3,744.98,2),
(238,'EVGA 06G-P4-4998-KR','Chipset:GeForce GTX 980 Ti,Memory:6GBCore Clock:1.19GHz',521.03,741.78,2),
(239,'MSI GTX 1080 Ti DUKE 11G OC','Chipset:GeForce GTX 1080 Ti,Memory:11GBCore Clock:1.53GHz',555.07,739.99,2),
(244,'Crucial','Speed:DDR4-2133,Type:288-pin DIMM,CAS:15Module:4x16GBSize:64GB',1139.23,1620.99,5),
(261,'G.Skill TridentZ RGB','Speed:DDR4-3200,Type:288-pin DIMM,CAS:14Module:8x16GBSize:128GB',1330.26,1504.99,5),
(262,'Corsair Dominator Platinum','Speed:DDR4-3200,Type:288-pin DIMM,CAS:16Module:8x16GBSize:128GB',1051.97,1449.99,5),
(265,'G.Skill Trident Z','Speed:DDR4-3200,Type:288-pin DIMM,CAS:14Module:8x16GBSize:128GB',1163.49,1431.99,5),
(266,'G.Skill Trident Z RGB','Speed:DDR4-3333,Type:288-pin DIMM,CAS:16Module:8x16GBSize:128GB',1174.36,1418.99,5)