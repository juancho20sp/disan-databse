--- SUPPLIES INVENTORY
CREATE OR REPLACE PACKAGE PKG_SUPPLIES_INVENTORY AS
    PROCEDURE ADD_SUPPLIES_INVENTORY(xId IN NUMBER);

    FUNCTION READ_SUPPLIES_INVENTORY RETURN SYS_REFCURSOR;

    PROCEDURE UPDATE_SUPPLIES_INVENTORY(
        xOldId IN NUMBER,
        xNewId IN NUMBER
        );
END PKG_SUPPLIES_INVENTORY;

/

--- SUPPLY
CREATE OR REPLACE PACKAGE PKG_SUPPLY AS
    PROCEDURE ADD_SUPPLY(
        xName IN VARCHAR,
        xAmount IN NUMBER,
        xInventory IN NUMBER
        );

    -- READ ALL SUPPLIES
    FUNCTION READ_SUPPLY RETURN SYS_REFCURSOR;

    -- READ SPECIFIC SUPPLIES
    FUNCTION READ_SPEC_SUPPLY(
        xName IN VARCHAR
    ) RETURN SYS_REFCURSOR;

    PROCEDURE UPDATE_SUPPLY(
        xId IN NUMBER, 
        xAmount IN NUMBER,
         xInventory IN NUMBER
        );
END PKG_SUPPLY;

/

--- CITY
CREATE OR REPLACE PACKAGE PKG_CITY AS
    -- CREATE
    PROCEDURE ADD_CITY(
        xName IN VARCHAR,
        xDepartment IN VARCHAR);

    -- READ
    FUNCTION READ_CITY RETURN SYS_REFCURSOR; 

    -- UPDATE
    PROCEDURE UPDATE_CITY(
        xIdCity IN NUMBER,
        xName IN VARCHAR,
        xDepartment IN VARCHAR
        );

END PKG_CITY;

/

-- MILITARY UNIT
CREATE OR REPLACE PACKAGE PKG_MILITARY_UNIT AS
    -- MILITARY UNIT
    PROCEDURE ADD_MILITARY_UNIT(
        xName IN VARCHAR,
        XCity IN NUMBER,
        xFullLocation IN VARCHAR
        );

    FUNCTION READ_MILITARY_UNIT RETURN SYS_REFCURSOR;

    PROCEDURE UPDATE_MILITARY_UNIT(
        xId IN NUMBER,
        xName IN VARCHAR,
        xCity IN NUMBER,
        xFullLocation IN VARCHAR
        );

    -- DIVISION
    PROCEDURE ADD_DIVISION(
        xMilitaryUnit IN NUMBER,
        xCommander IN VARCHAR,
        xMilitaryForce IN VARCHAR);

    FUNCTION READ_DIVISION RETURN SYS_REFCURSOR;


    -- UPDATE
    PROCEDURE UPDATE_DIVISION(
        xId IN NUMBER,
        xCommander IN VARCHAR,
        xMilitaryForce IN VARCHAR
        );

    -- BRIGADE
    PROCEDURE ADD_BRIGADE(
        xMilitaryUnit IN NUMBER,
        xCommander IN VARCHAR,
        xDivision IN NUMBER,
        xMilitaryForce IN VARCHAR);

    FUNCTION READ_BRIGADE RETURN SYS_REFCURSOR;


    -- UPDATE
    PROCEDURE UPDATE_BRIGADE(
        xId IN NUMBER,
        xCommander IN VARCHAR,
        xIdDivision IN NUMBER,
        xMilitaryForce IN VARCHAR
        );

    -- BATTALION
    PROCEDURE ADD_BATTALION(
        xMilitaryUnit IN NUMBER,
        xCommander IN VARCHAR,
        xBrigade IN NUMBER,
        xMilitaryForce IN VARCHAR);

    FUNCTION READ_BATTALION RETURN SYS_REFCURSOR;


    -- UPDATE
    PROCEDURE UPDATE_BATTALION(
        xId IN NUMBER,
        xCommander IN VARCHAR,
        xIdBrigade IN NUMBER,
        xMilitaryForce IN VARCHAR
        );

END PKG_MILITARY_UNIT;

/

--- LABORATORY
CREATE OR REPLACE PACKAGE PKG_LABORATORY AS
    PROCEDURE ADD_LABORATORY(
        xName IN VARCHAR,
        xIdCity IN NUMBER,
        xIdBattalion IN NUMBER,
        xAddress IN VARCHAR,
        xIdSuppliesInventory IN NUMBER
        );

    FUNCTION READ_LABORATORY RETURN SYS_REFCURSOR;

    PROCEDURE UPDATE_LABORATORY(
        xIdLaboratory IN NUMBER,
        xIdBattalion IN NUMBER,
        xAddress IN VARCHAR
        );
END PKG_LABORATORY;

/


--- MEDICATION INVENTORY
CREATE OR REPLACE PACKAGE PKG_MEDICATION_INVENTORY AS
    -- CREATE
    PROCEDURE ADD_MEDICATION_INVENTORY;

    -- READ
    FUNCTION READ_MEDICATION_INVENTORY RETURN SYS_REFCURSOR;
   

    -- UPDATE
    PROCEDURE UPDATE_MEDICATION_INVENTORY(
        xOldId IN NUMBER,
        xNewId IN NUMBER
        );

END PKG_MEDICATION_INVENTORY;

/

--- HOSPITAL
CREATE OR REPLACE PACKAGE PKG_HOSPITAL AS
    -- CREATE
    PROCEDURE ADD_HOSPITAL(
        xName IN VARCHAR,
        xBeds IN NUMBER,
        xUCI IN NUMBER,
        xIdBattalion IN NUMBER,
        xIdCity IN NUMBER,
        xAddress IN VARCHAR,
        xIdSuppliesInventory IN NUMBER,
        xIdMedicationInventory IN NUMBER);

    -- READ
     FUNCTION READ_HOSPITAL RETURN SYS_REFCURSOR;
    

    -- UPDATE
    PROCEDURE UPDATE_HOSPITAL(
        xIdHospital IN NUMBER,
        xName IN VARCHAR,
        xBeds IN NUMBER,
        xUCI IN NUMBER,
        xIdBattalion IN VARCHAR,
        xAddress IN VARCHAR
        );

END PKG_HOSPITAL;

/

--- PERSON
CREATE OR REPLACE PACKAGE PKG_PERSON AS
    -- CREATE
    PROCEDURE ADD_PERSON(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xName IN VARCHAR,
        xLastname IN VARCHAR,
        xGender IN VARCHAR,
        xBirthdate IN DATE,
        xEmail IN VARCHAR
   );

    -- READ
     FUNCTION READ_PERSON RETURN SYS_REFCURSOR;
    

    -- UPDATE
    PROCEDURE UPDATE_PERSON(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xStatus IN VARCHAR,
        xEmail IN VARCHAR
        );


    -- DOCTOR
    -- CREATE
    PROCEDURE ADD_DOCTOR(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xMilitaryForce IN VARCHAR);

    -- READ
     FUNCTION READ_DOCTOR RETURN SYS_REFCURSOR;
    

    -- UPDATE
    PROCEDURE UPDATE_DOCTOR(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xMilitaryForce IN VARCHAR
        );


    -- NURSE
    -- CREATE
    PROCEDURE ADD_NURSE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,        
        xMilitaryForce IN VARCHAR);

    -- READ
     FUNCTION READ_NURSE RETURN SYS_REFCURSOR;
    

    -- UPDATE
    PROCEDURE UPDATE_NURSE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xMilitaryForce IN VARCHAR
        );


    -- PATIENT
    -- CREATE
    PROCEDURE ADD_PATIENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
        );

    -- READ ALL PATIENTS
     FUNCTION READ_PATIENTS RETURN SYS_REFCURSOR;

    -- READ SPECIFIC PATIENT
    FUNCTION READ_SPECIFIC_PATIENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;

    -- READ SPECIFIC PATIENT BACKGROUND PROCEDURES
    FUNCTION READ_PATIENT_BACK_PROC(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;

    -- READ PECIFIC PATIENT BACKGROUND DISEASES
    FUNCTION READ_PATIENT_BACK_DIS(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;
    

   


END PKG_PERSON;

/


--- PATIENT
CREATE OR REPLACE PACKAGE PKG_PATIENT AS
     -- CREATE
    PROCEDURE ADD_PATIENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
        );

    -- READ SPECIFIC PATIENT
    FUNCTION READ_SPECIFIC_PATIENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;

    -- READ SPECIFIC PATIENT BACKGROUND PROCEDURES
    FUNCTION READ_PATIENT_BACK_PROC(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;

    -- READ PECIFIC PATIENT BACKGROUND DISEASES
    FUNCTION READ_PATIENT_BACK_DIS(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;
    
END PKG_PATIENT;

/

CREATE OR REPLACE PACKAGE PKG_SPECIALTY AS
     -- CREATE
    PROCEDURE ADD_SPECIALTY(
        xName IN VARCHAR
        );

    -- READ ALL SPECIALTIES
    FUNCTION READ_SPECIALTIES RETURN SYS_REFCURSOR;

    -- UPDATE
    PROCEDURE UPDATE_SPECIALTY(
        xIdSpeciality IN NUMBER,
        xName IN VARCHAR
        );
    
END PKG_SPECIALTY;

/

--- DOCTOR
CREATE OR REPLACE PACKAGE PKG_DOCTOR AS
    -- CREATE
    PROCEDURE ADD_DOCTOR(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xMilitaryForce IN VARCHAR,
        xIdSpeciality IN NUMBER);

    -- READ ALL DOCTORS
    FUNCTION READ_DOCTOR RETURN SYS_REFCURSOR;

    -- READ DOCTORS BY SPECIALTY
    FUNCTION READ_DOC_SPECIALTY(
        xIdSpeciality IN NUMBER
    ) RETURN SYS_REFCURSOR;

    -- READ SPECIFIC DOCTOR DATA
    FUNCTION READ_SPECIFIC_DOCTOR(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;

    -- READ DOCTOR APPOINTMENTS
    FUNCTION READ_APPOINTMENTS(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;
    
END PKG_DOCTOR;

/

--- NURSE
CREATE OR REPLACE PACKAGE PKG_NURSE AS
    -- CREATE
    PROCEDURE ADD_NURSE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xMilitaryForce IN VARCHAR,
        xIdSpeciality IN NUMBER);

    -- READ ALL NURSES
     FUNCTION READ_NURSE RETURN SYS_REFCURSOR;

    -- READ SPECIFIC NURSE DATA
     FUNCTION READ_SPECIFIC_NURSE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;

    -- READ NURSE APPOINTMENTS
    FUNCTION READ_APPOINTMENTS(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;    

    -- READ ALL DOCTORS
    FUNCTION READ_ALL_DOCTORS RETURN SYS_REFCURSOR;

END PKG_NURSE;

/

--- APPOINTMENTS
CREATE OR REPLACE PACKAGE PKG_APPOINTMENT AS
-- CREATE WITH DOCTOR
    PROCEDURE ADD_APPOINTMENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xAppointmentMotive IN VARCHAR,
        xDate IN DATE,
        xDoctorEmail IN VARCHAR,
        xHospital IN VARCHAR
        );


    -- ADD A NURSE TO THE APPOINTMENT
    PROCEDURE ADD_APPOINTMENT_NURSE(
        xNurseEmail IN VARCHAR,
        xIdAppointment IN NUMBER
        );

    -- READ ALL APPOINTMENTS
    FUNCTION READ_APPOINTMENTS RETURN SYS_REFCURSOR;

    -- READ DOCTOR APPOINTMENTS
    FUNCTION READ_DOC_APPOINTMENTS(
        xDoctorEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR;

    -- READ NURSE APPOINTMENTS
    FUNCTION READ_NUR_APPOINTMENTS(
        xNurseEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR;

    -- READ PATIENT APPOINTMENTS
    FUNCTION READ_PAT_APPOINTMENTS(
        xPatientEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR;
END PKG_APPOINTMENT;

/

--- DISEASE
CREATE OR REPLACE PACKAGE PKG_DISEASE AS
  -- CREATE
    PROCEDURE ADD_DISEASE (
        xName IN VARCHAR,
        xDescription IN VARCHAR
        );

    -- READ
    FUNCTION READ_DISEASES RETURN SYS_REFCURSOR; 
 
END PKG_DISEASE;

/

--- PROCEDURE
CREATE OR REPLACE PACKAGE PKG_PROCEDURE AS
  -- CREATE
    PROCEDURE ADD_PROCEDURE (
        xDate IN DATE,
        xName IN VARCHAR,
        xDescription IN VARCHAR,
        xIdClinicalHistory IN NUMBER,
        xIdHospital IN NUMBER
        );


    -- READ
    FUNCTION READ_PROCEDURES RETURN SYS_REFCURSOR; 
 
END PKG_PROCEDURE;

/

--- BACKGROUND
CREATE OR REPLACE PACKAGE PKG_BACKGROUND AS
  -- CREATE
    PROCEDURE ADD_BACKGROUND (
        xIdClinicalHistory IN NUMBER
        );


    -- READ
    FUNCTION READ_BACKGROUNDS RETURN SYS_REFCURSOR; 
 
END PKG_BACKGROUND;

/

--- MANAGEMENT PLAN
CREATE OR REPLACE PACKAGE BODY PKG_MANAGEMENT_PLAN AS
    -- CREATE
    PROCEDURE ADD_MANAGEMENT_PLAN(
        xInstructions IN VARCHAR
        ) IS
    BEGIN 
        INSERT INTO ManagementPlan VALUES (NULL, xInstructions);
        COMMIT;
    
        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL PLAN DE MANEJO');   
    END;

    -- READ
    FUNCTION READ_MANAGEMENT_PLAN RETURN SYS_REFCURSOR 
    IS INF_MANAGEMENT SYS_REFCURSOR;
    BEGIN
        OPEN INF_MANAGEMENT FOR
            SELECT *
            FROM ManagementPlan
            ORDER BY idManagementPlan;
        RETURN INF_MANAGEMENT ;
    END;

END PKG_MANAGEMENT_PLAN;

/

--- CLINICAL HISTORY
CREATE OR REPLACE PACKAGE PKG_CLINICAL_HISTORY AS
    -- CLINICAL HISTORY
    -- CREATE
    PROCEDURE ADD_CLINICAL_HISTORY(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
        );

    -- READ
    FUNCTION READ_CLINICAL_HISTORY(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;

    -- CREATE
    PROCEDURE ADD_BACKGROUND_DISEASE(
        xIdDisease IN NUMBER,
        xIdBackground IN NUMBER
        );

    -- -- READ
    -- FUNCTION READ_BACKGROUND_DISEASE(
    --     xDocType IN VARCHAR,
    --     xDocNum IN NUMBER
    -- ) RETURN SYS_REFCURSOR;

    -- BACKGROUND PROCEDURE
    -- CREATE
    -- PROCEDURE ADD_BACKGROUND_PROCEDURE(
    --     xDocType IN VARCHAR,
    --     xDocNum IN NUMBER,
    --     xName IN VARCHAR,
    --     xDateProcedure IN DATE,
    --     xManagementPlan IN VARCHAR,
    --     xHospital IN VARCHAR,
    --     xMedName IN VARCHAR,
    --     xMedPresentation IN VARCHAR,
    --     xMedProducer IN VARCHAR,
    --     xMedType IN VARCHAR
    --     );

    -- READ
    -- FUNCTION READ_BACKGROUND_PROCEDURE(
    --     xDocType IN VARCHAR,
    --     xDocNum IN NUMBER
    -- ) RETURN SYS_REFCURSOR;

    -- APPOINTMENT
     -- CREATE
    -- PROCEDURE ADD_APPOINTMENT(
    --     xDocType IN VARCHAR,
    --     xDocNum IN NUMBER,
    --     xAppointmentMotive IN VARCHAR,
    --     xDate IN DATE,
    --     -- PASAR CC Y # DEL MEDICO
    --     xDoctorEmail IN VARCHAR,
    --     xHospital IN VARCHAR
    --     );

    -- READ
    -- FUNCTION READ_APPOINTMENTS RETURN SYS_REFCURSOR;


    -- APPOINTMENT NURSE
    -- PROCEDURE ADD_APPOINTMENT_NURSE(
        -- PASAR CC Y # DE LA ENFERMERA
        -- xNurseEmail IN VARCHAR,
        -- xIdAppointment IN NUMBER
        -- );

END PKG_CLINICAL_HISTORY;

/

--- PROCEDURES
CREATE OR REPLACE PACKAGE PKG_PROCEDURES AS
    -- CREATE
    PROCEDURE ADD_PROCEDURE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xName IN VARCHAR,
        xDateProcedure IN DATE,
        xHospital IN VARCHAR,
        xDoctorEmail IN VARCHAR
        );

    -- READ ALL PROCEDURES
    FUNCTION READ_PROCEDURES RETURN SYS_REFCURSOR;

    -- READ SPECIFIC PATIENT PROCEDURES
    FUNCTION READ_PATIENT_PROCEDURES(
        xEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR;


    -- READ SPECIFIC DOCTOR PROCEDURES
    FUNCTION READ_DOCTOR_PROCEDURES(
        xEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR;

    -- READ SPECIFIC NURSE PROCEDURES
    FUNCTION READ_NURSE_PROCEDURES(
        xEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR;
   

    -- ADD A NURSE TO THE PROCEDURE
    PROCEDURE ADD_PROCEDURE_NURSE(
        xNurseEmail IN VARCHAR,
        xIdProcedure IN NUMBER
        );
END PKG_PROCEDURES;

/