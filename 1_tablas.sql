--- X TABLAS ---
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
DROP TABLE MilitaryUnit CASCADE CONSTRAINTS;
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


--- TABLAS ---
CREATE TABLE Appointment (
    idAppointment	    NUMBER(10) NOT NULL,
    diagnosis          	VARCHAR2(500) NOT NULL,
    dateAppointment    	DATE NOT NULL,
	idClinicalHistory	NUMBER(10) NOT NULL, 
	idManagementPlan	NUMBER(10) NOT NULL,
	idHospital			NUMBER(10) NOT NULL
); 

CREATE TABLE Background (
    idBackground	    NUMBER(10) NOT NULL,
	idClinicalHistory	NUMBER(10) NOT NULL
); 

CREATE TABLE Battalion (
    idBattalion		    NUMBER(10) NOT NULL,
	commander			VARCHAR2(100) NOT NULL, 
	militaryForce		VARCHAR2(50) NOT NULL, 
	idBrigade			NUMBER(10) NOT NULL
);

CREATE TABLE Brigade (
    idBrigade		    NUMBER(10) NOT NULL,
	commander			VARCHAR2(100) NOT NULL, 
	militaryForce		VARCHAR2(50) NOT NULL, 
	idDivision			NUMBER(10) NOT NULL
);

CREATE TABLE City (
    idCity			    NUMBER(10) NOT NULL,
	name				VARCHAR2(50) NOT NULL, 	
	department			VARCHAR2(50) NOT NULL
); 

CREATE TABLE ClinicalHistory (
    idClinicalHistory   NUMBER(10) NOT NULL,
	documentType		VARCHAR2(2) NOT NULL, 
	documentNumber		NUMBER(10) NOT NULL
); 

CREATE TABLE Disease (
    idDisease			NUMBER(10) NOT NULL,
	name				VARCHAR2(50) NOT NULL, 
	description 		VARCHAR2(500) NOT NULL,
	idBackground		NUMBER(10) NOT NULL
); 

CREATE TABLE Division (
    idDivision		    NUMBER(10) NOT NULL,
	commander			VARCHAR2(100) NOT NULL, 
	militaryForce		VARCHAR2(50) NOT NULL 
);

CREATE TABLE Doctor (
    documentType	    VARCHAR2(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL, 	
	militaryForce		VARCHAR2(50) NOT NULL
);

CREATE TABLE Hospital (
    idHospital		    NUMBER(10) NOT NULL,
	name				VARCHAR2(50) NOT NULL, 	
	bedNumber			NUMBER(10) NOT NULL, 
	UCINumber			NUMBER(10) NOT NULL, 
	idBattalion			NUMBER(10) NOT NULL, 
	idSuppliesInventory	NUMBER(10) NOT NULL, 
	idCity				NUMBER(10) NOT NULL, 
	idMedicationInventory NUMBER(10) NOT NULL
); 

CREATE TABLE Exams (
    idExams			    NUMBER(10) NOT NULL,
	name				VARCHAR2(250) NOT NULL, 
	idManagementPlan	NUMBER(10) NOT NULL
); 

CREATE TABLE Laboratory (
    idLaboratory	    NUMBER(10) NOT NULL,
	name				VARCHAR2(50) NOT NULL, 
	idCity				NUMBER(10) NOT NULL,
	idSuppliesInventory	NUMBER(10) NOT NULL
); 

CREATE TABLE ManagementPlan (
    idManagementPlan	NUMBER(10) NOT NULL,
	instructions		VARCHAR2(500) NOT NULL
); 

CREATE TABLE MedicationComponents (
    idMedicationComponent NUMBER(10) NOT NULL,
	name				  VARCHAR2(50) NOT NULL, 
	idMedicines			  NUMBER(10) NOT NULL
); 

CREATE TABLE MedicationInventory (
    idMedicationInventory NUMBER(10) NOT NULL
); 

CREATE TABLE MedicationType (
    idMedicationType	NUMBER(10) NOT NULL,
	name				VARCHAR2(50) NOT NULL
); 

CREATE TABLE Medicines (
    idMedicines			  NUMBER(10) NOT NULL,
	commercialName		  VARCHAR2(50) NOT NULL, 
	presentation		  VARCHAR2(50) NOT NULL, 
	producer			  VARCHAR2(50) NOT NULL, 
	idManagementPlan	  NUMBER(10) NOT NULL, 
	idMedicationType	  NUMBER(10) NOT NULL, 
	idMedicationInventory NUMBER(10) NOT NULL
); 

CREATE TABLE MilitaryUnit (
    idMilitaryUnit	    NUMBER(10) NOT NULL,
	name				VARCHAR2(250) NOT NULL, 	 
	city				NUMBER(10) NOT NULL,
	fullLocation		VARCHAR2(250)
);

CREATE TABLE Nurse (
    documentType	    VARCHAR2(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL, 	
	militaryForce		VARCHAR2(50) NOT NULL
);

CREATE TABLE Patient (
    documentType	    VARCHAR2(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL, 	
	disanId				NUMBER(10) NOT NULL
);

CREATE TABLE Person (
    documentType	    VARCHAR2(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL, 	
	name				VARCHAR2(50) NOT NULL, 
	lastname			VARCHAR2(50) NOT NULL, 
	gender				CHAR(1) NOT NULL, 
	birthDate			DATE NOT NULL, 
	status				CHAR(1) NOT NULL, 
	email				VARCHAR2(100) NOT NULL,
	registerDate		DATE NOT NULL
);

CREATE TABLE Procedures (
    idProcedure			NUMBER(10) NOT NULL,
	name				VARCHAR2(50) NOT NULL, 
	dateProcedure		DATE NOT NULL,
	idBackground		NUMBER(10) NOT NULL, 
	idManagementPlan	NUMBER(10) NOT NULL, 
	idClinicalHistory	NUMBER(10) NOT NULL, 
	idHospital			NUMBER(10) NOT NULL
);

CREATE TABLE Speciality (
    idSpeciality		NUMBER(10) NOT NULL,
	name				VARCHAR2(50) NOT NULL
);

CREATE TABLE SuppliesInventory (
    idSuppliesInventory		NUMBER(10) NOT NULL
);

CREATE TABLE Supply (
	idSupply			NUMBER(10) NOT NULL, 
	name				VARCHAR2(250) NOT NULL, 
	amount				NUMBER(10) NOT NULL, 
	idSuppliesInventory	NUMBER(10) NOT NULL
); 		

CREATE TABLE ExamsLaboratory (
	idLaboratory		NUMBER(10) NOT NULL, 
	idExam				NUMBER(10) NOT NULL
);

CREATE TABLE ExamsNurse (
	idExam				NUMBER(10) NOT NULL, 
	documentType		VARCHAR2(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL
);

CREATE TABLE NurseSpeciality (
	documentType		VARCHAR2(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL,
	idSpeciality		NUMBER(10) NOT NULL
);

CREATE TABLE DoctorSpeciality (
	documentType		VARCHAR2(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL,
	idSpeciality		NUMBER(10) NOT NULL
);

CREATE TABLE AppointmentDoctor (
	idAppointment		NUMBER(10) NOT NULL,
	documentType		VARCHAR2(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL
);

CREATE TABLE AppointmentNurse (
	idAppointment		NUMBER(10) NOT NULL,
	documentType		VARCHAR2(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL
);

CREATE TABLE ProcedureNurse (
	documentType		VARCHAR2(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL, 
	idProcedure			NUMBER(10) NOT NULL
);

CREATE TABLE ProcedureDoctor (
	documentType		VARCHAR2(2) NOT NULL,
	documentNumber		NUMBER(10) NOT NULL, 
	idProcedure			NUMBER(10) NOT NULL
);


--- UNICAS ---
ALTER TABLE Battalion ADD CONSTRAINT UQ_COMMANDER_BATALLION UNIQUE (commander);
ALTER TABLE Brigade ADD CONSTRAINT UQ_COMMANDER_BRIGADE UNIQUE (commander);
ALTER TABLE City ADD CONSTRAINT UQ_CITY_NAME UNIQUE (name);
ALTER TABLE Disease ADD CONSTRAINT UQ_NAME_DISEASE UNIQUE (name);
ALTER TABLE Division ADD CONSTRAINT UQ_COMMANDER_DIVISION UNIQUE (commander);
ALTER TABLE Exams ADD CONSTRAINT UQ_NAME_EXAMS UNIQUE (name);
ALTER TABLE MedicationComponents ADD CONSTRAINT UQ_NAME_MEDICATIONCOMPONENTS UNIQUE (name);
ALTER TABLE MedicationType ADD CONSTRAINT UQ_NAME_MEDICATIONTYPE UNIQUE (name);
ALTER TABLE MilitaryUnit ADD CONSTRAINT UQ_NAME_MILITARY_UNIT UNIQUE (name);
ALTER TABLE Speciality ADD CONSTRAINT UQ_NAME_SPECIALITY UNIQUE (name);
ALTER TABLE Person ADD CONSTRAINT UQ_PERSON_EMAIL UNIQUE (email);


--- PRIMARIAS ---
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
ALTER TABLE ManagementPlan ADD CONSTRAINT PK_ID_MANAGEMENTPLAN PRIMARY KEY (idManagementPlan); 
ALTER TABLE MedicationComponents ADD CONSTRAINT PK_ID_MEDICATIONCOMPONENTS PRIMARY KEY (idMedicationComponent); 
ALTER TABLE MedicationInventory ADD CONSTRAINT PK_ID_MEDICATIONINVENTORY PRIMARY KEY (idMedicationInventory); 
ALTER TABLE MedicationType ADD CONSTRAINT PK_ID_MEDICATIONTYPE PRIMARY KEY (idMedicationType); 
ALTER TABLE Medicines ADD CONSTRAINT PK_ID_MEDICINES PRIMARY KEY (idMedicines); 
ALTER TABLE MilitaryUnit ADD CONSTRAINT PK_ID_MILITARY_UNIT PRIMARY KEY (idMilitaryUnit); 
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


--- FORÁNEAS ---
ALTER TABLE Appointment ADD CONSTRAINT FK_APPOINTMNET_CLINICALH FOREIGN KEY (idClinicalHistory) REFERENCES ClinicalHistory(idClinicalHistory);
ALTER TABLE Appointment ADD CONSTRAINT FK_APPOINTMNET_MANAGEPLAN FOREIGN KEY (idManagementPlan) REFERENCES ManagementPlan(idManagementPlan);
ALTER TABLE Appointment ADD CONSTRAINT FK_APPOINTMNET_HOSPITAL FOREIGN KEY (idHospital) REFERENCES Hospital(idHospital);
ALTER TABLE Background ADD CONSTRAINT FK_BACKGROUND_CLINICALH FOREIGN KEY (idClinicalHistory) REFERENCES ClinicalHistory(idClinicalHistory);

ALTER TABLE Battalion ADD CONSTRAINT FK_BATTALION_BRIGADE FOREIGN KEY (idBrigade) REFERENCES Brigade(idBrigade);
ALTER TABLE Battalion ADD CONSTRAINT FK_BATTALION_MU FOREIGN KEY (idBattalion) REFERENCES MilitaryUnit(idMilitaryUnit);

ALTER TABLE Brigade ADD CONSTRAINT FK_BRIGADE_DIV FOREIGN KEY (idDivision) REFERENCES Division(idDivision);
ALTER TABLE Brigade ADD CONSTRAINT FK_BRIGADE_MU FOREIGN KEY (idBrigade) REFERENCES MilitaryUnit(idMilitaryUnit);


ALTER TABLE ClinicalHistory ADD CONSTRAINT FK_CLINICALH_DOCTYPE FOREIGN KEY (documentType, documentNumber) REFERENCES Patient(documentType, documentNumber);
ALTER TABLE Disease ADD CONSTRAINT FK_DISEASE_BACKGROUND FOREIGN KEY (idBackground) REFERENCES Background(idBackground);

ALTER TABLE Division ADD CONSTRAINT FK_DIVISION_MU FOREIGN KEY (idDivision) REFERENCES MilitaryUnit(idMilitaryUnit);


ALTER TABLE Doctor ADD CONSTRAINT FK_DOCTOR_DOCTYPE FOREIGN KEY (documentType, documentNumber) REFERENCES Person(documentType, documentNumber);
ALTER TABLE Hospital ADD CONSTRAINT FK_HOSPITAL_BATTALION FOREIGN KEY (idBattalion) REFERENCES Battalion(idBattalion);
ALTER TABLE Hospital ADD CONSTRAINT FK_HOSPITAL_SUPPLIESINV FOREIGN KEY (idSuppliesInventory) REFERENCES SuppliesInventory(idSuppliesInventory);
ALTER TABLE Hospital ADD CONSTRAINT FK_HOSPITAL_CITY FOREIGN KEY (idCity) REFERENCES City(idCity);
ALTER TABLE Hospital ADD CONSTRAINT FK_HOSPITAL_MEDICATIONINV FOREIGN KEY (idMedicationInventory) REFERENCES MedicationInventory(idMedicationInventory);
ALTER TABLE Exams ADD CONSTRAINT FK_EXAMS_MANAGEPLAN FOREIGN KEY (idManagementPlan) REFERENCES ManagementPlan(idManagementPlan);
ALTER TABLE Laboratory ADD CONSTRAINT FK_LABORATORY_CITY FOREIGN KEY (idCity) REFERENCES City(idCity);
ALTER TABLE Laboratory ADD CONSTRAINT FK_LABORATORY_SUPPLIESINV FOREIGN KEY (idSuppliesInventory) REFERENCES SuppliesInventory(idSuppliesInventory);
ALTER TABLE MedicationComponents ADD CONSTRAINT FK_MEDICATIONC_MEDICINE FOREIGN KEY (idMedicines) REFERENCES Medicines(idMedicines);
ALTER TABLE Medicines ADD CONSTRAINT FK_MEDICINES_MANAGEPLAN FOREIGN KEY (idManagementPlan) REFERENCES ManagementPlan(idManagementPlan);
ALTER TABLE Medicines ADD CONSTRAINT FK_MEDICINES_MEDTYPE FOREIGN KEY (idMedicationType) REFERENCES MedicationType(idMedicationType);
ALTER TABLE Medicines ADD CONSTRAINT FK_MEDICINES_MEDINV FOREIGN KEY (idMedicationInventory) REFERENCES MedicationInventory(idMedicationInventory);

ALTER TABLE MilitaryUnit ADD CONSTRAINT FK_MU_CITY FOREIGN KEY (city) REFERENCES City(idCity);


ALTER TABLE Nurse ADD CONSTRAINT FK_NURSE_ID FOREIGN KEY (documentType, documentNumber) REFERENCES Person(documentType, documentNumber);
ALTER TABLE Patient ADD CONSTRAINT FK_PATIENT_DOCTYPE FOREIGN KEY (documentType, documentNumber) REFERENCES Person(documentType, documentNumber); 
ALTER TABLE Procedures ADD CONSTRAINT FK_PROCEDURE_BACKGROUND FOREIGN KEY (idBackground) REFERENCES Background(idBackground); 
ALTER TABLE Procedures ADD CONSTRAINT FK_PROCEDURE_MANAGEPLAN FOREIGN KEY (idManagementPlan) REFERENCES ManagementPlan(idManagementPlan); 
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