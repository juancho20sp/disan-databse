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


--- X SECUENCIAS ---
DROP SEQUENCE ID_MEDICATION_TYPE; 
DROP SEQUENCE ID_MEDICATION_INVENTORY; 
DROP SEQUENCE ID_SUPPLY_INVENTORY; 
DROP SEQUENCE ID_CITY; 
DROP SEQUENCE ID_MU; 
DROP SEQUENCE ID_HOSPITAL; 
DROP SEQUENCE ID_DISAN_PATIENT; 
DROP SEQUENCE ID_CLINICAL_HISTORY; 
DROP SEQUENCE ID_SPECIALTY;  
DROP SEQUENCE ID_LABORATORY; 
DROP SEQUENCE ID_MANAGEMENT_PLAN; 
DROP SEQUENCE ID_APPOINTMENT; 
DROP SEQUENCE ID_EXAMS; 
DROP SEQUENCE ID_SUPPLY; 
DROP SEQUENCE ID_MEDICINES; 
DROP SEQUENCE ID_MED_COMPONENT; 
DROP SEQUENCE ID_PROCEDURE; 
DROP SEQUENCE ID_DISEASE; 

--- X DISPARADORES ---
DROP TRIGGER INSERT_MED_TYPE; 
DROP TRIGGER INSERT_MED_INVENTORY; 
DROP TRIGGER INSERT_SUPPLY_INVENTORY; 
DROP TRIGGER INSERT_CITY; 
DROP TRIGGER INSERT_MU; 
DROP TRIGGER UPDATE_MU; 
DROP TRIGGER UPDATE_DIVISION; 
DROP TRIGGER INSERT_PERSON; 
DROP TRIGGER INSERT_PATIENT; 
DROP TRIGGER INSERT_CLINICAL_HISTORY; 
DROP TRIGGER INSERT_SPECIALTY; 
DROP TRIGGER INSERT_BACKGROUND; 
DROP TRIGGER INSERT_LABORATORY; 
DROP TRIGGER INSERT_MNG_PLAN; 
DROP TRIGGER INSERT_APPOINTMENT; 
DROP TRIGGER INSERT_EXAM; 
DROP TRIGGER INSERT_SUPPLY; 
DROP TRIGGER INSERT_MEDICINE; 
DROP TRIGGER INSERT_MED_COMPONENT; 
DROP TRIGGER INSERT_PROCEDURE; 
DROP TRIGGER INSERT_DISEASE; 


--- X TUPLAS ---
ALTER TABLE Battalion DROP CONSTRAINT CK_BATTALION_MILFORCE;
ALTER TABLE Brigade DROP CONSTRAINT CK_BRIGADE_MILFORCE;
ALTER TABLE Division DROP CONSTRAINT CK_DIVISION_MILFORCE;
ALTER TABLE Doctor DROP CONSTRAINT CK_DOCTOR_MILFORCE;
ALTER TABLE Doctor DROP CONSTRAINT CK_DOCTOR_DOCUTYPE;
ALTER TABLE Nurse DROP CONSTRAINT CK_NURSE_MILFORCE;
ALTER TABLE Nurse DROP CONSTRAINT CK_NURSE_DOCUTYPE;
ALTER TABLE Person DROP CONSTRAINT CK_PERSON_DOCTUYPE;
ALTER TABLE Person DROP CONSTRAINT CK_PERSON_GENDER;
ALTER TABLE Person DROP CONSTRAINT CK_PERSON_STATUS;
ALTER TABLE Person DROP CONSTRAINT CK_PERSON_EMAIL;
ALTER TABLE Person DROP CONSTRAINT CK_PERSON_DATEVAL;


--- X INDICES ---
DROP INDEX IDX_PROCEDURES;
DROP INDEX IDX_HOSPITALS;
DROP INDEX IDX_MEDICINES;
DROP INDEX IDX_SUPPLY;
DROP INDEX IDX_LABORATORY;

--- X VISTAS ---
DROP VIEW V_CLINICAL_HISTORY;
DROP VIEW V_HOSPITAL;
DROP VIEW V_MEDICINES;
DROP VIEW V_SUPPLIES;
DROP VIEW V_LABORATORY;
DROP VIEW V_APPOINTMENT;
DROP VIEW V_BACKGROUND;
DROP VIEW V_MILITARY_UNIT;
DROP VIEW V_DIVISION;
DROP VIEW V_BRIGADE;
DROP VIEW V_BATTALION;
DROP VIEW V_DOCTOR;
DROP VIEW V_BACKGROUND_DISEASE;
DROP VIEW V_BACKGROUND_PROCEDURE;
DROP VIEW V_NURSE;
DROP VIEW V_PATIENT;
DROP VIEW V_APPOINTMENT_DOCTOR;
DROP VIEW V_APPOINTMENT_NURSE;
DROP VIEW V_PROCEDURES;
DROP VIEW V_NURSE_PROCEDURES;
DROP VIEW V_EXAMS_LAB;
DROP VIEW V_EXAMS;

--- X CRUD ---
DROP PACKAGE PKG_SUPPLY;
DROP PACKAGE PKG_SUPPLIES_INVENTORY;
DROP PACKAGE PKG_MILITARY_UNIT;
DROP PACKAGE PKG_LABORATORY;
DROP PACKAGE PKG_CITY;
DROP PACKAGE PKG_MEDICATION_INVENTORY;
DROP PACKAGE PKG_HOSPITAL;
DROP PACKAGE PKG_PERSON;
DROP PACKAGE PKG_CLINICAL_HISTORY;
DROP PACKAGE PKG_APPOINTMENT;
DROP PACKAGE PKG_DOCTOR;
DROP PACKAGE PKG_NURSE;
DROP PACKAGE PKG_PATIENT;
DROP PACKAGE PKG_PROCEDURES;
DROP PACKAGE PKG_BACKGROUND;
DROP PACKAGE PKG_DISEASE;
DROP PACKAGE PKG_EXAMS;
DROP PACKAGE PKG_MANAGEMENT_PLAN;
DROP PACKAGE PKG_MEDICINES;
DROP PACKAGE PKG_PROCEDURE;
DROP PACKAGE PKG_SPECIALTY;


-- X ACTORES
DROP PACKAGE PA_DOCTOR;
DROP PACKAGE PA_NURSE;
DROP PACKAGE PA_PATIENT;
DROP PACKAGE PA_ADMIN;


