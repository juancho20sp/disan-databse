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

--- POBLAR OK ---
--- MEDICATION TYPE (DONE) ---
INSERT INTO MedicationType VALUES (0000000001, 'Oral'); 
INSERT INTO MedicationType VALUES (0000000002, 'Sublingual');  
INSERT INTO MedicationType VALUES (0000000003, 'Tópica'); 
INSERT INTO MedicationType VALUES (0000000004, 'Transdérmica'); 
INSERT INTO MedicationType VALUES (0000000005, 'Oftalmológica'); 
INSERT INTO MedicationType VALUES (0000000006, 'Inhalatoria'); 
INSERT INTO MedicationType VALUES (0000000007, 'Rectal'); 
INSERT INTO MedicationType VALUES (0000000008, 'Vaginal'); 
INSERT INTO MedicationType VALUES (0000000009, 'Intravenosa'); 
INSERT INTO MedicationType VALUES (0000000010, 'Intramuscular'); 
INSERT INTO MedicationType VALUES (0000000011, 'Subcutánea'); 
INSERT INTO MedicationType VALUES (0000000012, 'Parental');

--- MEDICATION INVENTORY ---
INSERT INTO MedicationInventory VALUES(0000000001); 
INSERT INTO MedicationInventory VALUES(0000000002); 
INSERT INTO MedicationInventory VALUES(0000000003); 
INSERT INTO MedicationInventory VALUES(0000000004); 
INSERT INTO MedicationInventory VALUES(0000000005); 
INSERT INTO MedicationInventory VALUES(0000000006); 
INSERT INTO MedicationInventory VALUES(0000000007); 
INSERT INTO MedicationInventory VALUES(0000000008); 
INSERT INTO MedicationInventory VALUES(0000000009); 
INSERT INTO MedicationInventory VALUES(0000000010); 

--- SUPPLIES INVENTORY ---
INSERT INTO SuppliesInventory VALUES(0000000001); 
INSERT INTO SuppliesInventory VALUES(0000000002); 
INSERT INTO SuppliesInventory VALUES(0000000003); 
INSERT INTO SuppliesInventory VALUES(0000000004); 
INSERT INTO SuppliesInventory VALUES(0000000005); 
INSERT INTO SuppliesInventory VALUES(0000000006); 
INSERT INTO SuppliesInventory VALUES(0000000007); 
INSERT INTO SuppliesInventory VALUES(0000000008); 
INSERT INTO SuppliesInventory VALUES(0000000009); 
INSERT INTO SuppliesInventory VALUES(0000000010);

--- CITY ---
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


--- DIVISION ---
INSERT INTO Division VALUES (0000000001, 'División 1', 'Juline Theobold', 'Trailsway', 'Fuerza Aerea');
INSERT INTO Division VALUES (0000000002, 'División 2', 'Ralina Jacklings', 'Tomscot', 'Ejercito');
INSERT INTO Division VALUES (0000000003, 'División 3', 'Ashlen Snary', 'Superior', 'Armada');
INSERT INTO Division VALUES (0000000004, 'División 4', 'Anne Bernasek', 'Crest Line', 'Ejercito');
INSERT INTO Division VALUES (0000000005, 'División 5', 'Cody Carlan', 'Lakeland', 'Armada');
INSERT INTO Division VALUES (0000000006, 'División 6', 'Mabelle Cherryman', 'Lakewood Gardens', 'Fuerza Aerea');
INSERT INTO Division VALUES (0000000007, 'División 7', 'Godwin Jarrad', 'Northland', 'Fuerza Aerea');
INSERT INTO Division VALUES (0000000008, 'División 8', 'Deena Hague', 'Shopko', 'Ejercito');
INSERT INTO Division VALUES (0000000009, 'División 9', 'Roddy Richardes', 'Crest Line', 'Fuerza Aerea');
INSERT INTO Division VALUES (0000000010, 'División 10', 'Ferdy Peizer', 'Trailsway', 'Armada');

--- BRIGADE ---
INSERT INTO Brigade VALUES (0000000001, 'Brigada 1, Langosh and Schuppe', 'Averyl Stinson', 'Grover', 'Armada');
INSERT INTO Brigade VALUES (0000000002, 'Brigada 2', 'Haven Amberg', 'Loftsgordon', 'Fuerza Aerea');
INSERT INTO Brigade VALUES (0000000003, 'Brigada 3', 'Althea Laetham', 'Dawn', 'Ejercito');
INSERT INTO Brigade VALUES (0000000004, 'Brigada 4', 'Cyrus Langhor', 'Cody', 'Ejercito');
INSERT INTO Brigade VALUES (0000000005, 'Brigada 5', 'Edan Volett', 'Blue Bill Park', 'Ejercito');
INSERT INTO Brigade VALUES (0000000006, 'Brigada 6', 'Marthena Nortcliffe', 'Forest', 'Fuerza Aerea');
INSERT INTO Brigade VALUES (0000000007, 'Brigada 7', 'Brynna Nipper', 'Hoepker', 'Armada');
INSERT INTO Brigade VALUES (0000000008, 'Brigada 8', 'Marchelle Clunie', 'Cody', 'Fuerza Aerea');
INSERT INTO Brigade VALUES (0000000009, 'Brigada 9', 'Kaela Mechem', 'Vidon', 'Armada');
INSERT INTO Brigade VALUES (0000000010, 'Brigada 10', 'Sabine Lampitt', 'Ruskin', 'Fuerza Aerea');


--- HOSPITAL (CREAR BATALLÓN)---
--INSERT INTO Hospital VALUES (0000000001, 'Hospital 1', 3558, 48, ID_BATALLON, ID_SUPP_INV, ID_CITY, ID_MED_INV);
--INSERT INTO Hospital VALUES (0000000002, 'Hospital 2', 4646, 64, ID_BATALLON, ID_SUPP_INV, ID_CITY, ID_MED_INV);
--INSERT INTO Hospital VALUES (0000000003, 'Hospital 3', 3409, 68, ID_BATALLON, ID_SUPP_INV, ID_CITY, ID_MED_INV);
--INSERT INTO Hospital VALUES (0000000004, 'Hospital 4', 2717, 58, ID_BATALLON, ID_SUPP_INV, ID_CITY, ID_MED_INV);
--INSERT INTO Hospital VALUES (0000000005, 'Hospital 5', 731, 74, ID_BATALLON, ID_SUPP_INV, ID_CITY, ID_MED_INV);
--INSERT INTO Hospital VALUES (0000000006, 'Hospital 6', 2712, 25, ID_BATALLON, ID_SUPP_INV, ID_CITY, ID_MED_INV);
--INSERT INTO Hospital VALUES (0000000007, 'Hospital 7', 3277, 65, ID_BATALLON, ID_SUPP_INV, ID_CITY, ID_MED_INV);
--INSERT INTO Hospital VALUES (0000000008, 'Hospital 8', 2457, 84, ID_BATALLON, ID_SUPP_INV, ID_CITY, ID_MED_INV);
--INSERT INTO Hospital VALUES (0000000009, 'Hospital 9', 2465, 77, ID_BATALLON, ID_SUPP_INV, ID_CITY, ID_MED_INV);
--INSERT INTO Hospital VALUES (0000000010, 'Hospital 10', 1153, 34,ID_BATALLON, ID_SUPP_INV, ID_CITY, ID_MED_INV);
