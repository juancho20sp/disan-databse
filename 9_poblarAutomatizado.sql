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
/*INSERT INTO Division VALUES (NULL, 'División 1', 'Juline Theobold', 'Trailsway', 'Fuerza Aerea');
INSERT INTO Division VALUES (NULL, 'División 2', 'Ralina Jacklings', 'Tomscot', 'Ejercito');
INSERT INTO Division VALUES (NULL, 'División 3', 'Ashlen Snary', 'Superior', 'Armada');
INSERT INTO Division VALUES (NULL, 'División 4', 'Anne Bernasek', 'Crest Line', 'Ejercito');
INSERT INTO Division VALUES (NULL, 'División 5', 'Cody Carlan', 'Lakeland', 'Armada');
INSERT INTO Division VALUES (NULL, 'División 6', 'Mabelle Cherryman', 'Lakewood Gardens', 'Fuerza Aerea');
INSERT INTO Division VALUES (NULL, 'División 7', 'Godwin Jarrad', 'Northland', 'Fuerza Aerea');
INSERT INTO Division VALUES (NULL, 'División 8', 'Deena Hague', 'Shopko', 'Ejercito');
INSERT INTO Division VALUES (NULL, 'División 9', 'Roddy Richardes', 'Crest Line', 'Fuerza Aerea');
INSERT INTO Division VALUES (NULL, 'División 10', 'Ferdy Peizer', 'Trailsway', 'Armada');
*/
