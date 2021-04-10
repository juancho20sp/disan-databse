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

--- MEDICATION INVENTORY ---
INSERT INTO MedicationInventory VALUES(NULL);
INSERT INTO MedicationInventory VALUES(NULL); 
INSERT INTO MedicationInventory VALUES(NULL);  
INSERT INTO MedicationInventory VALUES(NULL); 
INSERT INTO MedicationInventory VALUES(NULL); 
INSERT INTO MedicationInventory VALUES(NULL); 
INSERT INTO MedicationInventory VALUES(NULL); 
INSERT INTO MedicationInventory VALUES(NULL); 

--- SUPPLIES INVENTORY ---
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 
INSERT INTO SuppliesInventory VALUES(NULL); 

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

--- DIVISION ---
INSERT INTO Division VALUES (NULL, 'División 1', 'Juline Theobold', 'Trailsway', 'Fuerza Aerea');
INSERT INTO Division VALUES (NULL, 'División 2', 'Ralina Jacklings', 'Tomscot', 'Ejercito');
INSERT INTO Division VALUES (NULL, 'División 3', 'Ashlen Snary', 'Superior', 'Armada');
INSERT INTO Division VALUES (NULL, 'División 4', 'Anne Bernasek', 'Crest Line', 'Ejercito');
INSERT INTO Division VALUES (NULL, 'División 5', 'Cody Carlan', 'Lakeland', 'Armada');
INSERT INTO Division VALUES (NULL, 'División 6', 'Mabelle Cherryman', 'Lakewood Gardens', 'Fuerza Aerea');
INSERT INTO Division VALUES (NULL, 'División 7', 'Godwin Jarrad', 'Northland', 'Fuerza Aerea');
INSERT INTO Division VALUES (NULL, 'División 8', 'Deena Hague', 'Shopko', 'Ejercito');
INSERT INTO Division VALUES (NULL, 'División 9', 'Roddy Richardes', 'Crest Line', 'Fuerza Aerea');
INSERT INTO Division VALUES (NULL, 'División 10', 'Ferdy Peizer', 'Trailsway', 'Armada');

