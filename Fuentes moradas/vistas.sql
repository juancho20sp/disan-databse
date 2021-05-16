-- CLINICAL HISTORY
CREATE OR REPLACE VIEW V_CLINICAL_HISTORY AS
    SELECT 
    ClinicalHistory.idClinicalHistory AS ID_CLINICAL_HISTORY,
    ClinicalHistory.documentType AS PATIENT_DOC_TYPE,
    ClinicalHistory.documentNumber AS PATIENT_DOC_NUMBER,
    PROCEDURES.name AS PROCEDURE,
    DISEASE.name AS DISEASE,
    APPOINTMENT.appointmentMotive AS APP_MOTIVE,
    APPOINTMENT.diagnosis AS APP_DIAGNOSIS,
    APPOINTMENT.dateAppointment AS APP_DATE
    FROM
    ClinicalHistory
    LEFT JOIN BACKGROUND ON ClinicalHistory.idClinicalHistory = BACKGROUND.idClinicalHistory
    LEFT JOIN DISEASE ON BACKGROUND.idBackground = DISEASE.idBackground
    LEFT JOIN PROCEDURES ON ClinicalHistory.idClinicalHistory = PROCEDURES.idClinicalHistory
    LEFT JOIN APPOINTMENT ON ClinicalHistory.idClinicalHistory = APPOINTMENT.idClinicalHistory
    ORDER BY ClinicalHistory.documentType, ClinicalHistory.documentNumber;

-- BACKGROUND DISEASE
CREATE OR REPLACE VIEW V_BACKGROUND_DISEASE AS
    SELECT 
    ClinicalHistory.documentType AS PATIENT_DOC_TYPE,
    ClinicalHistory.documentNumber AS PATIENT_DOC_NUMBER,
    DISEASE.name AS DISEASE
    FROM
    ClinicalHistory
    LEFT JOIN BACKGROUND ON ClinicalHistory.idClinicalHistory = BACKGROUND.idClinicalHistory
    LEFT JOIN DISEASE ON BACKGROUND.idBackground = DISEASE.idBackground
    ORDER BY ClinicalHistory.documentType, ClinicalHistory.documentNumber;

-- HOSPITAL
CREATE OR REPLACE VIEW V_HOSPITAL AS
    SELECT
    HOSPITAL.idHospital AS ID,
    HOSPITAL.name AS NAME,
    HOSPITAL.address AS ADDRESS,
    HOSPITAL.bedNumber AS BED_NUMBER,
    HOSPITAL.UCINumber AS UCI_NUMBER,
    CITY.name AS CITY,
    MILITARYUNIT.name AS BATTALION,
    HOSPITAL.idSuppliesInventory AS SUPPLIES_INVENTORY,
    HOSPITAL.idMedicationInventory AS MEDICATION_INVENTORY
    FROM HOSPITAL
    JOIN CITY ON HOSPITAL.idCity = CITY.idCity
    JOIN BATTALION ON HOSPITAL.idBattalion = BATTALION.idBattalion
    JOIN MILITARYUNIT ON HOSPITAL.idBattalion = MILITARYUNIT.idMilitaryUnit
    ORDER BY idHospital;
    

-- MEDICINES
CREATE OR REPLACE VIEW V_MEDICINES AS
    SELECT
    MEDICINES.commercialName AS COMMERCIAL_NAME,
    MEDICINES.presentation AS PRESENTATION,
    MEDICINES.producer AS PRODUCER
    FROM MEDICINES
    ORDER BY idMedicines;


-- SUPPLIES
CREATE OR REPLACE VIEW V_SUPPLIES AS
    SELECT
    SUPPLY.idSupply AS ID,
    SUPPLY.name AS NAME,
    SUPPLY.amount AS AMOUNT,
    SUPPLY.idSuppliesInventory AS INVENTORY
    FROM SUPPLY
    ORDER BY idSupply;


-- LABORATORY
CREATE OR REPLACE VIEW V_LABORATORY AS
    SELECT
    LABORATORY.idLaboratory AS ID,
    LABORATORY.name AS NAME,
    LABORATORY.address AS ADDRESS,
    CITY.name AS CITY,
    MILITARYUNIT.name AS BATTALION,
    LABORATORY.idSuppliesInventory AS SUPPLIES_INVENTORY
    FROM LABORATORY
    JOIN CITY ON LABORATORY.idCity = CITY.idCity
    JOIN BATTALION ON LABORATORY.idBattalion = BATTALION.idBattalion
    JOIN MILITARYUNIT ON LABORATORY.idBattalion = MILITARYUNIT.idMilitaryUnit
    ORDER BY idLaboratory;
    
-- APPOINTMENT
CREATE OR REPLACE VIEW V_APPOINTMENT AS
    SELECT
    APPOINTMENT.idAppointment AS ID,
    PATIENT.documentType AS PATIENT_DOC_TYPE,
    PATIENT.documentNumber AS PATIENT_DOC_NUMBER,
    PATIENT.name AS PATIENT_NAME,
    PATIENT.lastname AS PATIENT_LASTNAME,
    PATIENT.email AS PATIENT_EMAIL,
    APPOINTMENT.appointmentMotive AS MOTIVE,
    APPOINTMENT.diagnosis AS DIAGNOSIS,
    APPOINTMENT.dateAppointment AS APP_DATE,
    HOSPITAL.name AS HOSPITAL,
    HOSPITAL.address AS ADDRESS,
    CITY.name AS CITY,
    PERSON.documentType AS DOCTOR_DOC_TYPE,
    PERSON.documentNumber AS DOCTOR_DOC_NUMBER,
    PERSON.name AS DOCTOR_NAME,
    PERSON.lastname AS DOCTOR_LASTNAME,
    MILITARYUNIT.name AS BATTALION
    FROM APPOINTMENT    
    LEFT JOIN HOSPITAL ON APPOINTMENT.idHospital = HOSPITAL.idHospital
    LEFT JOIN CITY ON HOSPITAL.idCity = CITY.idCity
    LEFT JOIN MILITARYUNIT ON HOSPITAL.idBattalion = MILITARYUNIT.idMilitaryUnit
    LEFT JOIN APPOINTMENTDOCTOR ON APPOINTMENT.idAppointment = AppointmentDoctor.idAppointment
    LEFT JOIN PERSON ON AppointmentDoctor.documentType = PERSON.documentType AND AppointmentDoctor.documentNumber = PERSON.documentNumber
    LEFT JOIN CLINICALHISTORY ON APPOINTMENT.idClinicalHistory = ClinicalHistory.idClinicalHistory
    LEFT JOIN PERSON PATIENT ON ClinicalHistory.documentType = PATIENT.documentType AND ClinicalHistory.documentNumber = PATIENT.documentNumber
    ORDER BY APPOINTMENT.idAppointment;

-- APPOINTMENT DOCTOR
CREATE OR REPLACE VIEW V_APPOINTMENT_DOCTOR AS
    SELECT
    AppointmentDoctor.idAppointment AS ID,
    APPOINTMENT.appointmentMotive AS MOTIVE,
    APPOINTMENT.dateAppointment AS APP_DATE,
    HOSPITAL.name AS HOSPITAL,
    HOSPITAL.address AS ADDRESS,
    CITY.name AS CITY,
    PERSON.documentType AS DOCTOR_DOCUMENT_TYPE,
    PERSON.documentNumber AS DOCTOR_DOCUMENT_NUMBER,
    PERSON.name AS DOCTOR_NAME,
    PERSON.lastname AS DOCTOR_LASTNAME,
    PERSON.email AS DOCTOR_EMAIL,
    MILITARYUNIT.name AS BATTALION
    FROM AppointmentDoctor
    JOIN APPOINTMENT ON AppointmentDoctor.idAppointment = APPOINTMENT.idAppointment
    LEFT JOIN CLINICALHISTORY ON APPOINTMENT.idClinicalHistory = ClinicalHistory.idClinicalHistory
    JOIN PERSON ON AppointmentDoctor.documentType = PERSON.documentType AND AppointmentDoctor.documentNumber = PERSON.documentNumber
    JOIN HOSPITAL ON APPOINTMENT.idHospital = HOSPITAL.idHospital
    JOIN CITY ON HOSPITAL.idCity = CITY.idCity
    JOIN MILITARYUNIT ON HOSPITAL.idBattalion = MILITARYUNIT.idMilitaryUnit
    ORDER BY AppointmentDoctor.idAppointment;

-- APPOINTMENT NURSE
CREATE OR REPLACE VIEW V_APPOINTMENT_NURSE AS
    SELECT
    APPOINTMENT.idAppointment AS ID,
    PATIENT.documentType AS PATIENT_DOC_TYPE,
    PATIENT.documentNumber AS PATIENT_DOC_NUMBER,
    PATIENT.name AS PATIENT_NAME,
    PATIENT.lastname AS PATIENT_LASTNAME,
    PATIENT.email AS PATIENT_EMAIL,
    APPOINTMENT.appointmentMotive AS MOTIVE,
    APPOINTMENT.diagnosis AS DIAGNOSIS,
    APPOINTMENT.dateAppointment AS APP_DATE,
    HOSPITAL.name AS HOSPITAL,
    HOSPITAL.address AS ADDRESS,
    CITY.name AS CITY,
    PERSON.documentType AS NURSE_DOC_TYPE,
    PERSON.documentNumber AS NURSE_DOC_NUMBER,
    PERSON.name AS NURSE_NAME,
    PERSON.lastname AS NURSE_LASTNAME,
    MILITARYUNIT.name AS BATTALION
    FROM APPOINTMENT    
    LEFT JOIN HOSPITAL ON APPOINTMENT.idHospital = HOSPITAL.idHospital
    LEFT JOIN CITY ON HOSPITAL.idCity = CITY.idCity
    LEFT JOIN MILITARYUNIT ON HOSPITAL.idBattalion = MILITARYUNIT.idMilitaryUnit
    LEFT JOIN AppointmentNurse ON APPOINTMENT.idAppointment = AppointmentNurse.idAppointment
    LEFT JOIN PERSON ON AppointmentNurse.documentType = PERSON.documentType AND AppointmentNurse.documentNumber = PERSON.documentNumber
    LEFT JOIN CLINICALHISTORY ON APPOINTMENT.idClinicalHistory = ClinicalHistory.idClinicalHistory
    LEFT JOIN PERSON PATIENT ON ClinicalHistory.documentType = PATIENT.documentType AND ClinicalHistory.documentNumber = PATIENT.documentNumber
    ORDER BY APPOINTMENT.idAppointment;


-- BACKGROUNDS
CREATE OR REPLACE VIEW V_BACKGROUND AS
    SELECT
    BACKGROUND.idBackground AS ID_BACKGROUND,
    Disease.name AS DISEASE_NAME,
    Disease.description AS DISEASE_DESCRIPTION,
    Procedures.name AS PROCEDURE,
    Procedures.dateProcedure AS PROCEDURE_DATE
    FROM BACKGROUND    
    LEFT JOIN DISEASE ON BACKGROUND.idBackground = DISEASE.idBackground
    LEFT JOIN PROCEDURES ON BACKGROUND.idBackground = PROCEDURES.idBackground
    ORDER BY ID_BACKGROUND;


 -- MILITARY UNIT   
 CREATE OR REPLACE VIEW V_MILITARY_UNIT AS
    SELECT 
    MilitaryUnit.idMilitaryUnit AS ID,
    MilitaryUnit.name AS NAME,
    CITY.name AS CITY,
    MilitaryUnit.fullLocation AS LOCATION
    FROM MILITARYUNIT    
    JOIN CITY ON MILITARYUNIT.city = CITY.idCity
    ORDER BY idMilitaryUnit;

 -- DIVISION 
 CREATE OR REPLACE VIEW V_DIVISION AS
    SELECT 
    DIVISION.idDivision AS ID,
    MilitaryUnit.name AS NAME,
    DIVISION.commander AS COMMANDER,
    CITY.name AS CITY,
    MilitaryUnit.fullLocation AS LOCATION,
    DIVISION.militaryForce AS MILITARY_FORCE
    FROM DIVISION
    JOIN MILITARYUNIT ON DIVISION.idDivision = MILITARYUNIT.idMilitaryUnit
    JOIN CITY ON MILITARYUNIT.city = CITY.idCity
    ORDER BY idDivision;

-- BRIGADE
 CREATE OR REPLACE VIEW V_BRIGADE AS
    SELECT 
    BRIGADE.idBrigade AS ID,
    M1.name AS NAME,
    BRIGADE.commander AS COMMANDER,
    MilitaryUnit.name AS DIVISION,
    CITY.name AS CITY,
    MilitaryUnit.fullLocation AS LOCATION,
    BRIGADE.militaryForce AS MILITARY_FORCE
    FROM BRIGADE
    JOIN MILITARYUNIT M1 ON BRIGADE.idBrigade = M1.idMilitaryUnit
    JOIN MILITARYUNIT ON BRIGADE.idDivision = MILITARYUNIT.idMilitaryUnit
    JOIN CITY ON MILITARYUNIT.city = CITY.idCity
    ORDER BY idBrigade;

-- BATTALION
 CREATE OR REPLACE VIEW V_BATTALION AS
    SELECT 
    Battalion.idBattalion AS ID,
    M1.name AS NAME,
    Battalion.commander AS COMMANDER,
    MilitaryUnit.name AS BRIGADE,
    CITY.name AS CITY,
    MilitaryUnit.fullLocation AS LOCATION,
    Battalion.militaryForce AS MILITARY_FORCE
    FROM BATTALION
    JOIN MILITARYUNIT M1 ON Battalion.idBattalion = M1.idMilitaryUnit
    JOIN MILITARYUNIT ON Battalion.idBrigade = MILITARYUNIT.idMilitaryUnit
    JOIN CITY ON M1.city = CITY.idCity
    ORDER BY idBattalion;

-- DOCTOR
 CREATE OR REPLACE VIEW V_DOCTOR AS
    SELECT 
    PERSON.documentType AS DOCUMENT_TYPE,
    PERSON.documentNumber AS DOCUMENT_NUMBER,
    PERSON.name AS NAME,
    PERSON.lastname AS LASTNAME,
    PERSON.gender AS GENDER,
    PERSON.birthDate AS BIRTHDATE,
    PERSON.status AS STATUS,
    PERSON.email AS EMAIL,
    DOCTOR.militaryForce AS MILITARY_FORCE,
    Speciality.idSpeciality AS ID_SPECIALTY,
    Speciality.name AS SPECIALTY,
    PERSON.registerDate AS REGISTER_DATE
    FROM DOCTOR
    JOIN PERSON ON DOCTOR.documentType = PERSON.documentType
    AND DOCTOR.documentNumber = PERSON.documentNumber
    left JOIN DoctorSpeciality ON DOCTOR.documentType = DoctorSpeciality.documentType
    AND DOCTOR.documentNumber = DoctorSpeciality.documentNumber
    left JOIN Speciality ON DoctorSpeciality.idSpeciality = Speciality.idSpeciality
    ORDER BY PERSON.documentType, PERSON.documentNumber;


-- NURSE
 CREATE OR REPLACE VIEW V_NURSE AS
    SELECT 
    PERSON.documentType AS DOCUMENT_TYPE,
    PERSON.documentNumber AS DOCUMENT_NUMBER,
    PERSON.name AS NAME,
    PERSON.lastname AS LASTNAME,
    PERSON.gender AS GENDER,
    PERSON.birthDate AS BIRTHDATE,
    PERSON.status AS STATUS,
    PERSON.email AS EMAIL,
    NURSE.militaryForce AS MILITARY_FORCE,
    Speciality.name AS SPECIALTY,
    PERSON.registerDate AS REGISTER_DATE
    FROM NURSE
    JOIN PERSON ON NURSE.documentType = PERSON.documentType
    AND NURSE.documentNumber = PERSON.documentNumber
    LEFT JOIN NurseSpeciality ON NURSE.documentType = NurseSpeciality.documentType
    AND NURSE.documentNumber = NurseSpeciality.documentNumber
    LEFT JOIN Speciality ON NurseSpeciality.idSpeciality = Speciality.idSpeciality
    ORDER BY PERSON.documentType, PERSON.documentNumber;

-- PATIENT
 CREATE OR REPLACE VIEW V_PATIENT AS
    SELECT 
    PERSON.documentType AS DOCUMENT_TYPE,
    PERSON.documentNumber AS DOCUMENT_NUMBER,
    PERSON.name AS NAME,
    PERSON.lastname AS LASTNAME,
    PERSON.gender AS GENDER,
    PERSON.birthDate AS BIRTHDATE,
    PERSON.status AS STATUS,
    PERSON.email AS EMAIL,
    PATIENT.disanId AS DISAN_ID,
    PERSON.registerDate AS REGISTER_DATE
    FROM PATIENT
    JOIN PERSON ON PATIENT.documentType = PERSON.documentType
    AND PATIENT.documentNumber = PERSON.documentNumber
    ORDER BY PATIENT.disanId, PERSON.documentType, PERSON.documentNumber;

-- BACKGROUND PROCEDURE
CREATE OR REPLACE VIEW V_BACKGROUND_PROCEDURE AS
    SELECT 
    ClinicalHistory.documentType AS PATIENT_DOC_TYPE,
    ClinicalHistory.documentNumber AS PATIENT_DOC_NUMBER,
    PROCEDURES.name AS PROCEDURE,
    PROCEDURES.dateProcedure AS DATE_PROCEDURE,
    HOSPITAL.name AS HOSPITAL,
    MANAGEMENTPLAN.instructions AS MANAGEMENT_PLAN,
    MEDICINES.commercialName AS MEDICINE_NAME
    FROM
    ClinicalHistory
    LEFT JOIN BACKGROUND ON ClinicalHistory.idClinicalHistory = BACKGROUND.idClinicalHistory
    LEFT JOIN PROCEDURES ON ClinicalHistory.idClinicalHistory = PROCEDURES.idClinicalHistory
    LEFT JOIN HOSPITAL ON PROCEDURES.idHospital = HOSPITAL.idHospital
    LEFT JOIN MANAGEMENTPLAN ON PROCEDURES.idManagementPlan = ManagementPlan.idManagementPlan
    LEFT JOIN MEDICINES ON MEDICINES.idManagementPlan = PROCEDURES.idManagementPlan
    ORDER BY ClinicalHistory.documentType, ClinicalHistory.documentNumber;


 -- PROCEDURE  
CREATE OR REPLACE VIEW V_PROCEDURES AS 
    SELECT 
    PROCEDURES.idProcedure AS ID_PROCEDURE,
    PROCEDURES.name AS PROCEDURE,
    PROCEDURES.dateProcedure AS DATE_PROCEDURE,
    HOSPITAL.name AS HOSPITAL,
    HOSPITAL.address AS ADDRESS,
    ClinicalHistory.documentType AS PATIENT_DOC_TYPE,
    ClinicalHistory.documentNumber AS PATIENT_DOC_NUMBER,
    PERSON.name AS PATIENT_NAME,
    PERSON.lastname AS PATIENT_LASTNAME,
    PERSON.email AS PATIENT_EMAIL,
    MANAGEMENTPLAN.instructions AS MANAGEMENT_PLAN,
    MEDICINES.commercialName AS MEDICINE_NAME,
    DOCTOR.documentType AS DOCTOR_DOC_TYPE,
    DOCTOR.documentNumber AS DOCTOR_DOC_NUMBER,
    DOCTOR.name AS DOCTOR_NAME,
    DOCTOR.lastname AS DOCTOR_LASTNAME,
    DOCTOR.email AS DOCTOR_EMAIL
    FROM PROCEDURES    
    JOIN ClinicalHistory ON ClinicalHistory.idClinicalHistory = PROCEDURES.idClinicalHistory
    LEFT JOIN BACKGROUND ON ClinicalHistory.idClinicalHistory = BACKGROUND.idClinicalHistory
    LEFT JOIN PERSON ON ClinicalHistory.documentType = PERSON.documentType AND ClinicalHistory.documentNumber = PERSON.documentNumber
    LEFT JOIN ProcedureDoctor ON PROCEDURES.idProcedure = ProcedureDoctor.idProcedure
    LEFT JOIN PERSON DOCTOR ON ProcedureDoctor.documentType = DOCTOR.documentType AND ProcedureDoctor.documentNumber = DOCTOR.documentNumber
    LEFT JOIN HOSPITAL ON PROCEDURES.idHospital = HOSPITAL.idHospital
    LEFT JOIN MANAGEMENTPLAN ON PROCEDURES.idManagementPlan = ManagementPlan.idManagementPlan
    LEFT JOIN MEDICINES ON MEDICINES.idManagementPlan = PROCEDURES.idManagementPlan
    ORDER BY ID_PROCEDURE;


 -- PROCEDURE  
CREATE OR REPLACE VIEW V_NURSE_PROCEDURES AS 
    SELECT 
    PROCEDURES.idProcedure AS ID_PROCEDURE,
    PROCEDURES.name AS PROCEDURE,
    PROCEDURES.dateProcedure AS DATE_PROCEDURE,
    HOSPITAL.name AS HOSPITAL,
    HOSPITAL.address AS ADDRESS,
    ClinicalHistory.documentType AS PATIENT_DOC_TYPE,
    ClinicalHistory.documentNumber AS PATIENT_DOC_NUMBER,
    PERSON.name AS PATIENT_NAME,
    PERSON.lastname AS PATIENT_LASTNAME,
    PERSON.email AS PATIENT_EMAIL,
    MANAGEMENTPLAN.instructions AS MANAGEMENT_PLAN,
    MEDICINES.commercialName AS MEDICINE_NAME,
    NURSE.documentType AS NURSE_DOC_TYPE,
    NURSE.documentNumber AS NURSE_DOC_NUMBER,
    NURSE.name AS NURSE_NAME,
    NURSE.lastname AS NURSE_LASTNAME,
    NURSE.email AS NURSE_EMAIL
    FROM PROCEDURES    
    LEFT JOIN ClinicalHistory ON ClinicalHistory.idClinicalHistory = PROCEDURES.idClinicalHistory
    LEFT JOIN BACKGROUND ON ClinicalHistory.idClinicalHistory = BACKGROUND.idClinicalHistory
    LEFT JOIN PERSON ON ClinicalHistory.documentType = PERSON.documentType AND ClinicalHistory.documentNumber = PERSON.documentNumber
    LEFT JOIN ProcedureNurse ON PROCEDURES.idProcedure = ProcedureNurse.idProcedure
    LEFT JOIN PERSON NURSE ON ProcedureNurse.documentType = NURSE.documentType AND ProcedureNurse.documentNumber = NURSE.documentNumber
    LEFT JOIN HOSPITAL ON PROCEDURES.idHospital = HOSPITAL.idHospital
    LEFT JOIN MANAGEMENTPLAN ON PROCEDURES.idManagementPlan = ManagementPlan.idManagementPlan
    LEFT JOIN MEDICINES ON MEDICINES.idManagementPlan = PROCEDURES.idManagementPlan
    ORDER BY PROCEDURES.idProcedure;
