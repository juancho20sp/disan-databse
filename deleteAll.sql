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
DROP SEQUENCE "BD2172577"."ID_MEDICATION_TYPE"; 
DROP SEQUENCE "BD2172577"."ID_MEDICATION_INVENTORY"; 
DROP SEQUENCE "BD2172577"."ID_SUPPLY_INVENTORY"; 
DROP SEQUENCE "BD2172577"."ID_CITY"; 
DROP SEQUENCE "BD2172577"."ID_DIVISION"; 

--- X DISPARADORES ---
DROP TRIGGER "BD2172577"."INSERT_MED_TYPE"; 
DROP TRIGGER "BD2172577"."INSERT_MED_INVENTORY"; 
DROP TRIGGER "BD2172577"."INSERT_SUPPLY_INVENTORY"; 
DROP TRIGGER "BD2172577"."INSERT_CITY"; 
DROP TRIGGER "BD2172577"."INSERT_DIVISION"; 

