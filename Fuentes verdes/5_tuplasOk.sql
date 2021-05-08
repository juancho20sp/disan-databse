--- Pre ---
INSERT INTO City VALUES(0000000001, 'Leticia', 'Amazonas'); 
INSERT INTO City VALUES(0000000002, 'Medellin', 'Antioquia'); 
INSERT INTO City VALUES(0000000003, 'Arauca', 'Arauca'); 
INSERT INTO City VALUES(0000000004, 'Barranquilla', 'Atlantico'); 
INSERT INTO City VALUES(0000000005, 'Bogota', 'Cundinamarca'); 
INSERT INTO City VALUES(0000000006, 'Cartagena', 'Bolivar'); 
INSERT INTO City VALUES(0000000007, 'Tunja', 'Boyaca'); 
INSERT INTO City VALUES(0000000008, 'Manizales', 'Caldas'); 
INSERT INTO City VALUES(0000000009, 'Florencia', 'Caqueta'); 
INSERT INTO City VALUES(0000000010, 'Yopal', 'Casanare'); 
INSERT INTO City VALUES(0000000011, 'Popayan', 'Cauca'); 
INSERT INTO City VALUES(0000000012, 'Valledupar', 'Cesar'); 
INSERT INTO City VALUES(0000000013, 'Quibdo', 'Choco'); 
INSERT INTO City VALUES(0000000014, 'Monteria', 'Cordoba'); 
INSERT INTO City VALUES(0000000015, 'Inirida', 'Guainia'); 
INSERT INTO City VALUES(0000000016, 'San Jose del Guaviare', 'Guaviare'); 
INSERT INTO City VALUES(0000000017, 'Neiva', 'Huila'); 
INSERT INTO City VALUES(0000000018, 'Rioacha', 'La Guajira'); 
INSERT INTO City VALUES(0000000019, 'Santa Marta', 'Magdalena'); 
INSERT INTO City VALUES(0000000020, 'Villavicencio', 'Meta'); 
INSERT INTO City VALUES(0000000021, 'Pasto', 'Nariño'); 
INSERT INTO City VALUES(0000000022, 'Cucuta', 'Norte de Santander'); 
INSERT INTO City VALUES(0000000023, 'Mocoa', 'Putumayo'); 
INSERT INTO City VALUES(0000000024, 'Armenia', 'Quindio'); 
INSERT INTO City VALUES(0000000025, 'Pereira', 'Risaralda'); 
INSERT INTO City VALUES(0000000026, 'San Andres', 'San Andres y Providencia'); 
INSERT INTO City VALUES(0000000027, 'Bucaramanga', 'Santander'); 
INSERT INTO City VALUES(0000000028, 'Sincelejo', 'Sucre'); 
INSERT INTO City VALUES(0000000029, 'Ibague', 'Tolima'); 
INSERT INTO City VALUES(0000000030, 'Cali', 'Valle del Cauca'); 
INSERT INTO City VALUES(0000000031, 'Mitu', 'Vaupes'); 
INSERT INTO City VALUES(0000000032, 'Puerto Carreño', 'Vichada');

INSERT INTO MilitaryUnit VALUES (0000000033, 'Batallón 11', 16, NULL);
INSERT INTO MilitaryUnit VALUES (0000000034, 'Batallón 12', 27, NULL);
INSERT INTO MilitaryUnit VALUES (0000000035, 'Batallón 13', 31, NULL);
INSERT INTO MilitaryUnit VALUES (0000000036, 'Batallón 14', 11, NULL);
INSERT INTO MilitaryUnit VALUES (0000000037, 'Batallón 15', 19, NULL);
INSERT INTO MilitaryUnit VALUES (0000000038, 'Batallón 16', 20, NULL);



--- PERSON  ---
INSERT INTO Person  VALUES ('CE', 5382231566, 'Shepperd', 'Finker', 'M', TO_DATE('6/8/1957', 'MM/DD/YYYY'), 'I', 'sfinker0@reddit.com', TO_DATE('9/9/2003', 'MM/DD/YYYY'));
INSERT INTO Person  VALUES ('CC', 1645952537, 'Mikel', 'Moncey', 'M', TO_DATE('8/6/2007', 'MM/DD/YYYY'), 'A', 'mmoncey1@godaddy.com', TO_DATE('3/29/2010', 'MM/DD/YYYY'));
INSERT INTO Person  VALUES ('PS', 1471224842, 'Shelli', 'Cuolahan', 'F', TO_DATE('12/3/2000', 'MM/DD/YYYY'), 'A', 'scuolahan2@usda.gov', TO_DATE('10/11/2002', 'MM/DD/YYYY'));
INSERT INTO Person  VALUES ('CE', 6852158859, 'Myles', 'Godlonton', 'M', TO_DATE('2/23/1957', 'MM/DD/YYYY'), 'A', 'mgodlonton3@sciencedirect.com', TO_DATE('9/27/2009', 'MM/DD/YYYY'));
INSERT INTO Person  VALUES ('PS', 7110420164, 'Frederique', 'Allen', 'F', TO_DATE('11/19/2009', 'MM/DD/YYYY'), 'A', 'fallen4@flickr.com', TO_DATE('2/12/2010', 'MM/DD/YYYY'));
INSERT INTO Person  VALUES ('CE', 9252826704, 'Allison', 'Karlmann', 'F', TO_DATE('12/11/1976', 'MM/DD/YYYY'), 'I', 'akarlmann5@seattletimes.com', TO_DATE('4/18/2006', 'MM/DD/YYYY'));
INSERT INTO Person  VALUES ('PS', 5679012654, 'Josey', 'Monni', 'F', TO_DATE('11/2/1964', 'MM/DD/YYYY'), 'A', 'jmonni6@yandex.ru', TO_DATE('8/1/2012', 'MM/DD/YYYY'));
INSERT INTO Person  VALUES ('CE', 8540587572, 'Viviene', 'Tulk', 'F', TO_DATE('10/15/1952', 'MM/DD/YYYY'), 'I', 'vtulk7@ameblo.jp', TO_DATE('4/25/2003', 'MM/DD/YYYY'));

--- DOCTOR ---
INSERT INTO Doctor  VALUES ('CE', 9252826704, 'Fuerza Aerea'); 
INSERT INTO Doctor  VALUES ('PS', 5679012654, 'Ejercito'); 
INSERT INTO Doctor  VALUES ('CE', 8540587572, 'Armada'); 

--- NURSE ---
INSERT INTO Nurse  VALUES ('PS', 1471224842, 'Ejercito'); 
INSERT INTO Nurse  VALUES ('CE', 6852158859, 'Fuerza Aerea'); 
INSERT INTO Nurse  VALUES ('PS', 7110420164, 'Armada'); 


--- DIVISION ---
INSERT INTO Division VALUES (0000000037, 'Pier Arkley', 'Armada');
INSERT INTO Division VALUES (0000000038, 'Eliza Wicklin', 'Ejercito');

--- BRIGADE ---
INSERT INTO Brigade VALUES (0000000035, 'Viola Boffey', 'Armada', 37);
INSERT INTO Brigade VALUES (0000000036, 'Sadella Duffrie', 'Fuerza Aerea', 38);

--- BATALLION --- 
INSERT INTO Battalion VALUES (0000000033, 'Orrin Lonie', 'Ejercito', 35);
INSERT INTO Battalion VALUES (0000000034, 'Michael Matiewe', 'Armada', 36);

