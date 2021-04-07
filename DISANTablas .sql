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


/* ------------ LLAVES PRIMARIAS  -------------*/ 

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

/* ------------ LLAVES UNICAS  -------------*/ 

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

/* ------------ LLAVES FORANEAS  -------------*/ 

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

/* --------------------- XPOBLAR ---------------- */ 
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

INSERT INTO Person values ('CE', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov');
INSERT INTO Person values ('CC', 9254619331, 'Barbaraanne', 'Ceyssen', 'F', TO_DATE('09/06/2002', 'MM/DD/YYYY'), 'A', 'bceyssen1@photobucket.com');
INSERT INTO Person values ('CE', 1786662041, 'Alard', 'Blackburne', 'M', TO_DATE('05/21/2018', 'MM/DD/YYYY'), 'I', 'ablackburne2@usa.gov');
INSERT INTO Person values ('CC', 2984806463, 'Sacha', 'Bilbrook', 'F', TO_DATE('01/20/1969', 'MM/DD/YYYY'), 'I', 'sbilbrook3@skyrock.com');
INSERT INTO Person values ('TI', 1773190621, 'Sallie', 'Hearnshaw', 'F',TO_DATE( '11/22/1957', 'MM/DD/YYYY'), 'I', 'shearnshaw4@bandcamp.com');
INSERT INTO Person values ('CC', 2878196529, 'Dotti', 'Tadman', 'F',TO_DATE ('01/17/1974', 'MM/DD/YYYY'), 'I', 'dtadman5@moonfruit.com');
INSERT INTO Person values ('TI', 9115387117, 'Wilden', 'McLuckie', 'F', TO_DATE('09/20/1992', 'MM/DD/YYYY'), 'A', 'wmcluckie6@dion.ne.jp');
INSERT INTO Person values ('CC', 7049570787, 'Antonino', 'Bletsoe', 'M',TO_DATE( '4/7/1957', 'MM/DD/YYYY'), 'A', 'abletsoe7@ed.gov');
INSERT INTO Person values ('TI', 793398263, 'Arri', 'Woolerton', 'M',TO_DATE ('3/1/1992', 'MM/DD/YYYY'), 'A', 'awoolerton8@theatlantic.com');
INSERT INTO Person values ('TI', 4252609306, 'Teodoor', 'Ferschke', 'F',TO_DATE ('4/13/2010', 'MM/DD/YYYY'), 'I', 'tferschke9@cdc.gov');
INSERT INTO Person values ('CE', 4779118851, 'Janie', 'Paszak', 'F',TO_DATE('4/3/1955', 'MM/DD/YYYY'), 'I', 'jpaszaka@chicagotribune.com');
INSERT INTO Person values ('CC', 4563832319, 'Electra', 'de Marco', 'M', TO_DATE('8/30/2017', 'MM/DD/YYYY'), 'I', 'edemarcob@etsy.com');




























