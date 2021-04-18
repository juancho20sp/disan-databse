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

--- PERSON ---
--- PATIENTS ---
INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', NULL);
INSERT INTO Person VALUES ('CC', 9254619331, 'Barbaraanne', 'Ceyssen', 'F', TO_DATE('09/06/2002', 'MM/DD/YYYY'), 'A', 'bceyssen1@photobucket.com', NULL);
INSERT INTO Person VALUES ('CE', 1786662041, 'Alard', 'Blackburne', 'M', TO_DATE('05/21/2018', 'MM/DD/YYYY'), 'I', 'ablackburne2@usa.gov', NULL);
INSERT INTO Person VALUES ('CC', 2984806463, 'Sacha', 'Bilbrook', 'F', TO_DATE('01/20/1969', 'MM/DD/YYYY'), 'I', 'sbilbrook3@skyrock.com', NULL);

--- DOCTORS ---
INSERT INTO Person VALUES ('TI', 1773190621, 'Sallie', 'Hearnshaw', 'F',TO_DATE( '11/22/1957', 'MM/DD/YYYY'), 'I', 'shearnshaw4@bandcamp.com', NULL);
INSERT INTO Person VALUES ('CC', 2878196529, 'Dotti', 'Tadman', 'F',TO_DATE ('01/17/1974', 'MM/DD/YYYY'), 'I', 'dtadman5@moonfruit.com', NULL);
INSERT INTO Person VALUES ('TI', 9115387117, 'Wilden', 'McLuckie', 'F', TO_DATE('09/20/1992', 'MM/DD/YYYY'), 'A', 'wmcluckie6@dion.ne.jp', NULL);
INSERT INTO Person VALUES ('CC', 7049570787, 'Antonino', 'Bletsoe', 'M',TO_DATE( '4/7/1957', 'MM/DD/YYYY'), 'A', 'abletsoe7@ed.gov', NULL);

--- NURSES ---
INSERT INTO Person VALUES ('TI', 7933982639, 'Arri', 'Woolerton', 'M',TO_DATE ('3/1/1992', 'MM/DD/YYYY'), 'A', 'awoolerton8@theatlantic.com', NULL);
INSERT INTO Person VALUES ('TI', 4252609306, 'Teodoor', 'Ferschke', 'F',TO_DATE ('4/13/2010', 'MM/DD/YYYY'), 'I', 'tferschke9@cdc.gov', NULL);
INSERT INTO Person VALUES ('CE', 4779118851, 'Janie', 'Paszak', 'F',TO_DATE('4/3/1955', 'MM/DD/YYYY'), 'I', 'jpaszaka@chicagotribune.com', NULL);
INSERT INTO Person VALUES ('CC', 4563832319, 'Electra', 'de Marco', 'M', TO_DATE('8/30/2017', 'MM/DD/YYYY'), 'I', 'edemarcob@etsy.com', NULL);
 
 --- QUERY ---
 --- SELECT * FROM Person;


--- DOCTOR ---
INSERT INTO Doctor VALUES('TI', 1773190621, 'Fuerza Aerea'); 
INSERT INTO Doctor VALUES('CC', 2878196529, 'Armada'); 
INSERT INTO Doctor VALUES('TI', 9115387117, 'Ejercito'); 
INSERT INTO Doctor VALUES('CC', 7049570787, 'Fuerza Aerea'); 

--- QUERY ---
--- SELECT * FROM Doctor;


--- NURSE ---
INSERT INTO Nurse VALUES('TI', 7933982639, 'Fuerza Aerea'); 
INSERT INTO Nurse VALUES('TI', 4252609306, 'Armada'); 
INSERT INTO Nurse VALUES('CE', 4779118851, 'Ejercito'); 
INSERT INTO Nurse VALUES('CC', 4563832319, 'Fuerza Aerea'); 

--- QUERY ---
--- SELECT * FROM Nurse;


--- PATIENT --- 
INSERT INTO Patient VALUES ('CE', 1948559565, NULL);
INSERT INTO Patient VALUES ('CC', 9254619331, NULL);
INSERT INTO Patient VALUES ('CE', 1786662041, NULL);
INSERT INTO Patient VALUES ('CC', 2984806463, NULL);

 --- QUERY ---
 --- SELECT * FROM Patient;


--- CLINICAL HISTORY ---
INSERT INTO ClinicalHistory VALUES (NULL, 'CE', 1948559565);
INSERT INTO ClinicalHistory VALUES (NULL, 'CC', 9254619331);
INSERT INTO ClinicalHistory VALUES (NULL, 'CE', 1786662041);
INSERT INTO ClinicalHistory VALUES (NULL, 'CC', 2984806463);

 --- QUERY ---
 --- SELECT * FROM ClinicalHistory ORDER BY idClinicalHistory ;


 --- SPECIALTY ---
INSERT INTO Speciality VALUES (NULL, 'Hematologia');
INSERT INTO Speciality VALUES (NULL, 'Endocrinologia');
INSERT INTO Speciality VALUES (NULL, 'Medicina Interna');
INSERT INTO Speciality VALUES (NULL, 'Cirugia General');
INSERT INTO Speciality VALUES (NULL, 'Pediatria');
INSERT INTO Speciality VALUES (NULL, 'Gastroenterologia');
INSERT INTO Speciality VALUES (NULL, 'Infectologia');
INSERT INTO Speciality VALUES (NULL, 'Neumologia');
INSERT INTO Speciality VALUES (NULL, 'Dermatologia');
INSERT INTO Speciality VALUES (NULL, 'Neurocirugia');

--- QUERY ---
--- SELECT * FROM Speciality ORDER BY idSpeciality ;


--- DOCTOR SPECIALTY ---
INSERT INTO DoctorSpeciality VALUES ('TI', 1773190621, 0000000001);
INSERT INTO DoctorSpeciality VALUES ('CC', 2878196529, 0000000002);
INSERT INTO DoctorSpeciality VALUES ('TI', 9115387117, 0000000003);
INSERT INTO DoctorSpeciality VALUES ('CC', 7049570787, 0000000004);

--- QUERY ---
--- SELECT * FROM DoctorSpeciality;


--- NURSE SPECIALTY ---
INSERT INTO NurseSpeciality VALUES ('TI', 7933982639, 0000000001);
INSERT INTO NurseSpeciality VALUES ('TI', 4252609306, 0000000002);
INSERT INTO NurseSpeciality VALUES ('CE', 4779118851, 0000000003);
INSERT INTO NurseSpeciality VALUES ('CC', 4563832319, 0000000004);

--- QUERY ---
--- SELECT * FROM NurseSpeciality;


--- BACKGROUND ---
INSERT INTO Background VALUES (NULL, 00001); 
INSERT INTO Background VALUES (NULL, 00002); 
INSERT INTO Background VALUES (NULL, 00003); 
INSERT INTO Background VALUES (NULL, 00004);

--- QUERY ---
--- SELECT * FROM Background ORDER BY idBackground ;


--- DISEASE ---
INSERT INTO Disease VALUES (NULL, 'Pteridaceae', 'Rheumatoid polyneuropathy with rheumatoid arthritis of right elbow', 1);
INSERT INTO Disease VALUES (NULL, 'Campanulaceae', 'Toxic effect of 2-Propanol, intentional self-harm, sequela', 2);
INSERT INTO Disease VALUES (NULL, 'Asteraceae', 'Benign neoplasm of scapula and long bones of upper limb', 3);
INSERT INTO Disease VALUES (NULL, 'Cyperaceae', 'Benign mammary dysplasia', 4);
INSERT INTO Disease VALUES (NULL, 'Hypnaceae', 'Nondisplaced fracture of capitate [os magnum] bone, right wrist, initial encounter for open fracture', 1);
INSERT INTO Disease VALUES (NULL, 'Rosaceae', 'Poisoning by unspecified drugs, medicaments and biological substances, accidental (unintentional), initial encounter', 2);
INSERT INTO Disease VALUES (NULL, 'Scrophulariaceae', 'Crushing injury of unspecified foot, sequela', 3);
INSERT INTO Disease VALUES (NULL, 'Sarraceniaceae', 'Infection and inflammatory reaction due to cardiac valve prosthesis, subsequent encounter', 4);
INSERT INTO Disease VALUES (NULL, 'Araceae', 'Driver of heavy transport vehicle injured in collision with pedestrian or animal in traffic accident, subsequent encounter', 1);
INSERT INTO Disease VALUES (NULL, 'Liliaceae', 'Other fracture of left patella, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with routine healing', 2);

--- QUERY ---
--- SELECT * FROM Disease ORDER BY idDisease ;


--- LABORATORY ---
INSERT INTO Laboratory VALUES (NULL, 'Kshlerin-Hilll', 1, 1);
INSERT INTO Laboratory VALUES (NULL, 'Lang-Hyatt', 2, 2);
INSERT INTO Laboratory VALUES (NULL, 'Reichert and Sons', 3, 3);
INSERT INTO Laboratory VALUES (NULL, 'Beer, Jast and Heidenreich', 4, 4);
INSERT INTO Laboratory VALUES (NULL, 'Metz-Beier', 5, 5);
INSERT INTO Laboratory VALUES (NULL, 'Runolfsson Inc', 6, 6);
INSERT INTO Laboratory VALUES (NULL, 'Goodwin-Batz', 7, 7);
INSERT INTO Laboratory VALUES (NULL, 'Schamberger, Schuppe and McDermott', 8, 8);
INSERT INTO Laboratory VALUES (NULL, 'Ankunding, Bins and Dach', 9, 9);
INSERT INTO Laboratory VALUES (NULL, 'Thompson-Wiza', 10, 10);

--- QUERY ---
--- SELECT * FROM Laboratory ORDER BY idLaboratory ;


--- MANAGEMENT PLAN ---
INSERT INTO ManagementPlan VALUES (NULL, 'Erythema nodosum with hypersensitivity reaction in tuberculosis, bacteriological or histological examination unknown (at present)');
INSERT INTO ManagementPlan VALUES (NULL, 'Other venous complications of pregnancy and the puerperium, unspecified as to episode of care or not applicable');
INSERT INTO ManagementPlan VALUES (NULL, 'Multiple myeloma, in relapse');
INSERT INTO ManagementPlan VALUES (NULL, 'Other forms of progressive coccidioidomycosis');
INSERT INTO ManagementPlan VALUES (NULL, 'Pulmonary complications of anesthesia or other sedation in labor and delivery, antepartum condition or complication');
INSERT INTO ManagementPlan VALUES (NULL, 'Malignant neoplasm of other specified sites of large intestine');
INSERT INTO ManagementPlan VALUES (NULL, 'Sarcoidosis');
INSERT INTO ManagementPlan VALUES (NULL, 'Roseola infantum, unspecified');
INSERT INTO ManagementPlan VALUES (NULL, 'Dysmenorrhea');
INSERT INTO ManagementPlan VALUES (NULL, 'Retroverted and incarcerated gravid uterus, postpartum condition or complication');

--- QUERY ---
--- SELECT * FROM ManagementPlan ORDER BY idManagementPlan;


--- APPOINTMENT ---
INSERT INTO Appointment VALUES (NULL,'Dolor de cabeza', 'Atypical squamous cells of undetermined significance on cytologic smear of anus (ASC-US)', TO_DATE('7/22/2022', 'MM/DD/YYYY'), 1, 2, 3);
INSERT INTO Appointment VALUES (NULL,'Dolor de estómago', 'Machinery accident on board other powered watercraft, initial encounter',TO_DATE( '9/22/2021', 'MM/DD/YYYY'), 2, 3, 3);
INSERT INTO Appointment VALUES (NULL,'Dolor de cabeza', 'Yellow fever', TO_DATE('6/13/2021', 'MM/DD/YYYY'), 3, 1, 9);
INSERT INTO Appointment VALUES (NULL,'Dolor de estómago', 'Drug-induced folate deficiency anemia', TO_DATE('12/6/2022', 'MM/DD/YYYY'), 4, 1, 1);
INSERT INTO Appointment VALUES (NULL,'Dolor de pie', 'Absolute glaucoma, bilateral', TO_DATE('6/17/2024', 'MM/DD/YYYY'), 1, 7, 3);
INSERT INTO Appointment VALUES (NULL,'Dolor de brazo', 'Laceration with foreign body of unspecified thumb with damage to nail, subsequent encounter', TO_DATE('11/3/2024', 'MM/DD/YYYY'), 3, 2, 1);
INSERT INTO Appointment VALUES (NULL,'Dolor de cabeza', 'Open bite of right thumb without damage to nail, subsequent encounter', TO_DATE('11/10/2022', 'MM/DD/YYYY'), 2, 2, 2);
INSERT INTO Appointment VALUES (NULL,'Dolor de estómago', 'Nondisplaced avulsion fracture of tuberosity of unspecified calcaneus, initial encounter for open fracture', TO_DATE('6/6/2023', 'MM/DD/YYYY'), 1, 1, 1);
INSERT INTO Appointment VALUES (NULL,'Dolor de pierna', 'Burn of first degree of right palm', TO_DATE('10/11/2021', 'MM/DD/YYYY'), 3, 2, 3);
INSERT INTO Appointment VALUES (NULL,'Dolor de cabeza', 'Crushing injury of right hand, initial encounter', TO_DATE('11/20/2022', 'MM/DD/YYYY'), 4, 4, 4);

--- QUERY ---
--- SELECT * FROM Appointment ORDER BY idAppointment;


--- APPOINTMENT DOCTOR ---
INSERT INTO AppointmentDoctor VALUES (0000000001, 'TI', 1773190621);
INSERT INTO AppointmentDoctor VALUES (0000000002, 'CC', 2878196529);
INSERT INTO AppointmentDoctor VALUES (0000000003, 'TI', 9115387117);
INSERT INTO AppointmentDoctor VALUES (0000000004, 'CC', 7049570787);
INSERT INTO AppointmentDoctor VALUES (0000000005, 'TI', 1773190621);
INSERT INTO AppointmentDoctor VALUES (0000000006, 'CC', 2878196529);
INSERT INTO AppointmentDoctor VALUES (0000000007, 'TI', 9115387117);
INSERT INTO AppointmentDoctor VALUES (0000000008, 'CC', 7049570787);
INSERT INTO AppointmentDoctor VALUES (0000000009, 'TI', 1773190621);
INSERT INTO AppointmentDoctor VALUES (0000000010, 'CC', 2878196529);

--- QUERY ---
--- SELECT * FROM AppointmentDoctor ORDER BY idAppointment;


--- APPOINTMENT NURSE ---
INSERT INTO AppointmentNurse VALUES (0000000001, 'TI', 7933982639);
INSERT INTO AppointmentNurse VALUES (0000000002, 'TI', 4252609306);
INSERT INTO AppointmentNurse VALUES (0000000003, 'CE', 4779118851);
INSERT INTO AppointmentNurse VALUES (0000000004, 'CC', 4563832319);
INSERT INTO AppointmentNurse VALUES (0000000005, 'TI', 7933982639);
INSERT INTO AppointmentNurse VALUES (0000000006, 'TI', 4252609306);
INSERT INTO AppointmentNurse VALUES (0000000007, 'CE', 4779118851);
INSERT INTO AppointmentNurse VALUES (0000000008, 'CC', 4563832319);
INSERT INTO AppointmentNurse VALUES (0000000009, 'TI', 7933982639);
INSERT INTO AppointmentNurse VALUES (0000000010, 'TI', 4252609306);

--- QUERY ---
--- SELECT * FROM AppointmentNurse ORDER BY idAppointment;


--- EXAMS ---
INSERT INTO Exams VALUES (NULL, 'Extirpation of Matter from Right Carotid Body, Perc Approach', 1);
INSERT INTO Exams VALUES (NULL, 'Bypass R Ureter to Bladder with Nonaut Sub, Open Approach', 2);
INSERT INTO Exams VALUES (NULL, 'Change Other Device in Neck, External Approach', 3);
INSERT INTO Exams VALUES (NULL, 'Revision of Radioact Elem in Up Back, Perc Endo Approach', 4);
INSERT INTO Exams VALUES (NULL, 'Revision of Infusion Dev in Retroperitoneum, Perc Approach', 5);
INSERT INTO Exams VALUES (NULL, 'Revision of Synth Sub in R Pleural Cav, Perc Endo Approach', 6);
INSERT INTO Exams VALUES (NULL, 'Replacement of Aortic Valve with Synth Sub, Perc Approach', 7);
INSERT INTO Exams VALUES (NULL, 'Dilate R Com Carotid, Bifurc, w 4 Drug-elut, Perc Endo', 8);
INSERT INTO Exams VALUES (NULL, 'Removal of Bandage on Left Lower Leg', 9);
INSERT INTO Exams VALUES (NULL, 'Replacement of L Up Femur with Autol Sub, Perc Approach', 10);
 
--- QUERY ---
--- SELECT * FROM Exams ORDER BY idExams;


--- EXAMS LABORATORY ---
INSERT INTO ExamsLaboratory VALUES (0000000001, 0000000001);
INSERT INTO ExamsLaboratory VALUES (0000000002, 0000000002);
INSERT INTO ExamsLaboratory VALUES (0000000003, 0000000003);
INSERT INTO ExamsLaboratory VALUES (0000000004, 0000000004);
INSERT INTO ExamsLaboratory VALUES (0000000005, 0000000005);
INSERT INTO ExamsLaboratory VALUES (0000000006, 0000000006);
INSERT INTO ExamsLaboratory VALUES (0000000007, 0000000007);
INSERT INTO ExamsLaboratory VALUES (0000000008, 0000000008);
INSERT INTO ExamsLaboratory VALUES (0000000009, 0000000009);
INSERT INTO ExamsLaboratory VALUES (0000000010, 0000000010);

--- QUERY ---
--- SELECT * FROM ExamsLaboratory;


--- SUPPLY ---
INSERT INTO Supply VALUES (NULL, 'Polygonaceae', 150, 1);
INSERT INTO Supply VALUES (NULL, 'Poaceae', 1200, 2);
INSERT INTO Supply VALUES (NULL, 'Boraginaceae', 12000, 3);
INSERT INTO Supply VALUES (NULL, 'Chenopodiaceae', 5, 7);
INSERT INTO Supply VALUES (NULL, 'Arthopyreniaceae', 14788, 6);
INSERT INTO Supply VALUES (NULL, 'Ranunculaceae', 36895, 5);
INSERT INTO Supply VALUES (NULL, 'Brassicaceae', 6187, 8);
INSERT INTO Supply VALUES (NULL, 'Orchidaceae', 41282, 9);
INSERT INTO Supply VALUES (NULL, 'Rubiaceae', 592, 10);
INSERT INTO Supply VALUES (NULL, 'Caryophyllaceae', 66042, 3);
 
--- QUERY ---
--- SELECT * FROM Supply ORDER BY idSupply;


--- MEDICINES ---
INSERT INTO Medicines VALUES (NULL, 'bisoprolol fumarate and hydrochlorothiazide', 'Ziac', 'Teva Women''s Health, Inc.', 1, 10, 9);
INSERT INTO Medicines VALUES (NULL, 'BENZOYL PEROXIDE', 'Benzoyl peroxide short contact', 'Metacon Labs', 2, 12, 1);
INSERT INTO Medicines VALUES (NULL, 'TITANIUM DIOXIDE, ZINC OXIDE', 'Anew Solar Advance', 'Avon Products, Inc.', 3, 3, 3);
INSERT INTO Medicines VALUES (NULL, 'fosamprenavir calcium', 'LEXIVA', 'REMEDYREPACK INC.', 1, 1, 3);
INSERT INTO Medicines VALUES (NULL, 'Loperamide HCl', 'Anti-Diarrheal', 'GREAT LAKES WHOLESALE, MARKETING, AND SALES, INC.', 4, 3, 9);
INSERT INTO Medicines VALUES (NULL, 'topiramate', 'Topamax', 'Rebel Distributors Corp', 2, 2, 2);
INSERT INTO Medicines VALUES (NULL, 'isopropyl alcohol', 'LENS CLEANER', 'Yuyao Jessie Commodity Co.,Ltd.', 8, 7, 1);
INSERT INTO Medicines VALUES (NULL, 'Atropa belladonna, Euphrasia stricta and Calcium sulfide', 'Irritated Eye Relief', 'Similasan Corporation', 10, 10, 10);
INSERT INTO Medicines VALUES (NULL, 'Dextromethorphan Hydrobromide, Guaifenesin, and Phenylephrine Hydrochloride', 'Giltuss', 'Gil Pharmaceutical Corp', 5, 3, 1);
INSERT INTO Medicines VALUES (NULL, 'Fluoxetine Hydrochloride', 'Fluoxetine', 'Rebel Distributors Corp', 2, 10, 2);

--- QUERY ---
--- SELECT * FROM Medicines ORDER BY idMedicines;


--- MEDICATION COMPONENTS ---
INSERT INTO MedicationComponents VALUES (NULL, 'JNH Magic BB', 1);
INSERT INTO MedicationComponents VALUES (NULL, 'Mirtazapine', 2);
INSERT INTO MedicationComponents VALUES (NULL, 'Promethazine Hydrochloride', 3);
INSERT INTO MedicationComponents VALUES (NULL, 'Sunmark no drip', 4);
INSERT INTO MedicationComponents VALUES (NULL, 'Polyethylene Glycol 3350, NF Powder for Solution, Laxative', 5);
INSERT INTO MedicationComponents VALUES (NULL, 'METHADONE HYDROCHLORIDE', 6);
INSERT INTO MedicationComponents VALUES (NULL, 'Nadolol', 7);
INSERT INTO MedicationComponents VALUES (NULL, 'fexofenadine hydrochloride', 8);
INSERT INTO MedicationComponents VALUES (NULL, 'Hydrocortisone anti-itch plus', 9);
INSERT INTO MedicationComponents VALUES (NULL, 'Myrbetriq', 10); 

--- QUERY ---
--- SELECT * FROM MedicationComponents ORDER BY idMedicationComponent;

--- EXAMS NURSE ---
INSERT INTO ExamsNurse VALUES (0000000001, 'TI', 7933982639);
INSERT INTO ExamsNurse VALUES (0000000002, 'TI', 4252609306);
INSERT INTO ExamsNurse VALUES (0000000003, 'CE', 4779118851);
INSERT INTO ExamsNurse VALUES (0000000004, 'CC', 4563832319);
INSERT INTO ExamsNurse VALUES (0000000005, 'TI', 7933982639);
INSERT INTO ExamsNurse VALUES (0000000006, 'TI', 4252609306);
INSERT INTO ExamsNurse VALUES (0000000007, 'CE', 4779118851);
INSERT INTO ExamsNurse VALUES (0000000008, 'CC', 4563832319);
INSERT INTO ExamsNurse VALUES (0000000009, 'TI', 4252609306);
INSERT INTO ExamsNurse VALUES (0000000010, 'CE', 4779118851);

--- QUERY ---
--- SELECT * FROM ExamsNurse ORDER BY idExam; 

--- PROCEDURES ---
INSERT INTO Procedures VALUES (NULL, 'Fluoroscopy of Right Hand/Finger Joint using H Osm Contrast', TO_DATE('7/1/2024', 'MM/DD/YYYY'), 4, 10, 4, 10);
INSERT INTO Procedures VALUES (NULL, 'Excision of Ileocecal Valve, Via Opening', TO_DATE('6/5/2024', 'MM/DD/YYYY'), 1, 8, 2, 3);
INSERT INTO Procedures VALUES (NULL, 'Extirpation of Matter from Cranial Cavity, Open Approach',TO_DATE( '8/27/2021', 'MM/DD/YYYY'), 1, 2, 3, 4);
INSERT INTO Procedures VALUES (NULL, 'Replace of L Metatarsophal Jt with Nonaut Sub, Open Approach', TO_DATE('10/30/2021', 'MM/DD/YYYY'), 2, 6, 1, 4);
INSERT INTO Procedures VALUES (NULL, 'Drainage of Ileum with Drainage Device, Via Opening', TO_DATE('5/15/2022', 'MM/DD/YYYY'), 4, 10, 2, 1);
INSERT INTO Procedures VALUES (NULL, 'Bypass L Com Iliac Art to B Femor A w Autol Art, Perc Endo',TO_DATE( '2/20/2022', 'MM/DD/YYYY'), 3, 2, 2, 2);
INSERT INTO Procedures VALUES (NULL, 'Destruction of Left Tibia, Open Approach', TO_DATE('12/25/2022', 'MM/DD/YYYY'), 4, 4, 4, 4);
INSERT INTO Procedures VALUES (NULL, 'Bypass Cereb Vent to Periton Cav w Synth Sub, Perc',TO_DATE( '5/26/2024', 'MM/DD/YYYY'), 1, 1, 1, 1);
INSERT INTO Procedures VALUES (NULL, 'Release Esophagogastric Junction, Percutaneous Approach',TO_DATE( '5/2/2024', 'MM/DD/YYYY'), 3, 3, 3, 3);
INSERT INTO Procedures VALUES (NULL, 'Revise of Infusion Dev in R Temporomandib Jt, Perc Approach', TO_DATE('8/22/2022', 'MM/DD/YYYY'), 1, 2, 3, 4);

--- QUERY ---
--- SELECT * FROM Procedures ORDER BY idProcedure; 


--- PROCEDURE NURSE ---
INSERT INTO ProcedureNurse VALUES ('TI', 7933982639, 0000000001);
INSERT INTO ProcedureNurse VALUES ('TI', 4252609306, 0000000002);
INSERT INTO ProcedureNurse VALUES ('CE', 4779118851, 0000000003);
INSERT INTO ProcedureNurse VALUES ('CC', 4563832319, 0000000004);

--- QUERY ---
--- SELECT * FROM ProcedureNurse ORDER BY idProcedure;


--- PROCEDURE DOCTOR ---
INSERT INTO ProcedureDoctor VALUES ('TI', 1773190621, 0000000001);
INSERT INTO ProcedureDoctor VALUES ('CC', 2878196529, 0000000002);
INSERT INTO ProcedureDoctor VALUES ('TI', 9115387117, 0000000003);
INSERT INTO ProcedureDoctor VALUES ('CC', 7049570787, 0000000004);

--- QUERY ---
--- SELECT * FROM ProcedureNurse ORDER BY idProcedure; 