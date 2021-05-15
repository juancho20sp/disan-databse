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
--DROP SEQUENCE ID_BACKGROUND; 
DROP SEQUENCE ID_LABORATORY; 
DROP SEQUENCE ID_MANAGEMENT_PLAN; 
DROP SEQUENCE ID_APPOINTMENT; 
DROP SEQUENCE ID_EXAMS; 
DROP SEQUENCE ID_SUPPLY; 
DROP SEQUENCE ID_MEDICINES; 
DROP SEQUENCE ID_MED_COMPONENT; 
DROP SEQUENCE ID_PROCEDURE; 
DROP SEQUENCE ID_DISEASE; 


--- SECUENCIAS ---
--- MEDICATION TYPE---
CREATE SEQUENCE  ID_MEDICATION_TYPE
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- MEDICATION INVENTORY ---
CREATE SEQUENCE  ID_MEDICATION_INVENTORY
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- SUPPLIES INVENTORY ---
CREATE SEQUENCE  ID_SUPPLY_INVENTORY
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- CITY ---
CREATE SEQUENCE  ID_CITY
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- MILITARY UNIT ---
CREATE SEQUENCE  ID_MU
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- HOSPITAL ---
CREATE SEQUENCE  ID_HOSPITAL
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;


--- PATIENT ---
CREATE SEQUENCE  ID_DISAN_PATIENT
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- CLINICAL HISTORY ---
CREATE SEQUENCE  ID_CLINICAL_HISTORY
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- SPECIALTY ---
CREATE SEQUENCE  ID_SPECIALTY
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- BACKGROUND ---
-- CREATE SEQUENCE  ID_BACKGROUND
-- MINVALUE 1 MAXVALUE 9999999999
-- INCREMENT BY 1 START WITH 1 
-- NOCACHE  ORDER  CYCLE ;

--- LABORATORY ---
CREATE SEQUENCE  ID_LABORATORY
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- MANAGEMENT PLAN ---
CREATE SEQUENCE  ID_MANAGEMENT_PLAN
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- APPOINTMENT ---
CREATE SEQUENCE  ID_APPOINTMENT
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- EXAMS ---
CREATE SEQUENCE  ID_EXAMS
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- SUPPLY ---
CREATE SEQUENCE  ID_SUPPLY
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- MEDICINES ---
CREATE SEQUENCE  ID_MEDICINES
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- MEDICATION COMPONENTS ---
CREATE SEQUENCE  ID_MED_COMPONENT
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- PROCEDURES ---
CREATE SEQUENCE  ID_PROCEDURE
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- DISEASE ---
CREATE SEQUENCE  ID_DISEASE
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;