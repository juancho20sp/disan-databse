--- X DISPARADORES ---
DROP TRIGGER INSERT_MED_TYPE; 
DROP TRIGGER INSERT_MED_INVENTORY; 
DROP TRIGGER INSERT_SUPPLY_INVENTORY; 
DROP TRIGGER INSERT_CITY; 
DROP TRIGGER INSERT_MU; 
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


--- DISPARADORES ---
--- MEDICATION TYPE---
CREATE OR REPLACE TRIGGER INSERT_MED_TYPE
BEFORE INSERT ON MEDICATIONTYPE 
FOR EACH ROW
BEGIN
  SELECT ID_MEDICATION_TYPE.NEXTVAL INTO :NEW.idMedicationType FROM DUAL;
END;

/

--- MEDICATION INVENTORY---
CREATE OR REPLACE TRIGGER INSERT_MED_INVENTORY
BEFORE INSERT ON MEDICATIONINVENTORY 
FOR EACH ROW
BEGIN
  SELECT ID_MEDICATION_INVENTORY.NEXTVAL INTO :NEW.idMedicationInventory FROM DUAL;
END;

/

--- SUPPLIES INVENTORY ---
CREATE OR REPLACE TRIGGER INSERT_SUPPLY_INVENTORY
BEFORE INSERT ON SuppliesInventory 
FOR EACH ROW
BEGIN
  SELECT ID_SUPPLY_INVENTORY.NEXTVAL INTO :NEW.idSuppliesInventory FROM DUAL;
END;

/ 

--- CITY ---
CREATE OR REPLACE TRIGGER INSERT_CITY
BEFORE INSERT ON CITY 
FOR EACH ROW
BEGIN
  SELECT ID_CITY.NEXTVAL INTO :NEW.idCity FROM DUAL;
END;

/ 

--- MILITARY UNIT ---
CREATE OR REPLACE TRIGGER INSERT_MU
BEFORE INSERT ON MilitaryUnit 
FOR EACH ROW
BEGIN
  SELECT ID_MU.NEXTVAL INTO :NEW.idMilitaryUnit FROM DUAL;
END;

/ 

--- HOSPITAL ---
CREATE OR REPLACE TRIGGER INSERT_HOSPITAL
BEFORE INSERT ON HOSPITAL 
FOR EACH ROW
BEGIN
  SELECT ID_HOSPITAL.NEXTVAL INTO :NEW.idHospital FROM DUAL;

  /* Si el número de camillas ingresado es negativo, se asume que no hay disponibles */
  IF :new.bedNumber < 0
		THEN :new.bedNumber := 0;
	END IF;

  /* Si el número de UCI ingresado es negativo, se asume que no hay disponibles */
  IF :new.UCINumber < 0
		THEN :new.UCINumber := 0;
	END IF;
END;

/ 


--- PERSON ---
CREATE OR REPLACE TRIGGER INSERT_PERSON
BEFORE INSERT ON PERSON
FOR EACH ROW
BEGIN
    :new.registerDate := sysdate;
END;

/

--- PATIENT ---
CREATE OR REPLACE TRIGGER INSERT_PATIENT
BEFORE INSERT ON PATIENT 
FOR EACH ROW
BEGIN
  SELECT ID_DISAN_PATIENT.NEXTVAL INTO :NEW.disanId FROM DUAL;
END;

/

--- CLINICAL HISTORY ---
CREATE OR REPLACE TRIGGER INSERT_CLINICAL_HISTORY
BEFORE INSERT ON CLINICALHISTORY 
FOR EACH ROW
BEGIN
  SELECT ID_CLINICAL_HISTORY.NEXTVAL INTO :NEW.idClinicalHistory FROM DUAL;
END;

/

--- SPECIALTY ---
CREATE OR REPLACE TRIGGER INSERT_SPECIALTY
BEFORE INSERT ON Speciality 
FOR EACH ROW
BEGIN
  SELECT ID_SPECIALTY.NEXTVAL INTO :NEW.idSpeciality FROM DUAL;
END;

/

--- BACKGROUND ---
CREATE OR REPLACE TRIGGER INSERT_BACKGROUND
BEFORE INSERT ON BACKGROUND 
FOR EACH ROW
BEGIN
  SELECT ID_BACKGROUND.NEXTVAL INTO :NEW.idBackground FROM DUAL;
END;

/

--- LABORATORY ---
CREATE OR REPLACE TRIGGER INSERT_LABORATORY
BEFORE INSERT ON LABORATORY 
FOR EACH ROW
BEGIN
  SELECT ID_LABORATORY.NEXTVAL INTO :NEW.idLaboratory FROM DUAL;
END;

/

--- MANAGEMENT PLAN ---
CREATE OR REPLACE TRIGGER INSERT_MNG_PLAN
BEFORE INSERT ON MANAGEMENTPLAN 
FOR EACH ROW
BEGIN
  SELECT ID_MANAGEMENT_PLAN.NEXTVAL INTO :NEW.idManagementPlan FROM DUAL;
END;

/

--- APPOINTMENT ---
CREATE OR REPLACE TRIGGER INSERT_APPOINTMENT
BEFORE INSERT ON APPOINTMENT 
FOR EACH ROW
BEGIN
  SELECT ID_APPOINTMENT.NEXTVAL INTO :NEW.idAppointment FROM DUAL;

  IF  SYSDATE > :new.dateAppointment   THEN 
        RAISE_APPLICATION_ERROR(-20005,'No se puede generar una cita en una fecha anterior a la actual');
    END IF;
END;

/

--- EXAMS ---
CREATE OR REPLACE TRIGGER INSERT_EXAM
BEFORE INSERT ON EXAMS
FOR EACH ROW
BEGIN
  SELECT ID_EXAMS.NEXTVAL INTO :NEW.idExams FROM DUAL;
END;

/

--- SUPPLY ---
CREATE OR REPLACE TRIGGER INSERT_SUPPLY
BEFORE INSERT ON SUPPLY 
FOR EACH ROW
BEGIN
  SELECT ID_SUPPLY.NEXTVAL INTO :NEW.idSupply FROM DUAL;
END;

/

--- MEDICINES ---
CREATE OR REPLACE TRIGGER INSERT_MEDICINE
BEFORE INSERT ON MEDICINES 
FOR EACH ROW
BEGIN
  SELECT ID_MEDICINES.NEXTVAL INTO :NEW.idMedicines FROM DUAL;
END;

/

--- MEDICATION COMPONENTS ---
CREATE OR REPLACE TRIGGER INSERT_MED_COMPONENT
BEFORE INSERT ON MEDICATIONCOMPONENTS 
FOR EACH ROW
BEGIN
  SELECT ID_MED_COMPONENT.NEXTVAL INTO :NEW.idMedicationComponent FROM DUAL;
END;

/

--- PROCEDURES ---
CREATE OR REPLACE TRIGGER INSERT_PROCEDURE
BEFORE INSERT ON PROCEDURES 
FOR EACH ROW
BEGIN
  SELECT ID_PROCEDURE.NEXTVAL INTO :NEW.idProcedure FROM DUAL;
END;

/

--- DISEASE ---
CREATE OR REPLACE TRIGGER INSERT_DISEASE
BEFORE INSERT ON Disease 
FOR EACH ROW
BEGIN
  SELECT ID_DISEASE.NEXTVAL INTO :NEW.idDisease FROM DUAL;
END;

/
