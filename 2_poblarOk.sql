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

--- QUERY ---
--- SELECT * FROM MEDICATIONTYPE ORDER BY idmedicationtype;



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

--- QUERY ---
--- SELECT * FROM MEDICATIONINVENTORY ORDER BY idMedicationInventory;



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

--- QUERY ---
--- SELECT * FROM SuppliesInventory ORDER BY idSuppliesInventory;



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

--- QUERY ---
--- SELECT * FROM City ORDER BY idCity;


--- MILITARY UNIT ---
INSERT INTO MilitaryUnit VALUES (0000000001, 'División 1', 1, NULL);
INSERT INTO MilitaryUnit VALUES (0000000002, 'División 2', 2, NULL);
INSERT INTO MilitaryUnit VALUES (0000000003, 'División 3', 3, NULL);
INSERT INTO MilitaryUnit VALUES (0000000004, 'División 4', 4, NULL);
INSERT INTO MilitaryUnit VALUES (0000000005, 'División 5', 5, NULL);
INSERT INTO MilitaryUnit VALUES (0000000006, 'División 6', 6, NULL);
INSERT INTO MilitaryUnit VALUES (0000000007, 'División 7', 7, NULL);
INSERT INTO MilitaryUnit VALUES (0000000008, 'División 8', 8, NULL);
INSERT INTO MilitaryUnit VALUES (0000000009, 'División 9', 9, NULL);
INSERT INTO MilitaryUnit VALUES (0000000010, 'División 10', 10, NULL);
INSERT INTO MilitaryUnit VALUES (0000000011, 'División 11', 16, NULL);
INSERT INTO MilitaryUnit VALUES (0000000012, 'Brigada 1', 15, NULL);
INSERT INTO MilitaryUnit VALUES (0000000013, 'Brigada 2', 17, NULL);
INSERT INTO MilitaryUnit VALUES (0000000014, 'Brigada 3', 19, NULL);
INSERT INTO MilitaryUnit VALUES (0000000015, 'Brigada 4', 21, NULL);
INSERT INTO MilitaryUnit VALUES (0000000016, 'Brigada 5', 23, NULL);
INSERT INTO MilitaryUnit VALUES (0000000017, 'Brigada 6', 25, NULL);
INSERT INTO MilitaryUnit VALUES (0000000018, 'Brigada 7', 27, NULL);
INSERT INTO MilitaryUnit VALUES (0000000019, 'Brigada 8', 29, NULL);
INSERT INTO MilitaryUnit VALUES (0000000020, 'Brigada 9', 31, NULL);
INSERT INTO MilitaryUnit VALUES (0000000021, 'Brigada 10', 2, NULL);
INSERT INTO MilitaryUnit VALUES (0000000022, 'Brigada 11', 12, NULL);
INSERT INTO MilitaryUnit VALUES (0000000023, 'Batallón 1', 6, NULL);
INSERT INTO MilitaryUnit VALUES (0000000024, 'Batallón 2', 4, NULL);
INSERT INTO MilitaryUnit VALUES (0000000025, 'Batallón 3', 2, NULL);
INSERT INTO MilitaryUnit VALUES (0000000026, 'Batallón 4', 1, NULL);
INSERT INTO MilitaryUnit VALUES (0000000027, 'Batallón 5', 16, NULL);
INSERT INTO MilitaryUnit VALUES (0000000028, 'Batallón 6', 27, NULL);
INSERT INTO MilitaryUnit VALUES (0000000029, 'Batallón 7', 31, NULL);
INSERT INTO MilitaryUnit VALUES (0000000030, 'Batallón 8', 11, NULL);
INSERT INTO MilitaryUnit VALUES (0000000031, 'Batallón 9', 19, NULL);
INSERT INTO MilitaryUnit VALUES (0000000032, 'Batallón 10', 20, NULL);

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
SELECT * FROM Battalion ORDER BY idBattalion;



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
