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

--- POBLAR NO  OK ---

--- MEDICATION TYPE ---
--- idMedicationType -> NUMBER (10) NOT NULL ---
INSERT INTO MedicationType VALUES (99999999999, 'Oral'); 

--- name -> VARCHAR2(50) NOT NULL
INSERT INTO MedicationType VALUES (0000000001, 'Lorem ipsum dolor sit amet, consectetuer adipiscing'); 

--- Ambos son not null
INSERT INTO MedicationType VALUES (NULL, ''); 
INSERT INTO MedicationType VALUES (0000000001, ''); 
INSERT INTO MedicationType VALUES (NULL, 'Lorem'); 

--- Name es único ---
INSERT INTO MedicationType VALUES (1, 'Lorem');
INSERT INTO MedicationType VALUES (1, 'Lorem');


--- MEDICATION INVENTORY ---
--- idMedicationInventory -> NUMBER(10) NOT NULL
INSERT INTO MedicationInventory VALUES (9999999999999);
INSERT INTO MedicationInventory VALUES (NULL);
INSERT INTO MedicationInventory VALUES (99);
INSERT INTO MedicationInventory VALUES (99);

--- SUPPLIES INVENTORY ---
--- idSuppliesInventory	-> NUMBER(10) NOT NULL
INSERT INTO SuppliesInventory VALUES (9999999999999);
INSERT INTO SuppliesInventory VALUES (NULL);
INSERT INTO SuppliesInventory VALUES (99);
INSERT INTO SuppliesInventory VALUES (99);

--- CITY ---
--- idCity -> NUMBER(10) NOT NULL
INSERT INTO City VALUES(99999999999, 'Leticia', 'Amazonas'); 

---	name ->	VARCHAR2(50) NOT NULL 	
INSERT INTO City VALUES(12, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'Amazonas'); 

---	department -> VARCHAR2(50) NOT NULL
INSERT INTO City VALUES(12, 'Amazonas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing'); 

INSERT INTO City VALUES(NULL, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing'); 
INSERT INTO City VALUES(12, '', '');

--- DIVISION ---
--- idDivision ->  NUMBER(10) NOT NULL
INSERT INTO Division VALUES (999999999, 'División 1', 'Juline Theobold', 'Trailsway', 'Fuerza Aerea');
INSERT INTO Division VALUES (NULL, 'División 1', 'Juline Theobold', 'Trailsway', 'Fuerza Aerea');

--- name -> VARCHAR2(250) NOT NULL
INSERT INTO Division VALUES (999, '', 'Juline Theobold', 'Trailsway', 'Fuerza Aerea');

INSERT INTO Division VALUES (999, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium q', 'Juline Theobold', 'Trailsway', 'Fuerza Aerea');

--- commander -> VARCHAR2(100) NOT NULL
INSERT INTO Division VALUES (999, 'División 1', '', 'Trailsway', 'Fuerza Aerea');

INSERT INTO Division VALUES (999, 'División 1', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean mer', 'Trailsway', 'Fuerza Aerea');

--- location -> VARCHAR2(50) NOT NULL 
INSERT INTO Division VALUES (999, 'División 1', 'Juline Theobold', '', 'Fuerza Aerea');

INSERT INTO Division VALUES (999, 'División 1', 'Juline Theobold', 'Lorem ipsum dolor sit amet, consectetuer adipiscin1', 'Fuerza Aerea');

--- militaryForce -> VARCHAR2(50) NOT NULL 
INSERT INTO Division VALUES (999, 'División 1', 'Juline Theobold', 'Trailsway', '');

INSERT INTO Division VALUES (999, 'División 1', 'Juline Theobold', 'Trailsway', 'Lorem ipsum dolor sit amet, consectetuer adipisciner');

--- BRIGADE ---
--- idDivision ->  NUMBER(10) NOT NULL
INSERT INTO Brigade VALUES (999999999, 'División 1', 'Juline Theobold', 'Trailsway', 'Fuerza Aerea');
INSERT INTO Brigade VALUES (NULL, 'División 1', 'Juline Theobold', 'Trailsway', 'Fuerza Aerea');

--- name -> VARCHAR2(250) NOT NULL
INSERT INTO Brigade VALUES (999, '', 'Juline Theobold', 'Trailsway', 'Fuerza Aerea');

INSERT INTO Brigade VALUES (999, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium q', 'Juline Theobold', 'Trailsway', 'Fuerza Aerea');

--- commander -> VARCHAR2(100) NOT NULL
INSERT INTO Brigade VALUES (999, 'División 1', '', 'Trailsway', 'Fuerza Aerea');

INSERT INTO Brigade VALUES (999, 'División 1', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean mer', 'Trailsway', 'Fuerza Aerea');

--- location -> VARCHAR2(50) NOT NULL 
INSERT INTO Brigade VALUES (999, 'División 1', 'Juline Theobold', '', 'Fuerza Aerea');

INSERT INTO Brigade VALUES (999, 'División 1', 'Juline Theobold', 'Lorem ipsum dolor sit amet, consectetuer adipiscin1', 'Fuerza Aerea');

--- militaryForce -> VARCHAR2(50) NOT NULL 
INSERT INTO Brigade VALUES (999, 'División 1', 'Juline Theobold', 'Trailsway', '');

INSERT INTO Brigade VALUES (999, 'División 1', 'Juline Theobold', 'Trailsway', 'Lorem ipsum dolor sit amet, consectetuer adipisciner');
