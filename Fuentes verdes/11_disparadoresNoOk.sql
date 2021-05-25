--- X POBLAR ---
DELETE FROM NurseSpeciality; 
DELETE FROM DoctorSpeciality;
DELETE FROM AppointmentDoctor;
DELETE FROM AppointmentNurse; 
DELETE FROM ProcedureNurse;
DELETE FROM ProcedureDoctor; 
DELETE FROM ExamsLaboratory;
DELETE FROM ExamsNurse; 
DELETE FROM MedicationComponents; 
DELETE FROM Medicines;
DELETE FROM MedicationType;
DELETE FROM Disease;  
DELETE FROM Supply; 
DELETE FROM Appointment;
DELETE FROM Exams; 
DELETE FROM Procedures;
DELETE FROM ManagementPlan;  
DELETE FROM Laboratory;  
DELETE FROM Hospital; 
DELETE FROM MedicationInventory; 
DELETE FROM SuppliesInventory;  
DELETE FROM Battalion; 
DELETE FROM Brigade; 
DELETE FROM Division;
DELETE FROM MilitaryUnit; 
DELETE FROM City; 
DELETE FROM Speciality; 
DELETE FROM Background; 
DELETE FROM ClinicalHistory; 
DELETE FROM Patient;
DELETE FROM Doctor; 
DELETE FROM Nurse; 
DELETE FROM Person; 

-- QUERY ---
--- SELECT * FROM SuppliesInventory ORDER BY idSuppliesInventory;


--- CITY ---
INSERT INTO City VALUES(NULL, 'Leticia', 'Amazonas', NULL); 
INSERT INTO City VALUES(NULL, 'Medellin', 'Antioquia', NULL); 
INSERT INTO City VALUES(NULL, 'Arauca', 'Arauca', NULL); 
INSERT INTO City VALUES(NULL, 'Barranquilla', 'Atlantico', NULL); 
INSERT INTO City VALUES(NULL, 'Bogota', 'Cundinamarca', NULL); 
INSERT INTO City VALUES(NULL, 'Cartagena', 'Bolivar', NULL); 
INSERT INTO City VALUES(NULL, 'Tunja', 'Boyaca', NULL); 
INSERT INTO City VALUES(NULL, 'Manizales', 'Caldas', NULL); 
INSERT INTO City VALUES(NULL, 'Florencia', 'Caqueta', NULL); 
INSERT INTO City VALUES(NULL, 'Yopal', 'Casanare', NULL); 
INSERT INTO City VALUES(NULL, 'Popayan', 'Cauca', NULL); 
INSERT INTO City VALUES(NULL, 'Valledupar', 'Cesar', NULL); 
INSERT INTO City VALUES(NULL, 'Quibdo', 'Choco', NULL); 
INSERT INTO City VALUES(NULL, 'Monteria', 'Cordoba', NULL); 
INSERT INTO City VALUES(NULL, 'Inirida', 'Guainia', NULL); 
INSERT INTO City VALUES(NULL, 'San Jose del Guaviare', 'Guaviare', NULL); 
INSERT INTO City VALUES(NULL, 'Neiva', 'Huila', NULL); 
INSERT INTO City VALUES(NULL, 'Rioacha', 'La Guajira', NULL); 
INSERT INTO City VALUES(NULL, 'Santa Marta', 'Magdalena', NULL); 
INSERT INTO City VALUES(NULL, 'Villavicencio', 'Meta', NULL); 
INSERT INTO City VALUES(NULL, 'Pasto', 'Nariño', NULL); 
INSERT INTO City VALUES(NULL, 'Cucuta', 'Norte de Santander', NULL); 
INSERT INTO City VALUES(NULL, 'Mocoa', 'Putumayo', NULL); 
INSERT INTO City VALUES(NULL, 'Armenia', 'Quindio', NULL); 
INSERT INTO City VALUES(NULL, 'Pereira', 'Risaralda', NULL); 
INSERT INTO City VALUES(NULL, 'San Andres', 'San Andres y Providencia', NULL); 
INSERT INTO City VALUES(NULL, 'Bucaramanga', 'Santander', NULL); 
INSERT INTO City VALUES(NULL, 'Sincelejo', 'Sucre', NULL); 
INSERT INTO City VALUES(NULL, 'Ibague', 'Tolima', NULL); 
INSERT INTO City VALUES(NULL, 'Cali', 'Valle del Cauca', NULL); 
INSERT INTO City VALUES(NULL, 'Mitu', 'Vaupes', NULL); 
INSERT INTO City VALUES(NULL, 'Puerto Carreño', 'Vichada', NULL);

--- QUERY ---
--- SELECT * FROM City ORDER BY idCity;

--- MILITARY UNIT ---
INSERT INTO MilitaryUnit VALUES (NULL, 'División 1', 1, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'División 1', 2, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'División 3', 35, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 1', 65, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 2', 59, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Brigada 3', 61, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Batallón 1', 70, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'Batallón 2', 15, NULL);


--- QUERY ---
--- SELECT * FROM MilitaryUnit ORDER BY idMilitaryUnit;


--- DIVISION ---
INSERT INTO Division VALUES (0000000001, 'Juline Theobold', 'Fuerza Aereea');
INSERT INTO Division VALUES (0000000002, 'Ralina Jacklings', 'Ejerrcito');
INSERT INTO Division VALUES (0000000003, 'Ashlen Snary', 'Armmada');
INSERT INTO Division VALUES (0000000004, 'Anne Bernasek', 'Ejeercito');
INSERT INTO Division VALUES (0000000005, 'Cody Carlan', 'Armmada');
INSERT INTO Division VALUES (0000000006, 'Mabelle Cherryman', 'Fuerzza Aerea');
INSERT INTO Division VALUES (0000000007, 'Godwin Jarrad', 'Fuerza Aerrea');
INSERT INTO Division VALUES (0000000008, 'Deena Hague', 'Ejeercito');
INSERT INTO Division VALUES (0000000009, 'Roddy Richardes', 'Fuuerza Aerea');
INSERT INTO Division VALUES (0000000010, 'Ferdy Peizer', 'Armmada');
INSERT INTO Division VALUES (0000000011, 'Franz Ferdinand', 'Ejeercito');

--- QUERY ---
--- SELECT * FROM Division ORDER BY idDivision;


--- BRIGADE ---
INSERT INTO Brigade VALUES (0000000012, 'Averyl Stinson', 'Armmada', 1);
INSERT INTO Brigade VALUES (0000000013, 'Haven Amberg', 'Fuerzza Aerea', 2);
INSERT INTO Brigade VALUES (0000000014, 'Althea Laetham', 'Ejeercito', 3);
INSERT INTO Brigade VALUES (0000000015, 'Cyrus Langhor', 'Ejeercito', 4);
INSERT INTO Brigade VALUES (0000000016, 'Edan Volett', 'Ejeercito', 5);
INSERT INTO Brigade VALUES (0000000017, 'Marthena Nortcliffe', 'Fuerzza Aerea', 6);
INSERT INTO Brigade VALUES (0000000018, 'Brynna Nipper', 'Armmada', 7);
INSERT INTO Brigade VALUES (0000000019, 'Marchelle Clunie', 'Fuerzza Aerea', 8);
INSERT INTO Brigade VALUES (0000000020, 'Kaela Mechem', 'Armmada', 9);
INSERT INTO Brigade VALUES (0000000021, 'Sabine Lampitt', 'Fuerzza Aerea', 10);
INSERT INTO Brigade VALUES (0000000022, 'Joaquín Correa', 'Ejeercito', 11);

--- QUERY ---
--- SELECT * FROM Brigade ORDER BY idBrigade;


--- BATTALION ---
INSERT INTO Battalion VALUES (0000000023, 'Noe Mellows', 'Armmada', 12);
INSERT INTO Battalion VALUES (0000000024, 'Kathie Olwen', 'Armmada', 13);
INSERT INTO Battalion VALUES (0000000025, 'Emlynn Wisher', 'Ejeercito', 14);
INSERT INTO Battalion VALUES (0000000026, 'Dulcea Blewmen', 'Ejeercito', 15);
INSERT INTO Battalion VALUES (0000000027, 'Wayne McKellar', 'Armmada', 16);
INSERT INTO Battalion VALUES (0000000028, 'Reeba Abotson', 'Fuerzza Aerea', 17);
INSERT INTO Battalion VALUES (0000000029, 'Maxim Pond', 'Ejeercito', 18);
INSERT INTO Battalion VALUES (0000000030, 'Orrin Lonie', 'Ejeercito', 19);
INSERT INTO Battalion VALUES (0000000031, 'Michael Matiewe', 'Armmada', 20);
INSERT INTO Battalion VALUES (0000000032, 'Suzi Clue', 'Fuersza Aerea', 21);

--- QUERY ---
--- SELECT * FROM Battalion ORDER BY idBattalion;



--- HOSPITAL ---
INSERT INTO Hospital VALUES (NULL, 'Hospital 1', 'Calle 111 # 45 - 56',150, -1, 23, 1, 1, 1);
INSERT INTO Hospital VALUES (NULL, 'Hospital 2', 'Calle 112 # 45 - 56',200, -64, 24, 2, 2, 2);
INSERT INTO Hospital VALUES (NULL, 'Hospital 3', 'Calle 113 # 45 - 56',25, 2, -25, 3, 3, 3);
INSERT INTO Hospital VALUES (NULL, 'Hospital 4', 'Calle 114 # 45 - 56',140, -20, 26, 4, 4, 4);
INSERT INTO Hospital VALUES (NULL, 'Hospital 5', 'Calle 115 # 45 - 56',100, 10, -27, 5, 5, 5);
INSERT INTO Hospital VALUES (NULL, 'Hospital 6', 'Calle 116 # 45 - 56',250, -200, 28, 6, 6, 6);
INSERT INTO Hospital VALUES (NULL, 'Hospital 7', 'Calle 117 # 45 - 56',135, 15, -29, 7, 7, 7);
INSERT INTO Hospital VALUES (NULL, 'Hospital 8', 'Calle 118 # 45 - 56',100, -20, -30, 8, 8, 8);
INSERT INTO Hospital VALUES (NULL, 'Hospital 9', 'Calle 119 # 45 - 56',500, -85, -31, 9, 9, 9);
INSERT INTO Hospital VALUES (NULL, 'Hospital 10','Calle 120 # 45 - 56', 9, 1, -32, 10, 10, 10);
--- QUERY ---
--- SELECT * FROM Hospital ORDER BY idHospital;

--- PERSON ---
--- PATIENTS ---
INSERT INTO Person VALUES ('CI', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', NULL);
INSERT INTO Person VALUES ('CT', 9254619331, 'Barbaraanne', 'Ceyssen', 'F', TO_DATE('09/06/2002', 'MM/DD/YYYY'), 'A', 'bceyssen1@photobucket.com', NULL);
INSERT INTO Person VALUES ('TT', 1786662041, 'Alard', 'Blackburne', 'M', TO_DATE('05/21/2018', 'MM/DD/YYYY'), 'I', 'ablackburne2@usa.gov', NULL);
INSERT INTO Person VALUES ('RR', 2984806463, 'Sacha', 'Bilbrook', 'F', TO_DATE('01/20/1969', 'MM/DD/YYYY'), 'I', 'sbilbrook3@skyrock.com', NULL);

--- DOCTORS ---
INSERT INTO Person VALUES ('CC', 1773190621, 'Sallie', 'Hearnshaw', 'X',TO_DATE( '11/22/1957', 'MM/DD/YYYY'), 'I', 'shearnshaw4@bandcamp.com', NULL);
INSERT INTO Person VALUES ('CC', 2878196529, 'Dotti', 'Tadman', 'L',TO_DATE ('01/17/1974', 'MM/DD/YYYY'), 'I', 'dtadman5@moonfruit.com', NULL);
INSERT INTO Person VALUES ('CC', 9115387117, 'Wilden', 'McLuckie', 'A', TO_DATE('09/20/1992', 'MM/DD/YYYY'), 'A', 'wmcluckie6@mail.com', NULL);
INSERT INTO Person VALUES ('CC', 7049570787, 'Antonino', 'Bletsoe', 'Z',TO_DATE( '4/7/1957', 'MM/DD/YYYY'), 'A', 'abletsoe7@eeee.com', NULL);

--- NURSES ---
INSERT INTO Person VALUES ('ER', 7933982639, 'Arri', 'Woolerton', 'M',TO_DATE ('3/1/1992', 'MM/DD/YYYY'), 'A', 'awoolerton8@theatlantic.com', NULL);
INSERT INTO Person VALUES ('BM', 4252609306, 'Teodoor', 'Ferschke', 'F',TO_DATE ('4/13/2010', 'MM/DD/YYYY'), 'I', 'tferschke9@cdc.gov', NULL);
INSERT INTO Person VALUES ('CE', 4779118851, 'Janie', 'Paszak', 'FS',TO_DATE('4/3/1955', 'MM/DD/YYYY'), 'I', 'jpaszaka@chicagotribune.com', NULL);
INSERT INTO Person VALUES ('CA', 4563832319, 'Electra', 'de Marco', 'M', TO_DATE('8/30/2017', 'MM/DD/YYYY'), 'I', 'edemarcob@etsy.com', NULL);

 --- QUERY ---
 --- SELECT * FROM Patient;


--- CLINICAL HISTORY ---
INSERT INTO ClinicalHistory VALUES (NULL, 'CU', 1948559565);
INSERT INTO ClinicalHistory VALUES (NULL, 'CA', 9254619331);
INSERT INTO ClinicalHistory VALUES (NULL, 'CA', 1786662041);
INSERT INTO ClinicalHistory VALUES (NULL, 'QE', 2984806463);


--- LABORATORY ---
INSERT INTO Laboratory VALUES (NULL, 'Kshlerin-Hilll', 'Calle 111 # 45 - 56', 1, 1, 233);
INSERT INTO Laboratory VALUES (NULL, 'Lang-Hyatt', 'Calle 112 # 45 - 56', 2, 2, 24);
INSERT INTO Laboratory VALUES (NULL, 'Reichert and Sons', 'Calle 113 # 45 - 56', 3, 3, 252);
INSERT INTO Laboratory VALUES (NULL, 'Beer, Jast and Heidenreich', 'Calle 114 # 45 - 56', 4, 4, 262);
INSERT INTO Laboratory VALUES (NULL, 'Metz-Beier', 'Calle 115 # 45 - 56', 5, 5, 273);
INSERT INTO Laboratory VALUES (NULL, 'Runolfsson Inc', 'Calle 116 # 45 - 56', 6, 6, 283);
INSERT INTO Laboratory VALUES (NULL, 'Goodwin-Batz', 'Calle 117 # 45 - 56', 7, 7, 23);
INSERT INTO Laboratory VALUES (NULL, 'Schamberger, Schuppe and McDermott', 'Calle 118 # 45 - 56', 8, 8, 303);
INSERT INTO Laboratory VALUES (NULL, 'Ankunding, Bins and Dach', 'Calle 119 # 45 - 56', 9, 9, 331);
INSERT INTO Laboratory VALUES (NULL, 'Thompson-Wiza', 'Calle 120 # 45 - 56', 10, 10, 332);

--- QUERY ---
--- SELECT * FROM Laboratory ORDER BY idLaboratory ;


--- APPOINTMENT ---
INSERT INTO Appointment VALUES (NULL,'Dolor de cabeza', 'Atypical squamous cells of undetermined significance on cytologic smear of anus (ASC-US)', TO_DATE('7/22/1999', 'MM/DD/YYYY'), 1, 2, 3, NULL);
INSERT INTO Appointment VALUES (NULL,'Dolor de estómago', 'Machinery accident on board other powered watercraft, initial encounter',TO_DATE( '9/22/1999', 'MM/DD/YYYY'), 2, 3, 3, NULL);
INSERT INTO Appointment VALUES (NULL,'Dolor de cabeza', 'Yellow fever', TO_DATE('6/13/1999', 'MM/DD/YYYY'), 3, 1, 9, null);
INSERT INTO Appointment VALUES (NULL,'Dolor de estómago', 'Drug-induced folate deficiency anemia', TO_DATE('12/6/1999', 'MM/DD/YYYY'), 4, 1, 1, NULL);
INSERT INTO Appointment VALUES (NULL,'Dolor de pie', 'Absolute glaucoma, bilateral', TO_DATE('6/17/1999', 'MM/DD/YYYY'), 1, 7, 3, null);
INSERT INTO Appointment VALUES (NULL,'Dolor de brazo', 'Laceration with foreign body of unspecified thumb with damage to nail, subsequent encounter', TO_DATE('11/3/1999', 'MM/DD/YYYY'), 3, 2, 1, NULL);
INSERT INTO Appointment VALUES (NULL,'Dolor de cabeza', 'Open bite of right thumb without damage to nail, subsequent encounter', TO_DATE('11/10/1999', 'MM/DD/YYYY'), 2, 2, 2, null);
INSERT INTO Appointment VALUES (NULL,'Dolor de estómago', 'Nondisplaced avulsion fracture of tuberosity of unspecified calcaneus, initial encounter for open fracture', TO_DATE('6/6/1999', 'MM/DD/YYYY'), 1, 1, 1, NULL);
INSERT INTO Appointment VALUES (NULL,'Dolor de pierna', 'Burn of first degree of right palm', TO_DATE('10/11/1999', 'MM/DD/YYYY'), 3, 2, 3, NULL);
INSERT INTO Appointment VALUES (NULL,'Dolor de cabeza', 'Crushing injury of right hand, initial encounter', TO_DATE('11/20/1999', 'MM/DD/YYYY'), 4, 4, 4, NULL);



--- MEDICATION COMPONENTS ---
INSERT INTO MedicationComponents VALUES (NULL, 'JNH Magic BB', 165);
INSERT INTO MedicationComponents VALUES (NULL, 'Mirtazapine', 222);
INSERT INTO MedicationComponents VALUES (NULL, 'Promethazine Hydrochloride', 312);
INSERT INTO MedicationComponents VALUES (NULL, 'Sunmark no drip', 421);
INSERT INTO MedicationComponents VALUES (NULL, 'Polyethylene Glycol 3350, NF Powder for Solution, Laxative', 522);
INSERT INTO MedicationComponents VALUES (NULL, 'METHADONE HYDROCHLORIDE', 632);
INSERT INTO MedicationComponents VALUES (NULL, 'Nadolol', 337);
INSERT INTO MedicationComponents VALUES (NULL, 'fexofenadine hydrochloride', 821);
INSERT INTO MedicationComponents VALUES (NULL, 'Hydrocortisone anti-itch plus', 912);
INSERT INTO MedicationComponents VALUES (NULL, 'Myrbetriq', 102); 

--- QUERY ---
--- SELECT * FROM MedicationComponents ORDER BY idMedicationComponent;



--- PROCEDURES ---
INSERT INTO Procedures VALUES (NULL, 'Fluoroscopy of Right Hand/Finger Joint using H Osm Contrast', TO_DATE('7/1/1999', 'MM/DD/YYYY'), 4, 10, 4, 10, NULL);
INSERT INTO Procedures VALUES (NULL, 'Excision of Ileocecal Valve, Via Opening', TO_DATE('6/5/1999', 'MM/DD/YYYY'), 1, 8, 2, 3, NULL);
INSERT INTO Procedures VALUES (NULL, 'Extirpation of Matter from Cranial Cavity, Open Approach',TO_DATE( '8/27/1999', 'MM/DD/YYYY'), 1, 2, 3, 4, NULL);
INSERT INTO Procedures VALUES (NULL, 'Replace of L Metatarsophal Jt with Nonaut Sub, Open Approach', TO_DATE('10/30/1999', 'MM/DD/YYYY'), 2, 6, 1, 4, NULL);
INSERT INTO Procedures VALUES (NULL, 'Drainage of Ileum with Drainage Device, Via Opening', TO_DATE('5/15/1999', 'MM/DD/YYYY'), 4, 10, 2, 1, NULL);
INSERT INTO Procedures VALUES (NULL, 'Bypass L Com Iliac Art to B Femor A w Autol Art, Perc Endo',TO_DATE( '2/20/1999', 'MM/DD/YYYY'), 3, 2, 2, 2, NULL);
INSERT INTO Procedures VALUES (NULL, 'Destruction of Left Tibia, Open Approach', TO_DATE('12/25/1999', 'MM/DD/YYYY'), 4, 4, 4, 4, NULL);
INSERT INTO Procedures VALUES (NULL, 'Bypass Cereb Vent to Periton Cav w Synth Sub, Perc',TO_DATE( '5/26/1999', 'MM/DD/YYYY'), 1, 1, 1, 1, NULL);
INSERT INTO Procedures VALUES (NULL, 'Release Esophagogastric Junction, Percutaneous Approach',TO_DATE( '5/2/1999', 'MM/DD/YYYY'), 3, 3, 3, 3, NULL);
INSERT INTO Procedures VALUES (NULL, 'Revise of Infusion Dev in R Temporomandib Jt, Perc Approach', TO_DATE('8/22/1999', 'MM/DD/YYYY'), 1, 2, 3, 4, NULL);

--- QUERY ---
--- SELECT * FROM Procedures ORDER BY idProcedure; 


