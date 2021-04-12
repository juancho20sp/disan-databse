--- X POBLAR ---
DELETE FROM Appointment; 
DELETE FROM Background; 
DELETE FROM Battalion; 
DELETE FROM Brigade; 
DELETE FROM City; 
DELETE FROM ClinicalHistory; 
DELETE FROM Disease; 
DELETE FROM Division; 
DELETE FROM Doctor; 
DELETE FROM Hospital; 
DELETE FROM Exams; 
DELETE FROM Laboratory; 
DELETE FROM ManagementPlan; 
DELETE FROM MedicationComponents; 
DELETE FROM MedicationInventory; 
DELETE FROM MedicationType; 
DELETE FROM Medicines;
DELETE FROM MilitaryUnit;
DELETE FROM Nurse; 
DELETE FROM Patient; 
DELETE FROM Person; 
DELETE FROM Procedures; 
DELETE FROM Speciality; 
DELETE FROM SuppliesInventory; 
DELETE FROM Supply; 
DELETE FROM ExamsLaboratory; 
DELETE FROM ExamsNurse; 
DELETE FROM NurseSpeciality; 
DELETE FROM DoctorSpeciality;
DELETE FROM AppointmentDoctor;
DELETE FROM AppointmentNurse; 
DELETE FROM ProcedureNurse;
DELETE FROM ProcedureDoctor;

--- POBLAR ---
--- MEDICATION TYPE ---
INSERT INTO MedicationType VALUES (NULL, 'Oral'); 
INSERT INTO MedicationType VALUES (NULL, 'Sublingual');  
INSERT INTO MedicationType VALUES (NULL, 'Tópica'); 
INSERT INTO MedicationType VALUES (NULL, 'Transdérmica'); 
INSERT INTO MedicationType VALUES (NULL, 'Oftalmológica'); 
INSERT INTO MedicationType VALUES (NULL, 'Inhalatoria'); 
INSERT INTO MedicationType VALUES (NULL, 'Rectal'); 
INSERT INTO MedicationType VALUES (NULL, 'Vaginal'); 
INSERT INTO MedicationType VALUES (NULL, 'Intravenosa'); 
INSERT INTO MedicationType VALUES (NULL, 'Intramuscular'); 
INSERT INTO MedicationType VALUES (NULL, 'Subcutánea'); 
INSERT INTO MedicationType VALUES (NULL, 'Parental');

--- QUERY ---
--- SELECT * FROM MEDICATIONTYPE ORDER BY idmedicationtype;


--- MEDICATION INVENTORY ---
INSERT INTO MedicationInventory VALUES(NULL);
INSERT INTO MedicationInventory VALUES(NULL); 
INSERT INTO MedicationInventory VALUES(NULL);  
INSERT INTO MedicationInventory VALUES(NULL); 
INSERT INTO MedicationInventory VALUES(NULL); 
INSERT INTO MedicationInventory VALUES(NULL); 
INSERT INTO MedicationInventory VALUES(NULL); 
INSERT INTO MedicationInventory VALUES(NULL); 
INSERT INTO MedicationInventory VALUES(NULL); 
INSERT INTO MedicationInventory VALUES(NULL); 

--- QUERY ---
--- SELECT * FROM MEDICATIONINVENTORY ORDER BY idMedicationInventory;


--- SUPPLIES INVENTORY ---
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 

--- QUERY ---
--- SELECT * FROM SuppliesInventory ORDER BY idSuppliesInventory;


--- CITY ---
INSERT INTO City VALUES(NULL, 'Leticia', 'Amazonas'); 
INSERT INTO City VALUES(NULL, 'Medellin', 'Antioquia'); 
INSERT INTO City VALUES(NULL, 'Arauca', 'Arauca'); 
INSERT INTO City VALUES(NULL, 'Barranquilla', 'Atlantico'); 
INSERT INTO City VALUES(NULL, 'Bogota', 'Cundinamarca'); 
INSERT INTO City VALUES(NULL, 'Cartagena', 'Bolivar'); 
INSERT INTO City VALUES(NULL, 'Tunja', 'Boyaca'); 
INSERT INTO City VALUES(NULL, 'Manizales', 'Caldas'); 
INSERT INTO City VALUES(NULL, 'Florencia', 'Caqueta'); 
INSERT INTO City VALUES(NULL, 'Yopal', 'Casanare'); 
INSERT INTO City VALUES(NULL, 'Popayan', 'Cauca'); 
INSERT INTO City VALUES(NULL, 'Valledupar', 'Cesar'); 
INSERT INTO City VALUES(NULL, 'Quibdo', 'Choco'); 
INSERT INTO City VALUES(NULL, 'Monteria', 'Cordoba'); 
INSERT INTO City VALUES(NULL, 'Inirida', 'Guainia'); 
INSERT INTO City VALUES(NULL, 'San Jose del Guaviare', 'Guaviare'); 
INSERT INTO City VALUES(NULL, 'Neiva', 'Huila'); 
INSERT INTO City VALUES(NULL, 'Rioacha', 'La Guajira'); 
INSERT INTO City VALUES(NULL, 'Santa Marta', 'Magdalena'); 
INSERT INTO City VALUES(NULL, 'Villavicencio', 'Meta'); 
INSERT INTO City VALUES(NULL, 'Pasto', 'Nariño'); 
INSERT INTO City VALUES(NULL, 'Cucuta', 'Norte de Santander'); 
INSERT INTO City VALUES(NULL, 'Mocoa', 'Putumayo'); 
INSERT INTO City VALUES(NULL, 'Armenia', 'Quindio'); 
INSERT INTO City VALUES(NULL, 'Pereira', 'Risaralda'); 
INSERT INTO City VALUES(NULL, 'San Andres', 'San Andres y Providencia'); 
INSERT INTO City VALUES(NULL, 'Bucaramanga', 'Santander'); 
INSERT INTO City VALUES(NULL, 'Sincelejo', 'Sucre'); 
INSERT INTO City VALUES(NULL, 'Ibague', 'Tolima'); 
INSERT INTO City VALUES(NULL, 'Cali', 'Valle del Cauca'); 
INSERT INTO City VALUES(NULL, 'Mitu', 'Vaupes'); 
INSERT INTO City VALUES(NULL, 'Puerto Carreño', 'Vichada');

--- QUERY ---
--- SELECT * FROM City ORDER BY idCity;

--- MILITARY UNIT ---
INSERT INTO MilitaryUnit VALUES (NULL, 'División 1', 1, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'División 2', 2, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'División 3', 3, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'División 4', 4, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'División 5', 5, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'División 6', 6, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'División 7', 7, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'División 8', 8, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'División 9', 9, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'División 10', 10, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'División 11', 16, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 1', 15, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 2', 17, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 3', 19, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 4', 21, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 5', 23, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 6', 25, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 7', 27, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 8', 29, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 9', 31, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 10', 2, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 11', 12, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Batallón 1', 6, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Batallón 2', 4, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Batallón 3', 2, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Batallón 4', 1, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Batallón 5', 16, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Batallón 6', 27, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Batallón 7', 31, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Batallón 8', 11, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Batallón 9', 19, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Batallón 10', 20, NULL);

--- QUERY ---
--- SELECT * FROM MilitaryUnit ORDER BY idMilitaryUnit;


--- DIVISION ---
INSERT INTO Division VALUES (0000000001, 'Juline Theobold', 'Fuerza Aerea');
INSERT INTO Division VALUES (0000000002, 'Ralina Jacklings', 'Ejercito');
INSERT INTO Division VALUES (0000000003, 'Ashlen Snary', 'Armada');
INSERT INTO Division VALUES (0000000004, 'Anne Bernasek', 'Ejercito');
INSERT INTO Division VALUES (0000000005, 'Cody Carlan', 'Armada');
INSERT INTO Division VALUES (0000000006, 'Mabelle Cherryman', 'Fuerza Aerea');
INSERT INTO Division VALUES (0000000007, 'Godwin Jarrad', 'Fuerza Aerea');
INSERT INTO Division VALUES (0000000008, 'Deena Hague', 'Ejercito');
INSERT INTO Division VALUES (0000000009, 'Roddy Richardes', 'Fuerza Aerea');
INSERT INTO Division VALUES (0000000010, 'Ferdy Peizer', 'Armada');
INSERT INTO Division VALUES (0000000011, 'Franz Ferdinand', 'Ejercito');

--- QUERY ---
--- SELECT * FROM Division ORDER BY idDivision;


--- BRIGADE ---
INSERT INTO Brigade VALUES (0000000012, 'Averyl Stinson', 'Armada', 1);
INSERT INTO Brigade VALUES (0000000013, 'Haven Amberg', 'Fuerza Aerea', 2);
INSERT INTO Brigade VALUES (0000000014, 'Althea Laetham', 'Ejercito', 3);
INSERT INTO Brigade VALUES (0000000015, 'Cyrus Langhor', 'Ejercito', 4);
INSERT INTO Brigade VALUES (0000000016, 'Edan Volett', 'Ejercito', 5);
INSERT INTO Brigade VALUES (0000000017, 'Marthena Nortcliffe', 'Fuerza Aerea', 6);
INSERT INTO Brigade VALUES (0000000018, 'Brynna Nipper', 'Armada', 7);
INSERT INTO Brigade VALUES (0000000019, 'Marchelle Clunie', 'Fuerza Aerea', 8);
INSERT INTO Brigade VALUES (0000000020, 'Kaela Mechem', 'Armada', 9);
INSERT INTO Brigade VALUES (0000000021, 'Sabine Lampitt', 'Fuerza Aerea', 10);
INSERT INTO Brigade VALUES (0000000022, 'Joaquín Correa', 'Ejercito', 11);

--- QUERY ---
--- SELECT * FROM Brigade ORDER BY idBrigade;


--- BATTALION ---
INSERT INTO Battalion VALUES (0000000023, 'Noe Mellows', 'Armada', 12);
INSERT INTO Battalion VALUES (0000000024, 'Kathie Olwen', 'Armada', 13);
INSERT INTO Battalion VALUES (0000000025, 'Emlynn Wisher', 'Ejercito', 14);
INSERT INTO Battalion VALUES (0000000026, 'Dulcea Blewmen', 'Ejercito', 15);
INSERT INTO Battalion VALUES (0000000027, 'Wayne McKellar', 'Armada', 16);
INSERT INTO Battalion VALUES (0000000028, 'Reeba Abotson', 'Fuerza Aerea', 17);
INSERT INTO Battalion VALUES (0000000029, 'Maxim Pond', 'Ejercito', 18);
INSERT INTO Battalion VALUES (0000000030, 'Orrin Lonie', 'Ejercito', 19);
INSERT INTO Battalion VALUES (0000000031, 'Michael Matiewe', 'Armada', 20);
INSERT INTO Battalion VALUES (0000000032, 'Suzi Clue', 'Fuerza Aerea', 21);

--- QUERY ---
--- SELECT * FROM Battalion ORDER BY idBattalion;



--- HOSPITAL ---
INSERT INTO Hospital VALUES (NULL, 'Hospital 1', 150, 48, 23, 1, 1, 1);
INSERT INTO Hospital VALUES (NULL, 'Hospital 2', 200, 64, 24, 2, 2, 2);
INSERT INTO Hospital VALUES (NULL, 'Hospital 3', 25, 2, 25, 3, 3, 3);
INSERT INTO Hospital VALUES (NULL, 'Hospital 4', 140, 20, 26, 4, 4, 4);
INSERT INTO Hospital VALUES (NULL, 'Hospital 5', 100, 10, 27, 5, 5, 5);
INSERT INTO Hospital VALUES (NULL, 'Hospital 6', 250, 200, 28, 6, 6, 6);
INSERT INTO Hospital VALUES (NULL, 'Hospital 7', 135, 15, 29, 7, 7, 7);
INSERT INTO Hospital VALUES (NULL, 'Hospital 8', 100, 20, 30, 8, 8, 8);
INSERT INTO Hospital VALUES (NULL, 'Hospital 9', 500, 85, 31, 9, 9, 9);
INSERT INTO Hospital VALUES (NULL, 'Hospital 10', 9, 1, 32, 10, 10, 10);
--- QUERY ---
--- SELECT * FROM Hospital ORDER BY idHospital;

INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', NULL);
INSERT INTO Person VALUES ('CC', 9254619331, 'Barbaraanne', 'Ceyssen', 'F', TO_DATE('09/06/2002', 'MM/DD/YYYY'), 'A', 'bceyssen1@photobucket.com', , NULL);
INSERT INTO Person VALUES ('CE', 1786662041, 'Alard', 'Blackburne', 'M', TO_DATE('05/21/2018', 'MM/DD/YYYY'), 'I', 'ablackburne2@usa.gov', NULL);
INSERT INTO Person VALUES ('CC', 2984806463, 'Sacha', 'Bilbrook', 'F', TO_DATE('01/20/1969', 'MM/DD/YYYY'), 'I', 'sbilbrook3@skyrock.com', NULL);
INSERT INTO Person VALUES ('TI', 1773190621, 'Sallie', 'Hearnshaw', 'F',TO_DATE( '11/22/1957', 'MM/DD/YYYY'), 'I', 'shearnshaw4@bandcamp.com', NULL);
INSERT INTO Person VALUES ('CC', 2878196529, 'Dotti', 'Tadman', 'F',TO_DATE ('01/17/1974', 'MM/DD/YYYY'), 'I', 'dtadman5@moonfruit.com', NULL);
INSERT INTO Person VALUES ('TI', 9115387117, 'Wilden', 'McLuckie', 'F', TO_DATE('09/20/1992', 'MM/DD/YYYY'), 'A', 'wmcluckie6@dion.ne.jp', NULL);
INSERT INTO Person VALUES ('CC', 7049570787, 'Antonino', 'Bletsoe', 'M',TO_DATE( '4/7/1957', 'MM/DD/YYYY'), 'A', 'abletsoe7@ed.gov', NULL);
INSERT INTO Person VALUES ('TI', 793398263, 'Arri', 'Woolerton', 'M',TO_DATE ('3/1/1992', 'MM/DD/YYYY'), 'A', 'awoolerton8@theatlantic.com', NULL);
INSERT INTO Person VALUES ('TI', 4252609306, 'Teodoor', 'Ferschke', 'F',TO_DATE ('4/13/2010', 'MM/DD/YYYY'), 'I', 'tferschke9@cdc.gov', NULL);
INSERT INTO Person VALUES ('CE', 4779118851, 'Janie', 'Paszak', 'F',TO_DATE('4/3/1955', 'MM/DD/YYYY'), 'I', 'jpaszaka@chicagotribune.com', NULL);
INSERT INTO Person VALUES ('CC', 4563832319, 'Electra', 'de Marco', 'M', TO_DATE('8/30/2017', 'MM/DD/YYYY'), 'I', 'edemarcob@etsy.com', NULL);
 
 --- QUERY ---
 SELECT * FROM Person;NULL