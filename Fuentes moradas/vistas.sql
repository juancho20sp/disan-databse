-- CLINICAL HISTORY
CREATE OR REPLACE VIEW V_CLINICAL_HISTORY AS
    SELECT 
    ClinicalHistory.documentType AS PATIENT_DOC_TYPE,
    ClinicalHistory.documentNumber AS PATIENT_DOC_NUMBER,
    PROCEDURES.name AS PROCEDURE,
    DISEASE.name AS DISEASE,
    APPOINTMENT.appointmentMotive AS APP_MOTIVE,
    APPOINTMENT.diagnosis AS APP_DIAGNOSIS,
    APPOINTMENT.dateAppointment AS APP_DATE
    FROM
    ClinicalHistory
    JOIN BACKGROUND ON ClinicalHistory.idClinicalHistory = BACKGROUND.idClinicalHistory
    JOIN DISEASE ON BACKGROUND.idBackground = DISEASE.idBackground
    JOIN PROCEDURES ON ClinicalHistory.idClinicalHistory = PROCEDURES.idClinicalHistory
    JOIN APPOINTMENT ON ClinicalHistory.idClinicalHistory = APPOINTMENT.idClinicalHistory
    ORDER BY ClinicalHistory.documentType, ClinicalHistory.documentNumber;
    

-- HOSPITAL
CREATE OR REPLACE VIEW V_HOSPITAL AS
    SELECT
    HOSPITAL.name AS NAME,
    HOSPITAL.address AS ADDRESS,
    HOSPITAL.bedNumber AS BED_NUMBER,
    HOSPITAL.UCINumber AS UCI_NUMBER,
    CITY.name AS CITY,
    MILITARYUNIT.name AS BATTALION
    FROM HOSPITAL
    JOIN CITY ON HOSPITAL.idCity = CITY.idCity
    JOIN BATTALION ON HOSPITAL.idBattalion = BATTALION.idBattalion
    JOIN MILITARYUNIT ON HOSPITAL.idBattalion = MILITARYUNIT.idMilitaryUnit;
    

-- MEDICINES
CREATE OR REPLACE VIEW V_MEDICINES AS
    SELECT
    MEDICINES.commercialName AS COMMERCIAL_NAME,
    MEDICINES.presentation AS PRESENTATION,
    MEDICINES.producer AS PRODUCER
    FROM MEDICINES;


-- SUPPLIES
CREATE OR REPLACE VIEW V_SUPPLIES AS
    SELECT
    SUPPLY.idSupply AS ID,
    SUPPLY.name AS NAME,
    SUPPLY.amount AS AMOUNT,
    SUPPLY.idSuppliesInventory AS INVENTORY
    FROM SUPPLY;


-- HOSPITAL
CREATE OR REPLACE VIEW V_LABORATORY AS
    SELECT
    LABORATORY.name AS NAME,
    LABORATORY.address AS ADDRESS,
    CITY.name AS CITY,
    MILITARYUNIT.name AS BATTALION
    FROM LABORATORY
    JOIN CITY ON LABORATORY.idCity = CITY.idCity
    JOIN BATTALION ON LABORATORY.idBattalion = BATTALION.idBattalion
    JOIN MILITARYUNIT ON LABORATORY.idBattalion = MILITARYUNIT.idMilitaryUnit;
    
-- APPOINTMENT
CREATE OR REPLACE VIEW V_APPOINTMENT AS
    SELECT
    APPOINTMENT.idAppointment AS ID,
    APPOINTMENT.appointmentMotive AS MOTIVE,
    APPOINTMENT.diagnosis AS DIAGNOSIS,
    APPOINTMENT.dateAppointment AS APP_DATE,
    HOSPITAL.name AS HOSPITAL,
    HOSPITAL.address AS ADDRESS,
    CITY.name AS CITY,
    MILITARYUNIT.name AS BATTALION
    FROM APPOINTMENT    
    JOIN HOSPITAL ON APPOINTMENT.idHospital = HOSPITAL.idHospital
    JOIN CITY ON HOSPITAL.idCity = CITY.idCity
    JOIN MILITARYUNIT ON HOSPITAL.idBattalion = MILITARYUNIT.idMilitaryUnit;
    

-- BACKGROUNDS
CREATE OR REPLACE VIEW V_BACKGROUND AS
    SELECT
    Disease.name AS DISEASE_NAME,
    Disease.description AS DISEASE_DESCRIPTION,
    Procedures.name AS PROCEDURE,
    Procedures.dateProcedure AS PROCEDURE_DATE
    FROM BACKGROUND    
    JOIN DISEASE ON BACKGROUND.idBackground = DISEASE.idBackground
    JOIN PROCEDURES ON BACKGROUND.idBackground = PROCEDURES.idBackground;
     
