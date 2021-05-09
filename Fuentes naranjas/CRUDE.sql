--- SUPPLY
CREATE OR REPLACE PACKAGE PKG_SUPPLY AS
    PROCEDURE ADD_SUPPLY(
        xName IN VARCHAR,
        xAmount IN NUMBER,
        xInventory IN NUMBER
        );

    FUNCTION READ_SUPPLY RETURN SYS_REFCURSOR;

    PROCEDURE UPDATE_SUPPLY(
        xName IN VARCHAR, 
        xAmount IN NUMBER,
         xInventory IN NUMBER
        );
END PKG_SUPPLY;

/

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

-- MILITARY UNIT
CREATE OR REPLACE PACKAGE PKG_MILITARY_UNIT AS
    -- MILITARY UNIT
    PROCEDURE ADD_MILITARY_UNIT(
        xName IN VARCHAR,
        XCity IN VARCHAR,
        xFullLocation IN VARCHAR
        );

    FUNCTION READ_MILITARY_UNIT RETURN SYS_REFCURSOR;

    PROCEDURE UPDATE_MILITARY_UNIT(
        xId IN NUMBER,
        xName IN VARCHAR,
        xCity IN VARCHAR,
        xFullLocation IN VARCHAR
        );

    -- DIVISION
    PROCEDURE ADD_DIVISION(
        xName IN VARCHAR,
        xCity IN VARCHAR,
        xFullLocation IN VARCHAR,
        xCommander IN VARCHAR,
        xMilitaryForce IN VARCHAR);

    FUNCTION READ_DIVISION RETURN SYS_REFCURSOR;


    -- UPDATE
    PROCEDURE UPDATE_DIVISION(
        xName IN VARCHAR,
        xCommander IN VARCHAR,
        xMilitaryForce IN VARCHAR
        );

    -- BRIGADE
    PROCEDURE ADD_BRIGADE(
        xName IN VARCHAR,
        xCity IN VARCHAR,
        xFullLocation IN VARCHAR,
        xCommander IN VARCHAR,
        xDivision IN VARCHAR,
        xMilitaryForce IN VARCHAR);

    FUNCTION READ_BRIGADE RETURN SYS_REFCURSOR;


    -- UPDATE
    PROCEDURE UPDATE_BRIGADE(
        xName IN VARCHAR,
        xCommander IN VARCHAR,
        xDivision IN VARCHAR,
        xMilitaryForce IN VARCHAR
        );

    -- BATTALION
    PROCEDURE ADD_BATTALION(
        xName IN VARCHAR,
        xCity IN VARCHAR,
        xFullLocation IN VARCHAR,
        xCommander IN VARCHAR,
        xBrigade IN VARCHAR,
        xMilitaryForce IN VARCHAR);

    FUNCTION READ_BATTALION RETURN SYS_REFCURSOR;


    -- UPDATE
    PROCEDURE UPDATE_BATTALION(
        xName IN VARCHAR,
        xCommander IN VARCHAR,
        xBrigade IN VARCHAR,
        xMilitaryForce IN VARCHAR
        );

END PKG_MILITARY_UNIT;

/

--- LABORATORY
CREATE OR REPLACE PACKAGE PKG_LABORATORY AS
    PROCEDURE ADD_LABORATORY(
        xName IN VARCHAR,
        xCity IN VARCHAR,
        xBattalion IN VARCHAR,
        xAddress IN VARCHAR
        );

    FUNCTION READ_LABORATORY RETURN SYS_REFCURSOR;

    PROCEDURE UPDATE_LABORATORY(
        xName IN VARCHAR,
        xBattalion IN VARCHAR,
        xAddress IN VARCHAR
        );
END PKG_LABORATORY;

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

--- MEDICATION INVENTORY
CREATE OR REPLACE PACKAGE PKG_MEDICATION_INVENTORY AS
    -- CREATE
    PROCEDURE ADD_MEDICATION_INVENTORY(xId IN NUMBER);

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
        xBattalion IN VARCHAR,
        xCity IN VARCHAR,
        xAddress IN VARCHAR);

    -- READ
     FUNCTION READ_HOSPITAL RETURN SYS_REFCURSOR;
    

    -- UPDATE
    PROCEDURE UPDATE_HOSPITAL(
        xName IN VARCHAR,
        xBeds IN NUMBER,
        xUCI IN NUMBER,
        xBattalion IN VARCHAR,
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
        xName IN VARCHAR,
        xLastname IN VARCHAR,
        xGender IN VARCHAR,
        xBirthdate IN DATE,
        xEmail IN VARCHAR,
        xMilitaryForce IN VARCHAR,
        xSpecialty IN VARCHAR);

    -- READ
     FUNCTION READ_DOCTOR RETURN SYS_REFCURSOR;
    

    -- UPDATE
    PROCEDURE UPDATE_DOCTOR(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xStatus IN VARCHAR,
        xMilitaryForce IN VARCHAR,
        xSpecialty IN VARCHAR
        );


    -- NURSE
    -- CREATE
    PROCEDURE ADD_NURSE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xName IN VARCHAR,
        xLastname IN VARCHAR,
        xGender IN VARCHAR,
        xBirthdate IN DATE,
        xEmail IN VARCHAR,
        xMilitaryForce IN VARCHAR,
        xSpecialty IN VARCHAR);

    -- READ
     FUNCTION READ_NURSE RETURN SYS_REFCURSOR;
    

    -- UPDATE
    PROCEDURE UPDATE_NURSE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xStatus IN VARCHAR,
        xMilitaryForce IN VARCHAR,
        xSpecialty IN VARCHAR
        );


    -- PATIENT
    -- CREATE
    PROCEDURE ADD_PATIENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xName IN VARCHAR,
        xLastname IN VARCHAR,
        xGender IN VARCHAR,
        xBirthdate IN DATE,
        xEmail IN VARCHAR
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
    

    -- UPDATE
    PROCEDURE UPDATE_PATIENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xStatus IN VARCHAR
        );


END PKG_PERSON;

/

--- PERSON
CREATE OR REPLACE PACKAGE PKG_PATIENT AS
     -- CREATE
    PROCEDURE ADD_PATIENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xName IN VARCHAR,
        xLastname IN VARCHAR,
        xGender IN VARCHAR,
        xBirthdate IN DATE,
        xEmail IN VARCHAR
        );

    -- READ PATIENT
    FUNCTION READ_PATIENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;

    -- READ BACKGROUND PROCEDURES
    FUNCTION READ_BACK_PROC(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;

    -- READ BACKGROUND DISEASES
    FUNCTION READ_BACK_DIS(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;
    
END PKG_PATIENT;

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

    -- BACKGROUND
    -- CREATE
    PROCEDURE ADD_BACKGROUND_DISEASE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xName IN VARCHAR,
        xDescription IN VARCHAR
        );

    -- READ
    FUNCTION READ_BACKGROUND_DISEASE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;

    -- BACKGROUND PROCEDURE
    -- CREATE
    PROCEDURE ADD_BACKGROUND_PROCEDURE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xName IN VARCHAR,
        xDateProcedure IN DATE,
        xManagementPlan IN VARCHAR,
        xHospital IN VARCHAR,
        xMedName IN VARCHAR,
        xMedPresentation IN VARCHAR,
        xMedProducer IN VARCHAR,
        xMedType IN VARCHAR
        );

    -- READ
    FUNCTION READ_BACKGROUND_PROCEDURE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR;

    -- APPOINTMENT
     -- CREATE
    PROCEDURE ADD_APPOINTMENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xAppointmentMotive IN VARCHAR,
        xDate IN DATE,
        xDoctorEmail IN VARCHAR,
        xHospital IN VARCHAR
        );

    -- READ
    FUNCTION READ_APPOINTMENTS RETURN SYS_REFCURSOR;

END PKG_CLINICAL_HISTORY;

/