create table Pais(
 IdPais decimal not null Primary Key,
 NombreParis varchar(50));

create table Pasajero (
 IdPasajero decimal not null Primary Key,
 NombrePasajero varchar(60),
 APaternoPasajero varchar(60),
 AMaternoPasajero varchar(60),
 TipoDocumentoPasajero char(3),
 NumeroDocumentoPasajero decimal,
 FechaNacimientoPasajero date,
 EmailPasajero varchar(60),
 PasswordPasajero character(40),
 IdPais decimal not null foreign key references Pais(IdPais));

create table PasajeroTelefono (
 IdPasajero decimal not null foreign key references Pasajero (IdPasajero),
 TelefonoPasajero varchar(60),
 Primary Key (IdPasajero, TelefonoPasajero));

create table Terminal (
 IdTerminal decimal not null Primary Key,
 NombreTerminal varchar(60),
 IdPais decimal not null foreign key references Pais(IdPais));

 create table bus (
 Idbus decimal not null Primary Key,
 Tipobus varchar(60),
 Capacidadbus integer,
 Marcabus varchar(80));

create table Asiento (
 Idbus decimal not null foreign key references bus (Idbus),
 FilaAsiento integer,
 LetraAsiento char(2),
 Primary Key (Idbus,FilaAsiento,LetraAsiento));

create table Viaje (
 IdTerminalOrigenViaje decimal not null foreign key references Terminal
(IdTerminal),
 IdTerminalDestinoViaje decimal not null foreign key references Terminal
(IdTerminal),
 FechaHoraViaje datetime,
 Importe float,
 Idbus decimal foreign key references bus (Idbus),
 IdViaje decimal not null Primary Key);

create table Boleto (
 IdPasajero decimal not null foreign key references Pasajero (IdPasajero),
 Idbus decimal not null foreign key references bus (Idbus),
 FilaAsiento integer,
 LetraAsiento char(2),
 FechaCompraBoleto date,
 IdViaje decimal not null foreign key references Viaje (IdViaje),
 Foreign key (Idbus,FilaAsiento,LetraAsiento) references
 Asiento(Idbus,FilaAsiento,LetraAsiento));

create table PasajeroMercoSur (
 IdPasajero decimal not null foreign key references Pasajero (IdPasajero),
 PorcentajePasajeroMercoSur float,
 Primary Key (IdPasajero));

create table PasajeroMercoSurBeneficio (
 IdPasajero decimal not null foreign key references Pasajero (IdPasajero),
 BeneficioMercoSur varchar(80),
 Primary Key (IdPasajero,BeneficioMercoSur));

Insert into dbo.Pais values ('4', 'Afganistán')
Insert into dbo.Pais values ('8', 'Albania')
Insert into dbo.Pais values ('10', 'Antártida')
Insert into dbo.Pais values ('12', 'Argel')
Insert into dbo.Pais values ('16', 'Samoa Americana')
Insert into dbo.Pais values ('20', 'Andorra')
Insert into dbo.Pais values ('24', 'Angola')
Insert into dbo.Pais values ('28', 'Antigua y Barbuda')
Insert into dbo.Pais values ('31', 'Azerbaiyán')
Insert into dbo.Pais values ('32', 'Argentina')
Insert into dbo.Pais values ('36', 'Australia')
Insert into dbo.Pais values ('40', 'Austria')
Insert into dbo.Pais values ('44', 'Bahamas')
Insert into dbo.Pais values ('48', 'Bahréin')
Insert into dbo.Pais values ('50', 'Bangladesh')
Insert into dbo.Pais values ('51', 'Armenia')
Insert into dbo.Pais values ('52', 'Barbados')
Insert into dbo.Pais values ('56', 'Bélgica')
Insert into dbo.Pais values ('60', 'Bermudas')
Insert into dbo.Pais values ('64', 'Bhután')
Insert into dbo.Pais values ('68', 'Bolivia')
Insert into dbo.Pais values ('70', 'Bosnia y Herzegovina')
Insert into dbo.Pais values ('72', 'Botsuana')
Insert into dbo.Pais values ('74', 'Isla Bouvet')
Insert into dbo.Pais values ('76', 'Brasil')
Insert into dbo.Pais values ('84', 'Belice')
Insert into dbo.Pais values ('86', 'Territorio Británico del Océano Índico')
Insert into dbo.Pais values ('90', 'Islas Solomón')
Insert into dbo.Pais values ('92', 'Islas Vírgenes Británicas')
Insert into dbo.Pais values ('96', 'Brunéi')
Insert into dbo.Pais values ('100', 'Bulgaria')
Insert into dbo.Pais values ('104', 'Myanmar')
Insert into dbo.Pais values ('108', 'Burundi')
Insert into dbo.Pais values ('112', 'Belarús')
Insert into dbo.Pais values ('116', 'Camboya')
Insert into dbo.Pais values ('120', 'Camerún')
Insert into dbo.Pais values ('124', 'Canadá')
Insert into dbo.Pais values ('132', 'Cabo Verde')
Insert into dbo.Pais values ('136', 'Islas Caimán')
Insert into dbo.Pais values ('140', 'República Centro-Africana')
Insert into dbo.Pais values ('144', 'Sri Lanka')
Insert into dbo.Pais values ('148', 'Chad')
Insert into dbo.Pais values ('152', 'Chile')
Insert into dbo.Pais values ('156', 'China')
Insert into dbo.Pais values ('158', 'Taiwán')
Insert into dbo.Pais values ('162', 'Islas Christmas')
Insert into dbo.Pais values ('166', 'Islas Cocos')
Insert into dbo.Pais values ('170', 'Colombia')
Insert into dbo.Pais values ('174', 'Comoros')
Insert into dbo.Pais values ('175', 'Mayotte')
Insert into dbo.Pais values ('178', 'Congo')
Insert into dbo.Pais values ('184', 'Islas Cook')
Insert into dbo.Pais values ('188', 'Costa Rica')
Insert into dbo.Pais values ('191', 'Croacia')
Insert into dbo.Pais values ('192', 'Cuba')
Insert into dbo.Pais values ('196', 'Chipre')
Insert into dbo.Pais values ('203', 'República Checa')
Insert into dbo.Pais values ('204', 'Benin')
Insert into dbo.Pais values ('208', 'Dinamarca')
Insert into dbo.Pais values ('212', 'Domínica')
Insert into dbo.Pais values ('214', 'República Dominicana')
Insert into dbo.Pais values ('218', 'Ecuador')
Insert into dbo.Pais values ('222', 'El Salvador')
Insert into dbo.Pais values ('226', 'Guinea Ecuatorial')
Insert into dbo.Pais values ('231', 'Etiopía')
Insert into dbo.Pais values ('232', 'Eritrea')
Insert into dbo.Pais values ('233', 'Estonia')
Insert into dbo.Pais values ('234', 'Islas Faroe')
Insert into dbo.Pais values ('238', 'Islas Malvinas')
Insert into dbo.Pais values ('239', 'Georgia del Sur e Islas Sandwich del Sur')
Insert into dbo.Pais values ('242', 'Fiji')
Insert into dbo.Pais values ('246', 'Finlandia')
Insert into dbo.Pais values ('248', 'Islas Áland')
Insert into dbo.Pais values ('250', 'Francia')
Insert into dbo.Pais values ('254', 'Guayana Francesa')
Insert into dbo.Pais values ('258', 'Polinesia Francesa')
Insert into dbo.Pais values ('260', 'Territorios Australes Franceses')
Insert into dbo.Pais values ('262', 'Yibuti')
Insert into dbo.Pais values ('266', 'Gabón')
Insert into dbo.Pais values ('268', 'Georgia')
Insert into dbo.Pais values ('270', 'Gambia')
Insert into dbo.Pais values ('275', 'Palestina')
Insert into dbo.Pais values ('276', 'Alemania')
Insert into dbo.Pais values ('288', 'Ghana')
Insert into dbo.Pais values ('292', 'Gibraltar')
Insert into dbo.Pais values ('296', 'Kiribati')
Insert into dbo.Pais values ('300', 'Grecia')
Insert into dbo.Pais values ('304', 'Groenlandia')
Insert into dbo.Pais values ('308', 'Granada')
Insert into dbo.Pais values ('312', 'Guadalupe')
Insert into dbo.Pais values ('316', 'Guam')
Insert into dbo.Pais values ('320', 'Guatemala')
Insert into dbo.Pais values ('324', 'Guinea')
Insert into dbo.Pais values ('328', 'Guayana')
Insert into dbo.Pais values ('332', 'Haití')
Insert into dbo.Pais values ('334', 'Islas Heard y McDonald')
Insert into dbo.Pais values ('336', 'Ciudad del Vaticano')
Insert into dbo.Pais values ('340', 'Honduras')
Insert into dbo.Pais values ('344', 'Hong Kong')
Insert into dbo.Pais values ('348', 'Hungría')
Insert into dbo.Pais values ('352', 'Islandia')
Insert into dbo.Pais values ('356', 'India')
Insert into dbo.Pais values ('360', 'Indonesia')
Insert into dbo.Pais values ('364', 'Irán')
Insert into dbo.Pais values ('368', 'Irak')
Insert into dbo.Pais values ('372', 'Irlanda')
Insert into dbo.Pais values ('376', 'Israel')
Insert into dbo.Pais values ('380', 'Italia')
Insert into dbo.Pais values ('384', 'Costa de Marfil')
Insert into dbo.Pais values ('388', 'Jamaica')
Insert into dbo.Pais values ('392', 'Japón')
Insert into dbo.Pais values ('398', 'Kazajstán')
Insert into dbo.Pais values ('400', 'Jordania')
Insert into dbo.Pais values ('404', 'Kenia')
Insert into dbo.Pais values ('408', 'Corea del Norte')
Insert into dbo.Pais values ('410', 'Corea del Sur')
Insert into dbo.Pais values ('414', 'Kuwait')
Insert into dbo.Pais values ('417', 'Kirguistán')
Insert into dbo.Pais values ('418', 'Laos')
Insert into dbo.Pais values ('422', 'Líbano')
Insert into dbo.Pais values ('426', 'Lesotho')
Insert into dbo.Pais values ('428', 'Letonia')
Insert into dbo.Pais values ('430', 'Liberia')
Insert into dbo.Pais values ('434', 'Libia')
Insert into dbo.Pais values ('438', 'Liechtenstein')
Insert into dbo.Pais values ('440', 'Lituania')
Insert into dbo.Pais values ('442', 'Luxemburgo')
Insert into dbo.Pais values ('446', 'Macao')
Insert into dbo.Pais values ('450', 'Madagascar')
Insert into dbo.Pais values ('454', 'Malawi')
Insert into dbo.Pais values ('458', 'Malasia')
Insert into dbo.Pais values ('462', 'Maldivas')
Insert into dbo.Pais values ('466', 'Mali')
Insert into dbo.Pais values ('470', 'Malta')
Insert into dbo.Pais values ('474', 'Martinica')
Insert into dbo.Pais values ('478', 'Mauritania')
Insert into dbo.Pais values ('480', 'Mauricio')
Insert into dbo.Pais values ('484', 'México')
Insert into dbo.Pais values ('492', 'Mónaco')
Insert into dbo.Pais values ('496', 'Mongolia')
Insert into dbo.Pais values ('498', 'Moldova')
Insert into dbo.Pais values ('499', 'Montenegro')
Insert into dbo.Pais values ('500', 'Montserrat')
Insert into dbo.Pais values ('504', 'Marruecos')
Insert into dbo.Pais values ('508', 'Mozambique')
Insert into dbo.Pais values ('512', 'Omán')
Insert into dbo.Pais values ('516', 'Namibia')
Insert into dbo.Pais values ('520', 'Nauru')
Insert into dbo.Pais values ('524', 'Nepal')
Insert into dbo.Pais values ('528', 'Países Bajos')
Insert into dbo.Pais values ('530', 'Antillas Neerlandesas')
Insert into dbo.Pais values ('533', 'Aruba')
Insert into dbo.Pais values ('540', 'Nueva Caledonia')
Insert into dbo.Pais values ('548', 'Vanuatu')
Insert into dbo.Pais values ('554', 'Nueva Zelanda')
Insert into dbo.Pais values ('558', 'Nicaragua')
Insert into dbo.Pais values ('562', 'Níger')
Insert into dbo.Pais values ('566', 'Nigeria')
Insert into dbo.Pais values ('570', 'Niue')
Insert into dbo.Pais values ('574', 'Islas Norkfolk')
Insert into dbo.Pais values ('578', 'Noruega')
Insert into dbo.Pais values ('583', 'Micronesia')
Insert into dbo.Pais values ('584', 'Islas Marshall')
Insert into dbo.Pais values ('585', 'Islas Palaos')
Insert into dbo.Pais values ('586', 'Pakistán')
Insert into dbo.Pais values ('589', 'Uruguay')
Insert into dbo.Pais values ('591', 'Panamá')
Insert into dbo.Pais values ('598', 'Papúa Nueva Guinea')
Insert into dbo.Pais values ('600', 'Paraguay')
Insert into dbo.Pais values ('604', 'Perú')
Insert into dbo.Pais values ('608', 'Filipinas')
Insert into dbo.Pais values ('612', 'Islas Pitcairn')
Insert into dbo.Pais values ('616', 'Polonia')
Insert into dbo.Pais values ('620', 'Portugal')
Insert into dbo.Pais values ('624', 'Guinea-Bissau')
Insert into dbo.Pais values ('626', 'Timor-Leste')
Insert into dbo.Pais values ('630', 'Puerto Rico')
Insert into dbo.Pais values ('634', 'Qatar')
Insert into dbo.Pais values ('638', 'Reunión')
Insert into dbo.Pais values ('642', 'Rumanía')
Insert into dbo.Pais values ('643', 'Rusia')
Insert into dbo.Pais values ('646', 'Ruanda')
Insert into dbo.Pais values ('652', 'San Bartolomé')
Insert into dbo.Pais values ('654', 'Santa Elena')
Insert into dbo.Pais values ('659', 'San Cristóbal y Nieves')
Insert into dbo.Pais values ('660', 'Anguila')
Insert into dbo.Pais values ('662', 'Santa Lucía')
Insert into dbo.Pais values ('666', 'San Pedro y Miquelón')
Insert into dbo.Pais values ('670', 'San Vicente y las Granadinas')
Insert into dbo.Pais values ('674', 'San Marino')
Insert into dbo.Pais values ('678', 'Santo Tomé y Príncipe')
Insert into dbo.Pais values ('682', 'Arabia Saudita')
Insert into dbo.Pais values ('686', 'Senegal')
Insert into dbo.Pais values ('688', 'Serbia y Montenegro')
Insert into dbo.Pais values ('690', 'Seychelles')
Insert into dbo.Pais values ('694', 'Sierra Leona')
Insert into dbo.Pais values ('702', 'Singapur')
Insert into dbo.Pais values ('703', 'Eslovaquia')
Insert into dbo.Pais values ('704', 'Vietnam')
Insert into dbo.Pais values ('705', 'Eslovenia')
Insert into dbo.Pais values ('706', 'Somalia')
Insert into dbo.Pais values ('710', 'Sudáfrica')
Insert into dbo.Pais values ('724', 'España')
Insert into dbo.Pais values ('732', 'Sahara Occidental')
Insert into dbo.Pais values ('736', 'Sudán')
Insert into dbo.Pais values ('740', 'Surinam')
Insert into dbo.Pais values ('744', 'Islas Svalbard y Jan Mayen')
Insert into dbo.Pais values ('748', 'Suazilandia')
Insert into dbo.Pais values ('752', 'Suecia')
Insert into dbo.Pais values ('756', 'Suiza')
Insert into dbo.Pais values ('760', 'Siria')
Insert into dbo.Pais values ('762', 'Tayikistán')
Insert into dbo.Pais values ('764', 'Tailandia')
Insert into dbo.Pais values ('768', 'Togo')
Insert into dbo.Pais values ('772', 'Tokelau')
Insert into dbo.Pais values ('776', 'Tonga')
Insert into dbo.Pais values ('780', 'Trinidad y Tobago')
Insert into dbo.Pais values ('784', 'Emiratos Árabes Unidos')
Insert into dbo.Pais values ('788', 'Túnez')
Insert into dbo.Pais values ('792', 'Turquía')
Insert into dbo.Pais values ('795', 'Turkmenistán')
Insert into dbo.Pais values ('796', 'Islas Turcas y Caicos')
Insert into dbo.Pais values ('798', 'Tuvalu')
Insert into dbo.Pais values ('800', 'Uganda')
Insert into dbo.Pais values ('804', 'Ucrania')
Insert into dbo.Pais values ('807', 'Macedonia')
Insert into dbo.Pais values ('818', 'Egipto')
Insert into dbo.Pais values ('826', 'Reino Unido')
Insert into dbo.Pais values ('831', 'Guernsey')
Insert into dbo.Pais values ('832', 'Jersey')
Insert into dbo.Pais values ('833', 'Isla de Man')
Insert into dbo.Pais values ('834', 'Tanzania')
Insert into dbo.Pais values ('840', 'Estados Unidos de América')
Insert into dbo.Pais values ('850', 'Islas Vírgenes de los Estados Unidos de América')
Insert into dbo.Pais values ('854', 'Burkina Faso')
Insert into dbo.Pais values ('860', 'Uzbekistán')
Insert into dbo.Pais values ('862', 'Venezuela')
Insert into dbo.Pais values ('876', 'Wallis y Futuna')
Insert into dbo.Pais values ('882', 'Samoa')
Insert into dbo.Pais values ('887', 'Yemen') 


Insert into dbo.Pasajero values (1,'Lionel','Messi','','AAA',1111,'1992-12-12','adrimede@hotmail.com','adr123',32)
Insert into dbo.Pasajero values (2,'Neymar','Junior','','BBB',2222,'1990-12-24','brupic@hotmail.com','bru123',76)
Insert into dbo.Pasajero values (3,'Paulo','Dybala','','CCC',3333,'1960-05-10','juanan@hotmail.com','jua123',32)
Insert into dbo.Pasajero values (4,'Thiago','Silva','','DDD',4444,'1980-07-12','soyturista@gmail.com','seb123',76)
Insert into dbo.Pasajero values (5,'Gonzalo','Higuain','','EEE',5555,'1995-10-28','fedemede@hotmail.com','fed123',32)
Insert into dbo.Pasajero values (10,'Fernando','Muslera','','AAA',1111,'1992-12-12','fernandomuslera@hotmail.com','xxx',589)
Insert into dbo.Pasajero values (11,'Diego','Godin','','BBB',2222,'1990-12-24','diegogodin@hotmail.com','yyy',589)
Insert into dbo.Pasajero values (12,'Jos?	Mar?a','Gimenez','','CCC',3333,'1960-05-10','josema@hotmail.com','zzz',589)
Insert into dbo.Pasajero values (13,'Luis','Suarez','','DDD',4444,'1980-07-12','luchosuarez@gmail.com','ttt',589)
Insert into dbo.Pasajero values (14,'Edinson','Cavani','','EEE',5555,'1995-10-28','edicavani@hotmail.com','www',589)
Insert into dbo.Pasajero values (15,'Arturo','Vidal','','EEE',5555,'1995-10-28','artrito@hotmail.com','www',152)
Insert into dbo.Pasajero values (16,'Lucia ','Perez','' ,'FFF',6666,'1993-01-25','Lucia @gmail','Perez1234',752)
Insert into dbo.Pasajero values (17,'Juan','Fagundez','' ,'GGG',7777,'1994-02-26','Juan@gmail','Fagundez1234',756)
Insert into dbo.Pasajero values (18,'Maria ','Lopez','' ,'HHH',8888,'1996-03-05','Maria @gmail','Lopez1234',250)
Insert into dbo.Pasajero values (19,'Ana','Garcia','' ,'JJJ',9999,'1997-04-20','Ana@gmail','Garcia1234',356)
Insert into dbo.Pasajero values (20,'Patricia','Medina','' ,'KKK',1010,'1998-07-22','Patricia@gmail','Medina1234',380)
Insert into dbo.Pasajero values (21,'Pedro','Martinez','' ,'FFF',6666,'2000-08-15','Pedro@gmail','Martinez1234',752)
Insert into dbo.Pasajero values (22,'Laura','Diaz','' ,'GGG',7777,'2001-09-12','Laura@gmail','Diaz1234',756)
Insert into dbo.Pasajero values (23,'Jose','Arias','' ,'HHH',8888,'2002-11-28','Jose@gmail','Arias1234',250)
Insert into dbo.Pasajero values (24,'Dana','Loiz','' ,'JJJ',9999,'2003-07-29','Dana@gmail','Loiz1234',356)
Insert into dbo.Pasajero values (25,'Natalia','Rosa','' ,'KKK',1010,'1993-01-25','Natalia@gmail','Rosa1234',380)
Insert into dbo.Pasajero values (26,'Martin','Muniz','' ,'FFF',6666,'1994-02-26','Martin@gmail','Muniz1234',276)
Insert into dbo.Pasajero values (27,'Susana','Gimenez','' ,'GGG',7777,'1996-03-05','Susana@gmail','Gimenez1234',554)
Insert into dbo.Pasajero values (28,'Daniel','Nara','' ,'HHH',8888,'1997-04-20','Daniel@gmail','Nara1234',578)
Insert into dbo.Pasajero values (29,'Luciano','Gonzalez','' ,'JJJ',9999,'1998-07-22','Luciano@gmail','Gonzalez1234',756)
Insert into dbo.Pasajero values (30,'Gonzalo','Gutierrez','' ,'KKK',1010,'2000-08-15','Gonzalo@gmail','Gutierrez1234',250)
Insert into dbo.Pasajero values (31,'Paul','Benitez','' ,'FFF',6666,'2001-09-12','Paul@gmail','Benitez1234',356)
Insert into dbo.Pasajero values (32,'Fernando','Garcia','' ,'GGG',7777,'2002-12-28','Fernando@gmail','Garcia1234',380)
Insert into dbo.Pasajero values (33,'Camila','Dumas','' ,'HHH',8888,'2003-09-29','Camila@gmail','Dumas1234',276)
Insert into dbo.Pasajero values (34,'Paula','Lima','' ,'JJJ',9999,'1993-11-25','Paula@gmail','Lima1234',554)
Insert into dbo.Pasajero values (35,'Jamila','Sosa','' ,'KKK',1010,'1994-04-26','Jamila@gmail','Sosa1234',578)
Insert into dbo.Pasajero values (36,'Abel','Souza','' ,'FFF',6666,'1996-08-05','Abel@gmail','Souza1234',380)
Insert into dbo.Pasajero values (37,'Lautaro','Esposito','' ,'GGG',7777,'1997-04-26','Lautaro@gmail','Esposito1234',752)
Insert into dbo.Pasajero values (38,'Lorenzo','Gomez','' ,'HHH',8888,'1998-07-27','Lorenzo@gmail','Gomez1234',554)
Insert into dbo.Pasajero values (39,'David','Ruiz','' ,'JJJ',9999,'2000-08-10','David@gmail','Ruiz1234',554)
Insert into dbo.Pasajero values (40,'Marcos','Torres','' ,'KKK',1010,'2001-09-01','Marcos@gmail','Torres1234',578)

insert into PasajeroTelefono values(1,'095237627')
insert into PasajeroTelefono values(2,'095223234')
insert into PasajeroTelefono values(3,'092232327')
insert into PasajeroTelefono values(4,'094237627')
insert into PasajeroTelefono values(5,'092237627')            
insert into PasajeroTelefono values(11,'99583321')
insert into PasajeroTelefono values(12,'99583332')
insert into PasajeroTelefono values(13,'99583323')
insert into PasajeroTelefono values(14,'99583324')
insert into PasajeroTelefono values(15,'99583325')
insert into PasajeroTelefono values(16,'99583326')
insert into PasajeroTelefono values(17,'99583327')
insert into PasajeroTelefono values(18,'99583328')
insert into PasajeroTelefono values(19,'99583329')
insert into PasajeroTelefono values(20,'99583330')
insert into PasajeroTelefono values(21,'99583331')
insert into PasajeroTelefono values(22,'24870589')
insert into PasajeroTelefono values(23,'24870591')
insert into PasajeroTelefono values(24,'24870593')
insert into PasajeroTelefono values(25,'24870595')
insert into PasajeroTelefono values(26,'24870597')
insert into PasajeroTelefono values(27,'24870599')
insert into PasajeroTelefono values(28,'24870601')
insert into PasajeroTelefono values(29,'24870603')
insert into PasajeroTelefono values(30,'24870605')
insert into PasajeroTelefono values(31,'24870607')
insert into PasajeroTelefono values(32,'24870609')
insert into PasajeroTelefono values(33,'24870611')
insert into PasajeroTelefono values(34,'24870613')
insert into PasajeroTelefono values(35,'24870615')
insert into PasajeroTelefono values(36,'24870617')
insert into PasajeroTelefono values(37,'24870619')
insert into PasajeroTelefono values(38,'24870621')
insert into PasajeroTelefono values(39,'24870623')
insert into PasajeroTelefono values(40,'24870625')

insert into Terminal values
(1,'Montevideo',589),
(2,'San Pablo',76),
(3,'Buenos Aires',32),
(4,'Rio',76),
(5,'Asuncion',600),
(6,'Santiago de chile',152),
(7,'Moscu',643),
(8,'Leningrado',643),
(9,'PARIS',250),
(10,'LYON',250),
(11,'MARSELLA',250),
(12,'BERLIN',276),
(13,'MUNICH',276),
(14,'BOMBAY',356),
(15,'CALCUTA',356),
(16,'JAIPUR',356),
(17,'FLORENCIA',380),
(18,'MILAN',380),
(19,'NAPOLES',380),
(20,'ROMA',380),
(21,'AUKLAND',554),
(22,'WELLINGTON',554),
(23,'QUEENSTOWN',554),
(24,'ROTORUA',554),
(25,'OSLO',578),
(26,'BERGEN',578),
(27,'TROMSO',578),
(28,'ESTOCOLMO',752),
(29,'GOTEMBURGO',752),
(30,'UPSALA',752),
(31,'ZURICH',756),
(32,'LUZERNA',756),
(33,'GINEGRA',756),
(34,'ESTAMBUL',792),
(35,'CAPADOCIA',792),
(36,'ANTALYA',792),
(37,'ATENAS',300),
(38,'SANTORINI',300),
(39,'MYCONOS',300),
(40,'SIEMREAP',116);

insert into  dbo.bus values  (1,'INTERNACIONAL',40,'CUTCSA')
insert into  dbo.bus values  (2,'CAMA ',32,'CUTCSA')
insert into  dbo.bus values  (3,'SEMICAMA',40,'COME')
insert into  dbo.bus values  (4,'CAMA ',32,'COME')
insert into  dbo.bus values  (3,'SEMICAMA',40,'YUTONG')
insert into  dbo.bus values  (4,'CAMA ',30,'SCANIA')
insert into  dbo.bus values  (3,'SEMICAMA',40,'YUTONG')
insert into  dbo.bus values  (4,'CAMA ',30,'SCANIA')
insert into  dbo.bus values  (5,'SEMICAMA',45,'VOLVO')
insert into  dbo.bus values  (6,'CAMA ',35,'MERCEDES BENZ')
insert into  dbo.bus values  (7,'SEMICAMA',40,'MARCOPOLO')
insert into  dbo.bus values  (8,'CAMA ',30,'YUTONG')
insert into  dbo.bus values  (9,'SEMICAMA',45,'SCANIA')
insert into  dbo.bus values  (10,'CAMA ',35,'VOLVO')
insert into  dbo.bus values  (11,'SEMICAMA',40,'MERCEDES BENZ')
insert into  dbo.bus values  (12,'CAMA ',30,'MARCOPOLO')
insert into  dbo.bus values  (13,'SEMICAMA',45,'YUTONG')
insert into  dbo.bus values  (14,'CAMA ',35,'SCANIA')
insert into  dbo.bus values  (15,'SEMICAMA',40,'VOLVO')
insert into  dbo.bus values  (16,'CAMA ',30,'MERCEDES BENZ')
insert into  dbo.bus values  (17,'SEMICAMA',45,'MARCOPOLO')
insert into  dbo.bus values  (18,'CAMA ',35,'YUTONG')
insert into  dbo.bus values  (19,'SEMICAMA',40,'SCANIA')
insert into  dbo.bus values  (20,'CAMA ',30,'VOLVO')

Insert into Asiento values
(1,1,'A'),(1,2,'A'),(1,3,'A'),(1,4,'A'),
(1,1,'B'),(1,2,'B'),(1,3,'B'),(1,4,'B'),
(1,1,'C'),(1,2,'C'),(1,3,'C'),(1,4,'C'),
(1,1,'D'),(1,2,'D'),(1,3,'D'),(1,4,'D'),
(2,1,'A'),(2,2,'A'),(2,3,'A'),(2,4,'A'),
(2,1,'B'),(2,2,'B'),(2,3,'B'),(2,4,'B'),
(2,1,'C'),(2,2,'C'),(2,3,'C'),(2,4,'C'),
(2,1,'D'),(2,2,'D'),(2,3,'D'),(2,4,'D'),
(3,1,'A'),(3,2,'A'),(3,3,'A'),(3,4,'A'),
(3,1,'B'),(3,2,'B'),(3,3,'B'),(3,4,'B'),
(3,1,'C'),(3,2,'C'),(3,3,'C'),(3,4,'C'),
(3,1,'D'),(3,2,'D'),(3,3,'D'),(3,4,'D'),
(4,1,'A'),(4,2,'A'),(4,3,'A'),(4,4,'A'),
(4,1,'B'),(4,2,'B'),(4,3,'B'),(4,4,'B'),
(4,1,'C'),(4,2,'C'),(4,3,'C'),(4,4,'C'),
(4,1,'D'),(4,2,'D'),(4,3,'D'),(4,4,'D'),
(5,2,'A'),(5,3,'A'),(5,4,'A'),
(5,2,'C'),(5,3,'C'),(5,4,'C'),
(5,2,'D'),(5,3,'D'),(5,4,'D'),
(6,2,'A'),(6,3,'A'),(6,4,'A'),
(6,2,'B'),(6,3,'B'),(6,4,'B'),
(6,2,'C'),(6,3,'C'),(6,4,'C'),
(6,2,'D'),(6,3,'D'),(6,4,'D'),
(7,2,'A'),(7,3,'A'),(7,4,'A'),
(7,2,'B'),(7,3,'B'),(7,4,'B'),
(7,2,'C'),(7,3,'C'),(7,4,'C'),
(7,2,'D'),(7,3,'D'),(7,4,'D'),
(8,2,'A'),(8,3,'A'),(8,4,'A'),
(8,2,'B'),(8,3,'B'),(8,4,'B'),
(8,2,'C'),(8,3,'C'),(8,4,'C'),
(8,2,'D'),(8,3,'D'),(8,4,'D'),
(9,2,'A'),(9,3,'A'),(9,4,'A'),
(9,2,'B'),(9,3,'B'),(9,4,'B'),
(9,2,'C'),(9,3,'C'),(9,4,'C'),
(9,2,'D'),(9,3,'D'),(9,4,'D'),
(10,2,'A'),(10,3,'A'),(10,4,'A'),
(10,2,'B'),(10,3,'B'),(10,4,'B'),
(10,2,'C'),(10,3,'C'),(10,4,'C'),
(10,2,'D'),(10,3,'D'),(10,4,'D')

insert into Viaje values
(1,2,'2018-06-01 12:30:40',150,1,1),   -- Montevideo San Pablo
(1,2,'2017-05-12 12:30:40',150,1,2),   -- Montevideo San Pablo
(5,1,'2017-07-17 15:40:10',120,2,3),   -- Asuncion Montevideo 
(2,3,'2017-08-28 19:00:15',100,3,4),   -- San Pablo Buenos Aires
(4,8,'2017-09-04 21:45:55',150,4,5),   -- Rio Moscu 
(1,2,'2017-11-16 00:00:00',150,3,6),   -- Montevideo San Pablo modificar esta   fecha para el bus que sale ma?ana
(5,1,'2017-11-15 12:40:00',150,3,7),   -- viaje del boleto del mes 9 
(1,4,'2017-12-21 05:10:00',250,1,8),   -- viaje del boleto del mes 9
(5,2,'2017-10-02 21:20:00',120,3,9),   -- viaje del boleto del mes 9 
(1,3,'2017-11-20 00:00:00',150,3,255), -- Montevideo Buenos Aires
(5,3,'2017-12-13 00:00:00',130,4,256), -- Asuncion Buenos Aires
(1,8,'2018-06-01 12:30:40',150,1,100), -- montevideo moscu
(1,6,'2018-06-01 12:30:40',150,1,101); -- montevideo santiago

insert into Boleto values	
(1,1,1,'A','2017-01-01',1),	   		
(1,1,1,'B','2017-01-01',1),
(1,1,1,'C','2017-01-01',1),
(1,1,1,'D','2017-01-01',1),
(2,1,2,'A','2017-02-05',2),
(2,1,2,'B','2017-02-05',2),
(3,2,2,'A','2017-03-17',3),
(4,3,1,'B','2017-05-15',4),
(5,4,3,'C','2017-07-25',5),
(2,1,3,'A','2017-02-05',2),
(2,1,3,'B','2017-02-05',2),
(2,1,1,'A','2017-02-05',2),
(2,1,1,'B','2017-02-05',2),
(4,3,4,'B','2017-01-09',255),
(10,1,1,'A','2017-01-01',100),	   		
(11,1,1,'B','2017-01-01',100),
(12,1,1,'C','2017-01-01',100),
(13,1,1,'D','2017-01-01',100),
(14,1,2,'A','2017-02-05',100),
(15,1,2,'A','2017-02-05',101);

insert into boleto values
(4,3,2,'A','2021-09-15',7),--boleto del mes 9 del mail soyturista@gmail.com
(4,1,4,'C','2021-09-22',8),--boleto del mes 9 del mail soyturista@gmail.com
(4,3,3,'A','2021-09-05',9),--boleto del mes 9 del mail soyturista@gmail.com
(4,3,2,'A','2021-09-05',9);--boleto del mes 9 del mail soyturista@gmail.com

insert into PasajeroMercoSur values	(1,5),(2,5),(5,10);

insert into PasajeroMercoSurBeneficio values
(1,'Beneficio por ser pasajero mercosur'),
(2,'Beneficio por ser pasajero mercosur'),
(5,'Beneficio por ser pasajero mercosur');


--1 Listar el o los nombres de los pasajeros con la mayor cantidad de pasajes comprados a su nombre.
select p.NombrePasajero from pasajero p
where p.IdPasajero in (select b.idpasajero from boleto b group by b.IdPasajero 
having count(*) = (select max(bc.boletos_comprados) from (select count(*) boletos_comprados
from boleto group by IdPasajero) bc))


--2	Listar todos los datos de los buses con más de 35 asientos que no tengan asignado ningún destino que parta el día de mañana.
update dbo.Viaje set FechaHoraViaje = GETDATE() + 1
where IdViaje=6 and Idbus=3; 

select * from bus b
where idBus <> (select Idbus from viaje v
where cast(FechaHoraViaje as date) = cast(getdate() + 1 as date)) 
and Capacidadbus > 35

--3 Listar todos los datos de los pasajeros para los cuales haya registrados en el sistema más de 5 pasajes comprados.
select p.* from Pasajero p join (select count(*) boletos_comprados, IdPasajero from Boleto
group by IdPasajero) b
on p.IdPasajero = b.IdPasajero where b.boletos_comprados > 5

--4 Listar idpasajero, nombre, apellidos y asiento (idasiento y fila) que correspondan a pasajes comprados para el destino cuyo idviaje es 255
select p.IdPasajero, p.NombrePasajero, p.APaternoPasajero, p.AMaternoPasajero,
concat (b.FilaAsiento, b.LetraAsiento) as asiento from viaje v join boleto b
on v.IdViaje = b.IdViaje
join pasajero p
on b.idPasajero = p.IdPasajero
where v.IdViaje=255

--5 Listar todos los iddestino y cantidad de pasajes comprados durante el mes de Setiembre de este año para c/u de los destinos del pasajero cuyo correo es soyturista@gmail.com.
select b.IdViaje, v.IdTerminalDestinoViaje, b.boletos_comprados
from Pasajero p join (select count(IdPasajero) boletos_comprados, IdPasajero, IdViaje from Boleto
where month(FechaCompraBoleto)='9' group by IdPasajero,IdViaje) b
on p.IdPasajero = b.IdPasajero join viaje v
on b.IdViaje = v.IdViaje
where p.EmailPasajero= 'soyturista@gmail.com'


select p.NombrePasajero, p.FechaNacimientoPasajero, p.APaternoPasajero from Pasajero p join Pais pa 
on p.IdPais = pa.IdPais join Boleto b on p.IdPasajero = b.IdPasajero
where pa.NombreParis='Chile' and b.FechaCompraBoleto='2017-02-05'
group by p.NombrePasajero, p.FechaNacimientoPasajero, p.APaternoPasajero;


select count(*) boletos_comprados
from boleto group by IdPasajero;


select * from Boleto