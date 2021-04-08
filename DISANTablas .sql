/* ------------ TABLAS -------------*/ 
CREATE TABLE Appointment (
    idAppointment	    NUMBER(10) NOT NULL,
    diagnosis          	VARCHAR(500) NOT NULL,
    dateAppointment    	DATE,
	idClinicalHistory	NUMBER(10) NOT NULL, 
	idManagmentPlan		NUMBER(10) NOT NULL,
	idHospital			NUMBER(10) NOT NULL
); 

CREATE TABLE Background (
    idBackground	    NUMBER(10) NOT NULL,
	idClinicalHistory	NUMBER(10) NOT NULL
); 

CREATE TABLE Battalion (
    idBattalion		    NUMBER(10) NOT NULL,
	name				VARCHAR(250) NOT NULL, 	
	commander			VARCHAR(100) NOT NULL, 
	location			VARCHAR(50) NOT NULL, 
	militaryForce		VARCHAR(50) NOT NULL, 
	idBrigade			NUMBER(10) NOT NULL
);

CREATE TABLE Brigade (
    idBrigade		    NUMBER(10) NOT NULL,
	name				VARCHAR(250) NOT NULL, 	
	commander			VARCHAR(100) NOT NULL, 
	location			VARCHAR(50) NOT NULL, 
	militaryForce		VARCHAR(50) NOT NULL, 
	idDivision			NUMBER(10) NOT NULL
);

CREATE TABLE City (
    idCity			    NUMBER(10) NOT NULL,
	name				VARCHAR(10) NOT NULL, 	
	department			VARCHAR(50) NOT NULL
); 

CREATE TABLE ClinicalHistory (
    idClinicalHistory   NUMBER(10) NOT NULL,
	documentType		VARCHAR(2) NOT NULL, 
	documentNumber		NUMBER(10) NOT NULL
); 

CREATE TABLE Disease (
    idDisease			NUMBER(10) NOT NULL,
	name				VARCHAR(50) NOT NULL, 
	description 		VARCHAR(500) NOT NULL,
	idBackground		NUMBER(10) NOT NULL
); 

CREATE TABLE Division (
    idDivision		    NUMBER(10) NOT NULL,
	name				VARCHAR(250) NOT NULL, 	
	commander			VARCHAR(100) NOT NULL, 
	location			VARCHAR(50) NOT NULL, 
	militaryForce		VARCHAR(50) NOT NULL 
);

CREATE TABLE Doctor (
    documentType	    VARCHAR(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL, 	
	militaryForce		VARCHAR(50) NOT NULL
);

CREATE TABLE Hospital (
    idHospital		    NUMBER(10) NOT NULL,
	name				VARCHAR(50) NOT NULL, 	
	bedNumber			NUMBER(10) NOT NULL, 
	UCINumber			NUMBER(10) NOT NULL, 
	idBattalion			NUMBER(10) NOT NULL, 
	idSuppliesInventory	NUMBER(10) NOT NULL, 
	idCity				NUMBER(10) NOT NULL, 
	idMedicationInventory NUMBER(10) NOT NULL
); 

CREATE TABLE Exams (
    idExams			    NUMBER(10) NOT NULL,
	name				VARCHAR(50) NOT NULL, 
	idManagmentPlan		NUMBER(10) NOT NULL
); 

CREATE TABLE Laboratory (
    idLaboratory	    NUMBER(10) NOT NULL,
	name				VARCHAR(50) NOT NULL, 
	idCity				NUMBER(10) NOT NULL,
	idSuppliesInventory	NUMBER(10) NOT NULL
); 

CREATE TABLE ManagementPlan (
    idManagmentPlan	    NUMBER(10) NOT NULL,
	instructions		VARCHAR(500) NOT NULL
); 

CREATE TABLE MedicationComponents (
    idMedicationComponent NUMBER(10) NOT NULL,
	name				VARCHAR(50) NOT NULL, 
	idMedicines			NUMBER(10) NOT NULL
); 

CREATE TABLE MedicationInventory (
    idMedicationInventory NUMBER(10) NOT NULL
); 

CREATE TABLE MedicationType (
    idMedicationType	NUMBER(10) NOT NULL,
	name				VARCHAR(50) NOT NULL
); 

CREATE TABLE Medicines (
    idMedicines			NUMBER(10) NOT NULL,
	commercialName		VARCHAR(50) NOT NULL, 
	presentation		VARCHAR(50) NOT NULL, 
	producer			VARCHAR(50) NOT NULL, 
	idManagmentPlan		NUMBER(10) NOT NULL, 
	idMedicationType	NUMBER(10) NOT NULL, 
	idMedicationInventory NUMBER(10) NOT NULL
); 

CREATE TABLE Nurse (
    documentType	    VARCHAR(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL, 	
	militaryForce		VARCHAR(50) NOT NULL
);

CREATE TABLE Patient (
    documentType	    VARCHAR(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL, 	
	disanId				NUMBER(10) NOT NULL
);

CREATE TABLE Person (
    documentType	    VARCHAR(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL, 	
	name				VARCHAR(50) NOT NULL, 
	lastname			VARCHAR(50) NOT NULL, 
	gender				CHAR(1) NOT NULL, 
	birthDate			DATE NOT NULL, 
	status				CHAR(1) NOT NULL, 
	email				VARCHAR(100) NOT NULL
);

CREATE TABLE Procedures (
    idProcedure			NUMBER(10) NOT NULL,
	name				VARCHAR(50) NOT NULL, 
	dateProcedure		DATE NOT NULL,
	idBackground		NUMBER(10) NOT NULL, 
	idManagmentPlan		NUMBER(10) NOT NULL, 
	idClinicalHistory	NUMBER(10) NOT NULL, 
	idHospital			NUMBER(10) NOT NULL
);

CREATE TABLE Speciality (
    idSpeciality		NUMBER(10) NOT NULL,
	name				VARCHAR(50) NOT NULL
);

CREATE TABLE SuppliesInventory (
    idSuppliesInventory		NUMBER(10) NOT NULL
);

CREATE TABLE Supply (
	idSupply			NUMBER(10) NOT NULL, 
	name				VARCHAR(50) NOT NULL, 
	amount				NUMBER(10) NOT NULL, 
	idSuppliesInventory	NUMBER(10) NOT NULL
); 		

CREATE TABLE ExamsLaboratory (
	idLaboratory		NUMBER(10) NOT NULL, 
	idExam				NUMBER(10) NOT NULL
);

CREATE TABLE ExamsNurse (
	idExam				NUMBER(10) NOT NULL, 
	documentType		VARCHAR(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL
);

CREATE TABLE NurseSpeciality (
	documentType		VARCHAR(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL,
	idSpeciality		NUMBER(10) NOT NULL
);

CREATE TABLE DoctorSpeciality (
	documentType		VARCHAR(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL,
	idSpeciality		NUMBER(10) NOT NULL
);

CREATE TABLE AppointmentDoctor (
	idAppointment		NUMBER(10) NOT NULL,
	documentType		VARCHAR(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL
);

CREATE TABLE AppointmentNurse (
	idAppointment		NUMBER(10) NOT NULL,
	documentType		VARCHAR(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL
);

CREATE TABLE ProcedureNurse (
	documentType		VARCHAR(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL, 
	idProcedure			NUMBER(10) NOT NULL
);

CREATE TABLE ProcedureDoctor (
	documentType		VARCHAR(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL, 
	idProcedure			NUMBER(10) NOT NULL
);


/* ------------ LLAVES PRIMARIAS  ------------- */
ALTER TABLE Appointment ADD CONSTRAINT PK_ID_APPOINTMENT  PRIMARY KEY (idAppointment);
ALTER TABLE Background ADD CONSTRAINT PK_ID_BACKGROUND  PRIMARY KEY (idBackground);
ALTER TABLE Battalion ADD CONSTRAINT PK_ID_BATTALION  PRIMARY KEY (idBattalion);
ALTER TABLE Brigade ADD CONSTRAINT PK_ID_BRIGADE PRIMARY KEY (idBrigade);
ALTER TABLE City ADD CONSTRAINT PK_ID_CITY PRIMARY KEY (idCity);
ALTER TABLE ClinicalHistory ADD CONSTRAINT PK_IDCLINICALHISTORY PRIMARY KEY (idClinicalHistory);
ALTER TABLE Disease ADD CONSTRAINT PK_ID_DISEASE PRIMARY KEY (idDisease);
ALTER TABLE Division ADD CONSTRAINT PK_ID_DIVISION PRIMARY KEY (idDivision); 
ALTER TABLE Doctor ADD CONSTRAINT PK_ID_DOCTOR PRIMARY KEY (documentType, documentNumber); 
ALTER TABLE Hospital ADD CONSTRAINT PK_ID_HOSPITAL PRIMARY KEY (idHospital); 
ALTER TABLE Exams ADD CONSTRAINT PK_ID_EXAMS PRIMARY KEY (idExams); 
ALTER TABLE Laboratory ADD CONSTRAINT PK_ID_LABORATORY PRIMARY KEY (idLaboratory); 
ALTER TABLE ManagementPlan ADD CONSTRAINT PK_ID_MANAGEMENTPLAN PRIMARY KEY (idManagmentPlan); 
ALTER TABLE MedicationComponents ADD CONSTRAINT PK_ID_MEDICATIONCOMPONENTS PRIMARY KEY (idMedicationComponent); 
ALTER TABLE MedicationInventory ADD CONSTRAINT PK_ID_MEDICATIONINVENTORY PRIMARY KEY (idMedicationInventory); 
ALTER TABLE MedicationType ADD CONSTRAINT PK_ID_MEDICATIONTYPE PRIMARY KEY (idMedicationType); 
ALTER TABLE Medicines ADD CONSTRAINT PK_ID_MEDICINES PRIMARY KEY (idMedicines); 
ALTER TABLE Nurse ADD CONSTRAINT PK_ID_NURSE PRIMARY KEY (documentType, documentNumber); 
ALTER TABLE Patient ADD CONSTRAINT PK_ID_PATIENT PRIMARY KEY (documentType, documentNumber); 
ALTER TABLE Person ADD CONSTRAINT PK_ID_PERSON PRIMARY KEY (documentType, documentNumber);
ALTER TABLE Procedures ADD CONSTRAINT PK_ID_PROCEDURE PRIMARY KEY (idProcedure); 
ALTER TABLE Speciality ADD CONSTRAINT PK_ID_SPECIALITY PRIMARY KEY (idSpeciality); 
ALTER TABLE SuppliesInventory ADD CONSTRAINT PK_ID_SUPPLIESINV PRIMARY KEY (idSuppliesInventory); 
ALTER TABLE Supply ADD CONSTRAINT PK_ID_SUPPLY PRIMARY KEY (idSupply); 
ALTER TABLE ExamsLaboratory ADD CONSTRAINT PK_ID_EXAMSLABORATORY PRIMARY KEY (idLaboratory, idExam); 
ALTER TABLE ExamsNurse ADD CONSTRAINT PK_ID_EXAMSNURSE PRIMARY KEY (idExam, documentType, documentNumber); 
ALTER TABLE NurseSpeciality ADD CONSTRAINT PK_ID_NURSESPECIALITY PRIMARY KEY (documentType, documentNumber, idSpeciality); 
ALTER TABLE DoctorSpeciality ADD CONSTRAINT PK_ID_DOCTORSPECIALITY PRIMARY KEY (documentType, documentNumber, idSpeciality); 
ALTER TABLE AppointmentDoctor ADD CONSTRAINT PK_ID_APPOINTMENTDOCTOR PRIMARY KEY (idAppointment, documentType, documentNumber); 
ALTER TABLE AppointmentNurse ADD CONSTRAINT PK_ID_APPOINTMENTNURSE PRIMARY KEY (idAppointment, documentType, documentNumber); 
ALTER TABLE ProcedureNurse ADD CONSTRAINT PK_ID_PROCEDURENURSE PRIMARY KEY (documentType, documentNumber, idProcedure); 
ALTER TABLE ProcedureDoctor ADD CONSTRAINT PK_ID_PROCEDUREDOCTOR PRIMARY KEY (documentType, documentNumber, idProcedure); 


/* ------------ LLAVES UNICAS  ------------- */
ALTER TABLE Battalion ADD CONSTRAINT UQ_NAME_BATALLION UNIQUE (name);
ALTER TABLE Battalion ADD CONSTRAINT UQ_COMMANDER_BATALLION UNIQUE (commander);
ALTER TABLE Brigade ADD CONSTRAINT UQ_NAME_BRIGADE UNIQUE (name);
ALTER TABLE Brigade ADD CONSTRAINT UQ_COMMANDER_BRIGADE UNIQUE (commander);
ALTER TABLE Disease ADD CONSTRAINT UQ_NAME_DISEASE UNIQUE (name);
ALTER TABLE Division ADD CONSTRAINT UQ_NAME_DIVISION UNIQUE (name);
ALTER TABLE Division ADD CONSTRAINT UQ_COMMANDER_DIVISION UNIQUE (commander);
ALTER TABLE Exams ADD CONSTRAINT UQ_NAME_EXAMS UNIQUE (name);
ALTER TABLE MedicationComponents ADD CONSTRAINT UQ_NAME_MEDICATIONCOMPONENTS UNIQUE (name);
ALTER TABLE MedicationType ADD CONSTRAINT UQ_NAME_MEDICATIONTYPE UNIQUE (name);
ALTER TABLE Speciality ADD CONSTRAINT UQ_NAME_SPECIALITY UNIQUE (name);

/* ------------ LLAVES FORANEAS  ------------- */
ALTER TABLE Appointment ADD CONSTRAINT FK_APPOINTMNET_CLINICALH FOREIGN KEY (idClinicalHistory) REFERENCES ClinicalHistory(idClinicalHistory);
ALTER TABLE Appointment ADD CONSTRAINT FK_APPOINTMNET_MANAGEPLAN FOREIGN KEY (idManagmentPlan) REFERENCES ManagementPlan(idManagmentPlan);
ALTER TABLE Appointment ADD CONSTRAINT FK_APPOINTMNET_HOSPITAL FOREIGN KEY (idHospital) REFERENCES Hospital(idHospital);
ALTER TABLE Background ADD CONSTRAINT FK_BACKGROUND_CLINICALH FOREIGN KEY (idClinicalHistory) REFERENCES ClinicalHistory(idClinicalHistory);
ALTER TABLE Battalion ADD CONSTRAINT FK_BATTALION_BRIGADE FOREIGN KEY (idBrigade) REFERENCES Brigade(idBrigade);
ALTER TABLE ClinicalHistory ADD CONSTRAINT FK_CLINICALH_DOCTYPE FOREIGN KEY (documentType, documentNumber) REFERENCES Patient(documentType, documentNumber);
ALTER TABLE Disease ADD CONSTRAINT FK_DISEASE_BACKGROUND FOREIGN KEY (idBackground) REFERENCES Background(idBackground);
ALTER TABLE Doctor ADD CONSTRAINT FK_DOCTOR_DOCTYPE FOREIGN KEY (documentType, documentNumber) REFERENCES Person(documentType, documentNumber);
ALTER TABLE Hospital ADD CONSTRAINT FK_HOSPITAL_BATTALION FOREIGN KEY (idBattalion) REFERENCES Battalion(idBattalion);
ALTER TABLE Hospital ADD CONSTRAINT FK_HOSPITAL_SUPPLIESINV FOREIGN KEY (idSuppliesInventory) REFERENCES SuppliesInventory(idSuppliesInventory);
ALTER TABLE Hospital ADD CONSTRAINT FK_HOSPITAL_CITY FOREIGN KEY (idCity) REFERENCES City(idCity);
ALTER TABLE Hospital ADD CONSTRAINT FK_HOSPITAL_MEDICATIONINV FOREIGN KEY (idMedicationInventory) REFERENCES MedicationInventory(idMedicationInventory);
ALTER TABLE Exams ADD CONSTRAINT FK_EXAMS_MANAGEPLAN FOREIGN KEY (idManagmentPlan) REFERENCES ManagementPlan(idManagmentPlan);
ALTER TABLE Laboratory ADD CONSTRAINT FK_LABORATORY_CITY FOREIGN KEY (idCity) REFERENCES City(idCity);
ALTER TABLE Laboratory ADD CONSTRAINT FK_LABORATORY_SUPPLIESINV FOREIGN KEY (idSuppliesInventory) REFERENCES SuppliesInventory(idSuppliesInventory);
ALTER TABLE MedicationComponents ADD CONSTRAINT FK_MEDICATIONC_MEDICINE FOREIGN KEY (idMedicines) REFERENCES Medicines(idMedicines);
ALTER TABLE Medicines ADD CONSTRAINT FK_MEDICINES_MANAGEPLAN FOREIGN KEY (idManagmentPlan) REFERENCES ManagementPlan(idManagmentPlan);
ALTER TABLE Medicines ADD CONSTRAINT FK_MEDICINES_MEDTYPE FOREIGN KEY (idMedicationType) REFERENCES MedicationType(idMedicationType);
ALTER TABLE Medicines ADD CONSTRAINT FK_MEDICINES_MEDINV FOREIGN KEY (idMedicationInventory) REFERENCES MedicationInventory(idMedicationInventory);
ALTER TABLE Nurse ADD CONSTRAINT FK_NURSE_ID FOREIGN KEY (documentType, documentNumber) REFERENCES Person(documentType, documentNumber);
ALTER TABLE Patient ADD CONSTRAINT FK_PATIENT_DOCTYPE FOREIGN KEY (documentType, documentNumber) REFERENCES Person(documentType, documentNumber); 
ALTER TABLE Procedures ADD CONSTRAINT FK_PROCEDURE_BACKGROUND FOREIGN KEY (idBackground) REFERENCES Background(idBackground); 
ALTER TABLE Procedures ADD CONSTRAINT FK_PROCEDURE_MANAGEPLAN FOREIGN KEY (idManagmentPlan) REFERENCES ManagementPlan(idManagmentPlan); 
ALTER TABLE Procedures ADD CONSTRAINT FK_PROCEDURE_CLINICALH FOREIGN KEY (idClinicalHistory) REFERENCES ClinicalHistory(idClinicalHistory); 
ALTER TABLE Procedures ADD CONSTRAINT FK_PROCEDURE_HOSPITAL FOREIGN KEY (idHospital) REFERENCES Hospital(idHospital); 
ALTER TABLE Supply ADD CONSTRAINT FK_SUPPLY_SUPPLIESINV FOREIGN KEY (idSuppliesInventory) REFERENCES SuppliesInventory(idSuppliesInventory); 
ALTER TABLE ExamsLaboratory ADD CONSTRAINT FK_EXAMSL_LAB FOREIGN KEY (idLaboratory) REFERENCES Laboratory(idLaboratory); 
ALTER TABLE ExamsLaboratory ADD CONSTRAINT FK_EXAMSL_EXAM FOREIGN KEY (idExam) REFERENCES Exams(idExams); 
ALTER TABLE ExamsNurse ADD CONSTRAINT FK_EXAMSN_EXAM FOREIGN KEY (idExam) REFERENCES Exams(idExams); 
ALTER TABLE ExamsNurse ADD CONSTRAINT FK_EXAMSN_NDOCTYPE FOREIGN KEY (documentType, documentNumber) REFERENCES Nurse(documentType, documentNumber); 
ALTER TABLE NurseSpeciality ADD CONSTRAINT FK_NURSESP_NDOCTYPE FOREIGN KEY (documentType, documentNumber) REFERENCES Nurse(documentType, documentNumber);
ALTER TABLE NurseSpeciality ADD CONSTRAINT FK_NURSESP_SPECIALITY FOREIGN KEY (idSpeciality) REFERENCES Speciality(idSpeciality);
ALTER TABLE DoctorSpeciality ADD CONSTRAINT FK_DOCSP_NDOCTYPE FOREIGN KEY (documentType, documentNumber) REFERENCES Nurse(documentType, documentNumber);
ALTER TABLE DoctorSpeciality ADD CONSTRAINT FK_DOCSP_SPECIALITY FOREIGN KEY (idSpeciality) REFERENCES Speciality(idSpeciality);
ALTER TABLE AppointmentDoctor ADD CONSTRAINT FK_APPDOC_IDAPP FOREIGN KEY (idAppointment) REFERENCES Appointment(idAppointment);
ALTER TABLE AppointmentDoctor ADD CONSTRAINT FK_APPDOC_DDOCTYPE FOREIGN KEY (documentType, documentNumber) REFERENCES Doctor(documentType, documentNumber);
ALTER TABLE AppointmentNurse ADD CONSTRAINT FK_APPNUR_IDAPP FOREIGN KEY (idAppointment) REFERENCES Appointment(idAppointment);
ALTER TABLE AppointmentNurse ADD CONSTRAINT FK_APPNUR_NDOCTYPE FOREIGN KEY (documentType, documentNumber) REFERENCES Doctor(documentType, documentNumber);
ALTER TABLE ProcedureDoctor ADD CONSTRAINT FK_PRODOC_DDCOTYPE FOREIGN KEY (documentType, documentNumber) REFERENCES Doctor(documentType, documentNumber);
ALTER TABLE ProcedureDoctor ADD CONSTRAINT FK_PRODOC_IDPROC FOREIGN KEY (idProcedure) REFERENCES Procedures(idProcedure);
ALTER TABLE ProcedureNurse ADD CONSTRAINT FK_PRONUR_NDCOTYPE FOREIGN KEY (documentType, documentNumber) REFERENCES Doctor(documentType, documentNumber);
ALTER TABLE ProcedureNurse ADD CONSTRAINT FK_PRONUR_IDPROC FOREIGN KEY (idProcedure) REFERENCES Procedures(idProcedure);

/* --------------------- XTABLAS ---------------- */
DROP TABLE Appointment CASCADE CONSTRAINTS; 
DROP TABLE Background CASCADE CONSTRAINTS; 
DROP TABLE Battalion CASCADE CONSTRAINTS; 
DROP TABLE Brigade CASCADE CONSTRAINTS; 
DROP TABLE City CASCADE CONSTRAINTS; 
DROP TABLE ClinicalHistory CASCADE CONSTRAINTS; 
DROP TABLE Disease CASCADE CONSTRAINTS; 
DROP TABLE Division CASCADE CONSTRAINTS; 
DROP TABLE Doctor CASCADE CONSTRAINTS; 
DROP TABLE Hospital CASCADE CONSTRAINTS; 
DROP TABLE Exams CASCADE CONSTRAINTS; 
DROP TABLE Laboratory CASCADE CONSTRAINTS; 
DROP TABLE ManagementPlan CASCADE CONSTRAINTS; 
DROP TABLE MedicationComponents CASCADE CONSTRAINTS; 
DROP TABLE MedicationInventory CASCADE CONSTRAINTS; 
DROP TABLE MedicationType CASCADE CONSTRAINTS; 
DROP TABLE Medicines CASCADE CONSTRAINTS; 
DROP TABLE Nurse CASCADE CONSTRAINTS; 
DROP TABLE Patient CASCADE CONSTRAINTS; 
DROP TABLE Person CASCADE CONSTRAINTS; 
DROP TABLE Procedures CASCADE CONSTRAINTS; 
DROP TABLE Speciality CASCADE CONSTRAINTS; 
DROP TABLE SuppliesInventory CASCADE CONSTRAINTS; 
DROP TABLE Supply CASCADE CONSTRAINTS; 
DROP TABLE ExamsLaboratory CASCADE CONSTRAINTS; 
DROP TABLE ExamsNurse CASCADE CONSTRAINTS; 
DROP TABLE NurseSpeciality CASCADE CONSTRAINTS; 
DROP TABLE DoctorSpeciality CASCADE CONSTRAINTS; 
DROP TABLE AppointmentDoctor CASCADE CONSTRAINTS; 
DROP TABLE AppointmentNurse CASCADE CONSTRAINTS; 
DROP TABLE ProcedureNurse CASCADE CONSTRAINTS; 
DROP TABLE ProcedureDoctor CASCADE CONSTRAINTS; 

/* --------------------- XPOBLAR ----------------  */ 
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

/* --------------------- POBLAROK ---------------- */ 

/* ---- Appointment ---- */
INSERT INTO Appointment VALUES (0000000001, 'Atypical squamous cells of undetermined significance on cytologic smear of anus (ASC-US)', TO_DATE('7/22/2022', 'MM/DD/YYYY'));
INSERT INTO Appointment VALUES (0000000002, 'Machinery accident on board other powered watercraft, initial encounter',TO_DATE( '9/22/2021', 'MM/DD/YYYY'));
INSERT INTO Appointment VALUES (0000000003, 'Yellow fever', TO_DATE('6/13/2021', 'MM/DD/YYYY'));
INSERT INTO Appointment VALUES (0000000004, 'Drug-induced folate deficiency anemia', TO_DATE('12/6/2022', 'MM/DD/YYYY'));
INSERT INTO Appointment VALUES (0000000005, 'Absolute glaucoma, bilateral', TO_DATE('6/17/2024', 'MM/DD/YYYY'));
INSERT INTO Appointment VALUES (0000000006, 'Laceration with foreign body of unspecified thumb with damage to nail, subsequent encounter', TO_DATE('11/3/2024', 'MM/DD/YYYY'));
INSERT INTO Appointment VALUES (0000000007, 'Open bite of right thumb without damage to nail, subsequent encounter', TO_DATE('11/10/2022', 'MM/DD/YYYY'));
INSERT INTO Appointment VALUES (0000000008, 'Nondisplaced avulsion fracture of tuberosity of unspecified calcaneus, initial encounter for open fracture', TO_DATE('6/6/2023', 'MM/DD/YYYY'));
INSERT INTO Appointment VALUES (0000000009, 'Burn of first degree of right palm', TO_DATE('10/11/2021', 'MM/DD/YYYY'));
INSERT INTO Appointment VALUES (0000000010, 'Crushing injury of right hand, initial encounter', TO_DATE('11/20/2022', 'MM/DD/YYYY'));

/* ---- Background ---- */
INSERT INTO Backgound VALUES (0000000001); 
INSERT INTO Backgound VALUES (0000000002); 
INSERT INTO Backgound VALUES (0000000003); 
INSERT INTO Backgound VALUES (0000000004); 
INSERT INTO Backgound VALUES (0000000005); 
INSERT INTO Backgound VALUES (0000000006); 
INSERT INTO Backgound VALUES (0000000007); 
INSERT INTO Backgound VALUES (0000000008); 
INSERT INTO Backgound VALUES (0000000009); 
INSERT INTO Backgound VALUES (0000000010); 

/* ---- Battalion ---- */
INSERT INTO Battalion VALUES (0000000001, 'Carroll-Quigley', 'Noe Mellows', 'Tomscot', 'Armada');
INSERT INTO Battalion VALUES (0000000002, 'Willms-Luettgen', 'Kathie Olwen', 'Vermont', 'Armada');
INSERT INTO Battalion VALUES (0000000003, 'DuBuque LLC', 'Emlynn Wisher', 'Redwing', 'Ejercito');
INSERT INTO Battalion VALUES (0000000004, 'Corwin-Bode', 'Dulcea Blewmen', 'Messerschmidt', 'Ejercito');
INSERT INTO Battalion VALUES (0000000005, 'Hickle Inc', 'Wayne McKellar', 'Monument', 'Armada');
INSERT INTO Battalion VALUES (0000000006, 'Kutch, Rosenbaum and Leuschke', 'Reeba Abotson', 'Quincy', 'Fuerza Aerea');
INSERT INTO Battalion VALUES (0000000007, 'Mosciski Group', 'Maxim Pond', 'Arizona', 'Ejercito');
INSERT INTO Battalion VALUES (0000000008, 'Heaney, Crooks and Lakin', 'Orrin Lonie', 'Marquette', 'Ejercito');
INSERT INTO Battalion VALUES (0000000009, 'Cremin, Wolff and Wuckert', 'Michael Matiewe', 'Forest', 'Armada');
INSERT INTO Battalion VALUES (0000000010, 'Bechtelar-Mann', 'Suzi Clue', 'Oxford', 'Fuerza Aerea');

/* ---- Brigade ---- */ 
INSERT INTO Brigade VALUES (0000000001, 'Rolfson, Langosh and Schuppe', 'Averyl Stinson', 'Grover', 'Armada');
INSERT INTO Brigade VALUES (0000000002, 'Crooks-Rippin', 'Haven Amberg', 'Loftsgordon', 'Fuerza Aerea');
INSERT INTO Brigade VALUES (0000000003, 'Bergstrom and Sons', 'Althea Laetham', 'Dawn', 'Ejercito');
INSERT INTO Brigade VALUES (0000000004, 'Von-Aufderhar', 'Cyrus Langhor', 'Cody', 'Ejercito');
INSERT INTO Brigade VALUES (0000000005, 'Zieme-Leannon', 'Edan Volett', 'Blue Bill Park', 'Ejercito');
INSERT INTO Brigade VALUES (0000000006, 'Gutmann-Hamill', 'Marthena Nortcliffe', 'Forest', 'Fuerza Aerea');
INSERT INTO Brigade VALUES (0000000007, 'Leffler and Sons', 'Brynna Nipper', 'Hoepker', 'Armada');
INSERT INTO Brigade VALUES (0000000008, 'Swaniawski, Ernser and Huel', 'Marchelle Clunie', 'Cody', 'Fuerza Aerea');
INSERT INTO Brigade VALUES (0000000009, 'Roob, Boehm and Langosh', 'Kaela Mechem', 'Vidon', 'Armada');
INSERT INTO Brigade VALUES (0000000010, 'Gaylord-Cormier', 'Sabine Lampitt', 'Ruskin', 'Fuerza Aerea');

/* ---- City ---- COMPLETA */
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

/* ---- ClinicalHistory ---- */
INSERT INTO ClinicalHistory VALUES (0000000001); 
INSERT INTO ClinicalHistory VALUES (0000000002); 
INSERT INTO ClinicalHistory VALUES (0000000003); 
INSERT INTO ClinicalHistory VALUES (0000000004); 
INSERT INTO ClinicalHistory VALUES (0000000005); 
INSERT INTO ClinicalHistory VALUES (0000000006); 
INSERT INTO ClinicalHistory VALUES (0000000007); 
INSERT INTO ClinicalHistory VALUES (0000000008); 
INSERT INTO ClinicalHistory VALUES (0000000009); 
INSERT INTO ClinicalHistory VALUES (0000000010); 

/* ---- Disease ---- */
INSERT INTO Disease VALUES (0000000001, 'Pteridaceae', 'Rheumatoid polyneuropathy with rheumatoid arthritis of right elbow');
INSERT INTO Disease VALUES (0000000002, 'Campanulaceae', 'Toxic effect of 2-Propanol, intentional self-harm, sequela');
INSERT INTO Disease VALUES (0000000003, 'Asteraceae', 'Benign neoplasm of scapula and long bones of upper limb');
INSERT INTO Disease VALUES (0000000004, 'Cyperaceae', 'Benign mammary dysplasia');
INSERT INTO Disease VALUES (0000000005, 'Hypnaceae', 'Nondisplaced fracture of capitate [os magnum] bone, right wrist, initial encounter for open fracture');
INSERT INTO Disease VALUES (0000000006, 'Rosaceae', 'Poisoning by unspecified drugs, medicaments and biological substances, accidental (unintentional), initial encounter');
INSERT INTO Disease VALUES (0000000007, 'Scrophulariaceae', 'Crushing injury of unspecified foot, sequela');
INSERT INTO Disease VALUES (0000000008, 'Sarraceniaceae', 'Infection and inflammatory reaction due to cardiac valve prosthesis, subsequent encounter');
INSERT INTO Disease VALUES (0000000009, 'Araceae', 'Driver of heavy transport vehicle injured in collision with pedestrian or animal in traffic accident, subsequent encounter');
INSERT INTO Disease VALUES (0000000010, 'Liliaceae', 'Other fracture of left patella, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with routine healing');

/* ---- Division ---- */
INSERT INTO Division VALUES (0000000001, 'Nicolas and Sons', 'Juline Theobold', 'Trailsway', 'Fuerza Aerea');
INSERT INTO Division VALUES (0000000002, 'Cormier, Pfannerstill and Trantow', 'Ralina Jacklings', 'Tomscot', 'Ejercito');
INSERT INTO Division VALUES (0000000003, 'Kris, Braun and Maggio', 'Ashlen Snary', 'Superior', 'Armada');
INSERT INTO Division VALUES (0000000004, 'Williamson-Mante', 'Anne Bernasek', 'Crest Line', 'Ejercito');
INSERT INTO Division VALUES (0000000005, 'Abshire and Sons', 'Cody Carlan', 'Lakeland', 'Armada');
INSERT INTO Division VALUES (0000000006, 'Grady-Kreiger', 'Mabelle Cherryman', 'Lakewood Gardens', 'Fuerza Aerea');
INSERT INTO Division VALUES (0000000007, 'VonRueden-Batz', 'Godwin Jarrad', 'Northland', 'Fuerza Aerea');
INSERT INTO Division VALUES (0000000008, 'Hessel Inc', 'Deena Hague', 'Shopko', 'Ejercito');
INSERT INTO Division VALUES (0000000009, 'Windler, Dibbert and Abshire', 'Roddy Richardes', 'Crest Line', 'Fuerza Aerea');
INSERT INTO Division VALUES (0000000010, 'VonRueden, Hyatt and Crist', 'Ferdy Peizer', 'Trailsway', 'Armada');

/* ---- Doctor ---- */
INSERT INTO Doctor VALUES('Fuerza Aerea'); 
INSERT INTO Doctor VALUES('Armada'); 
INSERT INTO Doctor VALUES('Ejercito'); 
INSERT INTO Doctor VALUES('Fuerza Aerea'); 
INSERT INTO Doctor VALUES('Ejercito'); 
INSERT INTO Doctor VALUES('Fuerza Aerea'); 
INSERT INTO Doctor VALUES('Armada'); 
INSERT INTO Doctor VALUES('Fuerza Aerea'); 
INSERT INTO Doctor VALUES('Armada'); 
INSERT INTO Doctor VALUES('Ejercito'); 
  
/* ---- Hospital ---- */
INSERT INTO Hospital VALUES (0000000001, 'Lakin, Borer and Collier', 3558, 48);
INSERT INTO Hospital VALUES (0000000002, 'Hane Group', 4646, 64);
INSERT INTO Hospital VALUES (0000000003, 'Hahn and Sons', 3409, 68);
INSERT INTO Hospital VALUES (0000000004, 'Prosacco and Sons', 2717, 58);
INSERT INTO Hospital VALUES (0000000005, 'Corwin and Sons', 731, 74);
INSERT INTO Hospital VALUES (0000000006, 'Volkman Group', 2712, 25);
INSERT INTO Hospital VALUES (0000000007, 'Mayert, Rowe and Mosciski', 3277, 65);
INSERT INTO Hospital VALUES (0000000008, 'Tremblay Group', 2457, 84);
INSERT INTO Hospital VALUES (0000000009, 'Murray-Watsica', 2465, 77);
INSERT INTO Hospital VALUES (0000000010, 'Swaniawski-Kuhic', 1153, 34);
 
/* ---- Exams ---- */
INSERT INTO Exams VALUES (0000000001, 'Extirpation of Matter from Right Carotid Body, Perc Approach');
INSERT INTO Exams VALUES (0000000002, 'Bypass R Ureter to Bladder with Nonaut Sub, Open Approach');
INSERT INTO Exams VALUES (0000000003, 'Change Other Device in Neck, External Approach');
INSERT INTO Exams VALUES (0000000004, 'Revision of Radioact Elem in Up Back, Perc Endo Approach');
INSERT INTO Exams VALUES (0000000005, 'Revision of Infusion Dev in Retroperitoneum, Perc Approach');
INSERT INTO Exams VALUES (0000000006, 'Revision of Synth Sub in R Pleural Cav, Perc Endo Approach');
INSERT INTO Exams VALUES (0000000007, 'Replacement of Aortic Valve with Synth Sub, Perc Approach');
INSERT INTO Exams VALUES (0000000008, 'Dilate R Com Carotid, Bifurc, w 4 Drug-elut, Perc Endo');
INSERT INTO Exams VALUES (0000000009, 'Removal of Bandage on Left Lower Leg');
INSERT INTO Exams VALUES (0000000010, 'Replacement of L Up Femur with Autol Sub, Perc Approach');
  
/* ---- Laboratory ---- */
INSERT INTO Laboratory VALUES (0000000001, 'Kshlerin-Hilll');
INSERT INTO Laboratory VALUES (0000000002, 'Lang-Hyatt');
INSERT INTO Laboratory VALUES (0000000003, 'Reichert and Sons');
INSERT INTO Laboratory VALUES (0000000004, 'Beer, Jast and Heidenreich');
INSERT INTO Laboratory VALUES (0000000005, 'Metz-Beier');
INSERT INTO Laboratory VALUES (0000000006, 'Runolfsson Inc');
INSERT INTO Laboratory VALUES (0000000007, 'Goodwin-Batz');
INSERT INTO Laboratory VALUES (0000000008, 'Schamberger, Schuppe and McDermott');
INSERT INTO Laboratory VALUES (0000000009, 'Ankunding, Bins and Dach');
INSERT INTO Laboratory VALUES (0000000010, 'Thompson-Wiza');
 
/* ---- ManagementPlan ---- COMPLETA */
INSERT INTO ManagementPlan VALUES (0000000001, 'Erythema nodosum with hypersensitivity reaction in tuberculosis, bacteriological or histological examination unknown (at present)');
INSERT INTO ManagementPlan VALUES (0000000002, 'Other venous complications of pregnancy and the puerperium, unspecified as to episode of care or not applicable');
INSERT INTO ManagementPlan VALUES (0000000003, 'Multiple myeloma, in relapse');
INSERT INTO ManagementPlan VALUES (0000000004, 'Other forms of progressive coccidioidomycosis');
INSERT INTO ManagementPlan VALUES (0000000005, 'Pulmonary complications of anesthesia or other sedation in labor and delivery, antepartum condition or complication');
INSERT INTO ManagementPlan VALUES (0000000006, 'Malignant neoplasm of other specified sites of large intestine');
INSERT INTO ManagementPlan VALUES (0000000007, 'Sarcoidosis');
INSERT INTO ManagementPlan VALUES (0000000008, 'Roseola infantum, unspecified');
INSERT INTO ManagementPlan VALUES (0000000009, 'Dysmenorrhea');
INSERT INTO ManagementPlan VALUES (0000000010, 'Retroverted and incarcerated gravid uterus, postpartum condition or complication');
 
/* ---- MedicationComponents ---- */
INSERT INTO MedicationComponents VALUES (0000000001, 'JNH Magic BB');
INSERT INTO MedicationComponents VALUES (0000000002, 'Mirtazapine');
INSERT INTO MedicationComponents VALUES (0000000003, 'Promethazine Hydrochloride');
INSERT INTO MedicationComponents VALUES (0000000004, 'Sunmark no drip');
INSERT INTO MedicationComponents VALUES (0000000005, 'Polyethylene Glycol 3350, NF Powder for Solution, Laxative');
INSERT INTO MedicationComponents VALUES (0000000006, 'METHADONE HYDROCHLORIDE');
INSERT INTO MedicationComponents VALUES (0000000007, 'Nadolol');
INSERT INTO MedicationComponents VALUES (0000000008, 'fexofenadine hydrochloride');
INSERT INTO MedicationComponents VALUES (0000000009, 'Hydrocortisone anti-itch plus');
INSERT INTO MedicationComponents VALUES (0000000010, 'Myrbetriq'); 
 
/* ---- MedicationInventory ---- COMPLETA */
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
 
/* ---- MedicationType ---- COMPLETA */
INSERT INTO MedicationType VALUES (0000000001, 'Oral'); 
INSERT INTO MedicationType VALUES (0000000002, 'Sublingual');  
INSERT INTO MedicationType VALUES (0000000003, 'Topica'); 
INSERT INTO MedicationType VALUES (0000000004, 'Transdermica'); 
INSERT INTO MedicationType VALUES (0000000005, 'Oftalmologica'); 
INSERT INTO MedicationType VALUES (0000000006, 'Inhalatoria'); 
INSERT INTO MedicationType VALUES (0000000007, 'Rectal'); 
INSERT INTO MedicationType VALUES (0000000008, 'Vaginal'); 
INSERT INTO MedicationType VALUES (0000000009, 'Intravenosa'); 
INSERT INTO MedicationType VALUES (0000000010, 'Intramuscular'); 
INSERT INTO MedicationType VALUES (0000000011, 'Subcutanea'); 
  
/* ---- Medicines ---- */
INSERT INTO Medicines VALUES (0000000001, 'bisoprolol fumarate and hydrochlorothiazide', 'Ziac', 'Teva Women''s Health, Inc.');
INSERT INTO Medicines VALUES (0000000002, 'BENZOYL PEROXIDE', 'Benzoyl peroxide short contact', 'Metacon Labs');
INSERT INTO Medicines VALUES (0000000003, 'TITANIUM DIOXIDE, ZINC OXIDE', 'Anew Solar Advance', 'Avon Products, Inc.');
INSERT INTO Medicines VALUES (0000000004, 'fosamprenavir calcium', 'LEXIVA', 'REMEDYREPACK INC.');
INSERT INTO Medicines VALUES (0000000005, 'Loperamide HCl', 'Anti-Diarrheal', 'GREAT LAKES WHOLESALE, MARKETING, & SALES, INC.');
INSERT INTO Medicines VALUES (0000000006, 'topiramate', 'Topamax', 'Rebel Distributors Corp');
INSERT INTO Medicines VALUES (0000000007, 'isopropyl alcohol', 'LENS CLEANER', 'Yuyao Jessie Commodity Co.,Ltd.');
INSERT INTO Medicines VALUES (0000000008, 'Atropa belladonna, Euphrasia stricta and Calcium sulfide', 'Irritated Eye Relief', 'Similasan Corporation');
INSERT INTO Medicines VALUES (0000000009, 'Dextromethorphan Hydrobromide, Guaifenesin, and Phenylephrine Hydrochloride', 'Giltuss', 'Gil Pharmaceutical Corp');
INSERT INTO Medicines VALUES (0000000010, 'Fluoxetine Hydrochloride', 'Fluoxetine', 'Rebel Distributors Corp');
 
/* ---- Nurse ---- */
INSERT INTO Nurse VALUES ('Ejercito');
INSERT INTO Nurse VALUES ('Armada');
INSERT INTO Nurse VALUES ('Ejercito');
INSERT INTO Nurse VALUES ('Armada');
INSERT INTO Nurse VALUES ('Fuerza Aerea');
INSERT INTO Nurse VALUES ('Fuerza Aerea');
INSERT INTO Nurse VALUES ('Ejercito');
INSERT INTO Nurse VALUES ('Fuerza Aerea');
INSERT INTO Nurse VALUES ('Armada');
INSERT INTO Nurse VALUES ('Fuerza Aerea');
 
/* ---- Patient ---- */
INSERT INTO Patient VALUES (6315071707);
INSERT INTO Patient VALUES (6749422173);
INSERT INTO Patient VALUES (9442073044);
INSERT INTO Patient VALUES (1626966358);
INSERT INTO Patient VALUES (3879959498);
INSERT INTO Patient VALUES (444932512);
INSERT INTO Patient VALUES (401589944);
INSERT INTO Patient VALUES (6289545047);
INSERT INTO Patient VALUES (6624151277);
INSERT INTO Patient VALUES (7201837227);
 
/* ---- Person ---- COMPLETA */
INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov');
INSERT INTO Person VALUES ('CC', 9254619331, 'Barbaraanne', 'Ceyssen', 'F', TO_DATE('09/06/2002', 'MM/DD/YYYY'), 'A', 'bceyssen1@photobucket.com');
INSERT INTO Person VALUES ('CE', 1786662041, 'Alard', 'Blackburne', 'M', TO_DATE('05/21/2018', 'MM/DD/YYYY'), 'I', 'ablackburne2@usa.gov');
INSERT INTO Person VALUES ('CC', 2984806463, 'Sacha', 'Bilbrook', 'F', TO_DATE('01/20/1969', 'MM/DD/YYYY'), 'I', 'sbilbrook3@skyrock.com');
INSERT INTO Person VALUES ('TI', 1773190621, 'Sallie', 'Hearnshaw', 'F',TO_DATE( '11/22/1957', 'MM/DD/YYYY'), 'I', 'shearnshaw4@bandcamp.com');
INSERT INTO Person VALUES ('CC', 2878196529, 'Dotti', 'Tadman', 'F',TO_DATE ('01/17/1974', 'MM/DD/YYYY'), 'I', 'dtadman5@moonfruit.com');
INSERT INTO Person VALUES ('TI', 9115387117, 'Wilden', 'McLuckie', 'F', TO_DATE('09/20/1992', 'MM/DD/YYYY'), 'A', 'wmcluckie6@dion.ne.jp');
INSERT INTO Person VALUES ('CC', 7049570787, 'Antonino', 'Bletsoe', 'M',TO_DATE( '4/7/1957', 'MM/DD/YYYY'), 'A', 'abletsoe7@ed.gov');
INSERT INTO Person VALUES ('TI', 793398263, 'Arri', 'Woolerton', 'M',TO_DATE ('3/1/1992', 'MM/DD/YYYY'), 'A', 'awoolerton8@theatlantic.com');
INSERT INTO Person VALUES ('TI', 4252609306, 'Teodoor', 'Ferschke', 'F',TO_DATE ('4/13/2010', 'MM/DD/YYYY'), 'I', 'tferschke9@cdc.gov');
INSERT INTO Person VALUES ('CE', 4779118851, 'Janie', 'Paszak', 'F',TO_DATE('4/3/1955', 'MM/DD/YYYY'), 'I', 'jpaszaka@chicagotribune.com');
INSERT INTO Person VALUES ('CC', 4563832319, 'Electra', 'de Marco', 'M', TO_DATE('8/30/2017', 'MM/DD/YYYY'), 'I', 'edemarcob@etsy.com');
  
/* ---- Procedures ---- */
INSERT INTO Procedures VALUES (0000000001, 'Fluoroscopy of Right Hand/Finger Joint using H Osm Contrast', TO_DATE('7/1/2024', 'MM/DD/YYYY'));
INSERT INTO Procedures VALUES (0000000002, 'Excision of Ileocecal Valve, Via Opening', TO_DATE('6/5/2024', 'MM/DD/YYYY'));
INSERT INTO Procedures VALUES (0000000003, 'Extirpation of Matter from Cranial Cavity, Open Approach',TO_DATE( '8/27/2021', 'MM/DD/YYYY'));
INSERT INTO Procedures VALUES (0000000004, 'Replace of L Metatarsophal Jt with Nonaut Sub, Open Approach', TO_DATE('10/30/2021', 'MM/DD/YYYY'));
INSERT INTO Procedures VALUES (0000000005, 'Drainage of Ileum with Drainage Device, Via Opening', TO_DATE('5/15/2022', 'MM/DD/YYYY'));
INSERT INTO Procedures VALUES (0000000006, 'Bypass L Com Iliac Art to B Femor A w Autol Art, Perc Endo',TO_DATE( '2/20/2022', 'MM/DD/YYYY'));
INSERT INTO Procedures VALUES (0000000007, 'Destruction of Left Tibia, Open Approach', TO_DATE('12/25/2022', 'MM/DD/YYYY'));
INSERT INTO Procedures VALUES (0000000008, 'Bypass Cereb Vent to Periton Cav w Synth Sub, Perc',TO_DATE( '5/26/2024', 'MM/DD/YYYY'));
INSERT INTO Procedures VALUES (0000000009, 'Release Esophagogastric Junction, Percutaneous Approach',TO_DATE( '5/2/2024', 'MM/DD/YYYY'));
INSERT INTO Procedures VALUES (0000000010, 'Revise of Infusion Dev in R Temporomandib Jt, Perc Approach', TO_DATE('8/22/2022', 'MM/DD/YYYY'));
 
/* ---- Speciality ---- COMPLETA */
INSERT INTO Speciality (id, name) values (0000000001, 'Hematologia');
INSERT INTO Speciality (id, name) values (0000000002, 'Endocrinologia');
INSERT INTO Speciality (id, name) values (0000000003, 'Medicina Interna');
INSERT INTO Speciality (id, name) values (0000000004, 'Cirugia General');
INSERT INTO Speciality (id, name) values (0000000005, 'Pediatria');
INSERT INTO Speciality (id, name) values (0000000006, 'Gastroenterologia');
INSERT INTO Speciality (id, name) values (0000000007, 'Infectologia');
INSERT INTO Speciality (id, name) values (0000000008, 'Neumologia');
INSERT INTO Speciality (id, name) values (0000000009, 'Dermatologia');
INSERT INTO Speciality (id, name) values (0000000010, 'Neurocirugia');
 
/* ---- SuppliesInventory ---- COMPLETA */
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
 
/* ---- Supply ---- */
INSERT INTO Speciality values (000000001, 'Polygonaceae', 7408015);
INSERT INTO Speciality values (000000002, 'Poaceae', 7944377);
INSERT INTO Speciality values (000000003, 'Boraginaceae', 6451981);
INSERT INTO Speciality values (000000004, 'Chenopodiaceae', 5253558);
INSERT INTO Speciality values (000000005, 'Arthopyreniaceae', 1665634);
INSERT INTO Speciality values (000000006, 'Ranunculaceae', 2610285);
INSERT INTO Speciality values (000000007, 'Brassicaceae', 6187305);
INSERT INTO Speciality values (000000008, 'Orchidaceae', 4128281);
INSERT INTO Speciality values (000000009, 'Rubiaceae', 5920899);
INSERT INTO Speciality values (000000010, 'Caryophyllaceae', 6668042);
 
/* ------------- DISPARADORES ------------- */ 


/* Si no se indica el identificador de la cita, este se debe generar de forma automatica */
CREATE OR REPLACE TRIGGER Ad_Appoint_Id
	BEFORE INSERT 
	ON Appointment
	FOR EACH ROW 
BEGIN
	IF :new.idAppointment IS NULL OR :new.idAppointment < 0
		THEN :new.idAppointment := Ad_noAppoit.NEXTVAL;
	END IF;
END;
/

/* La cita solo puede ser en una fecha igual o posterior a la actual */
CREATE OR REPLACE TRIGGER Ad_Appoint_Date
    BEFORE DELETE 
    ON Appointment 
    FOR EACH ROW 
BEGIN 
    IF  SYSDATE < :new.dateAppointment   THEN 
        RAISE_APPLICATION_ERROR(-20005,'No se puede generar una cita en una fecha anterior a la actual');
    END IF;
END;
/

/* Si no se indica el identificador de los antecedentes, este se debe generar de forma automatica */
CREATE OR REPLACE TRIGGER Ad_Backgrnd_Id
	BEFORE INSERT 
	ON Background
	FOR EACH ROW 
BEGIN
	IF :new.idBackground IS NULL OR :new.idBackground < 0
		THEN :new.idAppointment := Ad_noBackgrnd.NEXTVAL;
	END IF;
END;
/


/* Si no se indica el identificador del batallon, este se debe generar de forma automatica */
CREATE OR REPLACE TRIGGER Ad_Backgrnd_Id
	BEFORE INSERT 
	ON Background
	FOR EACH ROW 
BEGIN
	IF :new.idBattalion IS NULL OR :new.idBattalion < 0
		THEN :new.idBattalion := Ad_noBattalion.NEXTVAL;
	END IF;
END;
/

/* Si no se indica el identificador de la brigada, este se debe generar de forma automatica */
CREATE OR REPLACE TRIGGER Ad_Brigade_Id
	BEFORE INSERT 
	ON Brigade
	FOR EACH ROW 
BEGIN
	IF :new.idBrigade IS NULL OR :new.idBrigade < 0
		THEN :new.idBrigade := Ad_noBrigade.NEXTVAL;
	END IF;
END;
/

/* Si no se indica el identificador de la ciudad, este se debe generar de forma automatica */
CREATE OR REPLACE TRIGGER Ad_City_Id
	BEFORE INSERT 
	ON City 
	FOR EACH ROW 
BEGIN
	IF :new.idCity IS NULL OR :new.idCity < 0
		THEN :new.idCity := Ad_noCity.NEXTVAL;
	END IF;
END;
/

/* Si no se indica el identificador de la historia clinica, este se debe generar de forma automatica */
CREATE OR REPLACE TRIGGER Ad_CliniHstry_Id
	BEFORE INSERT 
	ON ClinicalHistory 
	FOR EACH ROW 
BEGIN
	IF :new.idClinicalHistory IS NULL OR :new.idClinicalHistory < 0
		THEN :new.idCity := Ad_noClinHstry.NEXTVAL;
	END IF;
END;
/

/* Si no se indica el identificador de la enfermedad, este se debe generar de forma automatica */
CREATE OR REPLACE TRIGGER Ad_Disease_Id
	BEFORE INSERT 
	ON Disease 
	FOR EACH ROW 
BEGIN
	IF :new.idDisease IS NULL OR :new.idDisease < 0
		THEN :new.idCity := Ad_noDisease.NEXTVAL;
	END IF;
END;
/


/* Si no se indica el identificador de la division, este se debe generar de forma automatica */
CREATE OR REPLACE TRIGGER Ad_Division_Id
	BEFORE INSERT 
	ON Division 
	FOR EACH ROW 
BEGIN
	IF :new.idDivision IS NULL OR :new.idDivision < 0
		THEN :new.idCity := Ad_noDivision.NEXTVAL;
	END IF;
END;
/

/* Si no se indica el identificador del hospital, este se debe generar de forma automatica */
CREATE OR REPLACE TRIGGER Ad_Hospital_Id
	BEFORE INSERT 
	ON Hospital 
	FOR EACH ROW 
BEGIN
	IF :new.idHospital IS NULL OR :new.idHospital < 0
		THEN :new.idHospital := Ad_noHospital.NEXTVAL;
	END IF;
END;
/

/* Si el número de camillas ingresado es negativo, se asume que no hay disponibles */
CREATE OR REPLACE TRIGGER Ad_Hospital_bedNum
	BEFORE INSERT 
	ON Hospital 
	FOR EACH ROW 
BEGIN
	IF :new.bedNumber < 0
		THEN :new.bedNumber := 0;
	END IF;
END;
/

/* Si el número de UCI ingresado es negativo, se asume que no hay disponibles */
CREATE OR REPLACE TRIGGER Ad_Hospital_UCINum
	BEFORE INSERT 
	ON Hospital 
	FOR EACH ROW 
BEGIN
	IF :new.UCINumber < 0
		THEN :new.UCINumber := 0;
	END IF;
END;
/

/* Si no se indica el identificador del examen, este se debe generar de forma automatica */
CREATE OR REPLACE TRIGGER Ad_Exams_Id
	BEFORE INSERT 
	ON Exams
	FOR EACH ROW 
BEGIN
	IF :new.idExam IS NULL OR :new.idExam < 0
		THEN :new.idExam := Ad_noExams.NEXTVAL;
	END IF;
END;
/

/* Si no se indica el identificador del laboratorio, este se debe generar de forma automatica */
CREATE OR REPLACE TRIGGER Ad_Lab_Id
	BEFORE INSERT 
	ON Laboratory
	FOR EACH ROW 
BEGIN
	IF :new.idLaboratory IS NULL OR :new.idLaboratory < 0
		THEN :new.idExam := Ad_noLab.NEXTVAL;
	END IF;
END;
/




/* ------------- TUPLAS ------------- */ 
ALTER TABLE Battalion 
	ADD CONSTRAINT CK_BATTALION_MILFORCE 
	CHECK (militaryForce IN ('Fuerza Aerea', 'Armada', 'Ejercito'));
	
ALTER TABLE Brigade 
	ADD CONSTRAINT CK_BRIGADE_MILFORCE
	CHECK (militaryForce IN ('Fuerza Aerea', 'Armada', 'Ejercito'));
	
ALTER TABLE Division 
	ADD CONSTRAINT CK_DIVISION_MILFORCE
	CHECK (militaryForce IN ('Fuerza Aerea', 'Armada', 'Ejercito'));	
	
ALTER TABLE Doctor 
	ADD CONSTRAINT CK_DOCTOR_MILFORCE
	CHECK (militaryForce IN ('Fuerza Aerea', 'Armada', 'Ejercito'));	


/* ------------- SECUENCIAS ------------- */ 
CREATE SEQUENCE Ad_noAppoit
START WITH 1
INCREMENT BY 1
MINVALUE 0
NOMAXVALUE 999999999
NOCYCLE;

CREATE SEQUENCE Ad_noBackgrnd
START WITH 1
INCREMENT BY 1
MINVALUE 0
NOMAXVALUE 999999999
NOCYCLE;

CREATE SEQUENCE Ad_noBattalion
START WITH 1
INCREMENT BY 1
MINVALUE 0
NOMAXVALUE 999999999
NOCYCLE;

CREATE SEQUENCE Ad_noBrigade
START WITH 1
INCREMENT BY 1
MINVALUE 0
NOMAXVALUE 999999999
NOCYCLE;

CREATE SEQUENCE Ad_noCity
START WITH 1
INCREMENT BY 1
MINVALUE 0
NOMAXVALUE 999999999
NOCYCLE;

CREATE SEQUENCE Ad_noClinHstry
START WITH 1
INCREMENT BY 1
MINVALUE 0
NOMAXVALUE 999999999
NOCYCLE;

CREATE SEQUENCE Ad_noDisease
START WITH 1
INCREMENT BY 1
MINVALUE 0
NOMAXVALUE 999999999
NOCYCLE;

CREATE SEQUENCE Ad_noDivision
START WITH 1
INCREMENT BY 1
MINVALUE 0
NOMAXVALUE 999999999
NOCYCLE;

CREATE SEQUENCE Ad_noHospital
START WITH 1
INCREMENT BY 1
MINVALUE 0
NOMAXVALUE 999999999
NOCYCLE;

CREATE SEQUENCE Ad_noExams
START WITH 1
INCREMENT BY 1
MINVALUE 0
NOMAXVALUE 999999999
NOCYCLE;

CREATE SEQUENCE Ad_noLab
START WITH 1
INCREMENT BY 1
MINVALUE 0
NOMAXVALUE 999999999
NOCYCLE;


