-- SUPPLIES INVENTORY
CREATE OR REPLACE PACKAGE BODY PKG_SUPPLIES_INVENTORY AS
    -- CREATE
    PROCEDURE ADD_SUPPLIES_INVENTORY(xId IN NUMBER) IS
    BEGIN 
        INSERT INTO SuppliesInventory VALUES (null);
        COMMIT;
      
        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL INVENTARIO DE SUMINISTROS');
    END;

    -- READ
     FUNCTION READ_SUPPLIES_INVENTORY RETURN SYS_REFCURSOR
      IS INF_SUPPLIES_INVENTORY SYS_REFCURSOR;
    BEGIN
        OPEN INF_SUPPLIES_INVENTORY FOR
            SELECT *
            FROM SuppliesInventory;
        RETURN INF_SUPPLIES_INVENTORY ;
    END;
    

    -- UPDATE
    PROCEDURE UPDATE_SUPPLIES_INVENTORY(
        xOldId IN NUMBER,
        xNewId IN NUMBER
        ) IS  

    BEGIN
        UPDATE SuppliesInventory
            SET 
                idSuppliesInventory = xNewId
        WHERE idSuppliesInventory = xOldId;
        COMMIT;

        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR EL INVENTARIO DE SUMINISTROS');
    END;

END PKG_SUPPLIES_INVENTORY;

/

-- SUPPLY
CREATE OR REPLACE PACKAGE BODY PKG_SUPPLY AS
    -- CREATE
    PROCEDURE ADD_SUPPLY(
        xName IN VARCHAR,
        xAmount IN NUMBER,
        xInventory IN NUMBER
        ) IS
    BEGIN 
        INSERT INTO SUPPLY VALUES (null, xName, xAmount, xInventory);
        COMMIT;
      
        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL SUMINISTRO');
    END;

    -- READ ALL SUPLLIES
    FUNCTION READ_SUPPLY RETURN SYS_REFCURSOR IS INF_SUPPLY SYS_REFCURSOR;
    BEGIN
        OPEN INF_SUPPLY FOR
            SELECT *
            FROM V_SUPPLIES;
        RETURN INF_SUPPLY ;
    END;

    -- READ SPECIFIC SUPPLIES
    FUNCTION READ_SPEC_SUPPLY(
        xName IN VARCHAR
    ) RETURN SYS_REFCURSOR IS INF_SUPPLY SYS_REFCURSOR;
    BEGIN
        OPEN INF_SUPPLY FOR
            SELECT *
            FROM V_SUPPLIES
            WHERE NAME LIKE xName;
        RETURN INF_SUPPLY ;
    END;
    

    -- UPDATE
    PROCEDURE UPDATE_SUPPLY(
        xId IN NUMBER, 
        xAmount IN NUMBER,
         xInventory IN NUMBER
        ) IS  

    BEGIN      
        UPDATE Supply
            SET amount = xAmount, idSuppliesInventory = xInventory
        WHERE idSupply = xId;

        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR EL SUMINISTRO');
    END;

END PKG_SUPPLY;

/

-- CITY
CREATE OR REPLACE PACKAGE BODY PKG_CITY AS
    -- CREATE
    PROCEDURE ADD_CITY(
        xName IN VARCHAR,
        xDepartment IN VARCHAR) IS
    BEGIN  
        INSERT INTO City VALUES (NULL, xName, xDepartment);
        COMMIT;
    
        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR LA CIUDAD');     
    END;

    -- READ
     FUNCTION READ_CITY RETURN SYS_REFCURSOR
      IS INF_CITY SYS_REFCURSOR;
    BEGIN
        OPEN INF_CITY FOR
            SELECT *
            FROM CITY;
        RETURN INF_CITY ;
    END;
    

    -- UPDATE
    PROCEDURE UPDATE_CITY(
        xIdCity IN NUMBER,
        xName IN VARCHAR,
        xDepartment IN VARCHAR
        ) IS  

    BEGIN
        UPDATE CITY
            SET 
                name = xName,
                department = xDepartment
            WHERE idCity = xIdCity;
            COMMIT;

        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR LA CIUDAD');      
    END;

END PKG_CITY;

/


-- MILITARY UNIT
CREATE OR REPLACE PACKAGE BODY PKG_MILITARY_UNIT AS
    -- MILITARY UNIT
    -- CREATE
    PROCEDURE ADD_MILITARY_UNIT(
        xName IN VARCHAR,
        xCity IN NUMBER,
        xFullLocation IN VARCHAR) IS
    BEGIN 
        INSERT INTO MilitaryUnit VALUES (NULL, xName, xCity, xFullLocation);
        COMMIT;
    
    
        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20003,'ERROR AL INSERTAR LA UNIDAD MILITAR');
    END;


    -- READ
    FUNCTION READ_MILITARY_UNIT RETURN SYS_REFCURSOR
      IS INF_MILITARY_UNIT SYS_REFCURSOR;
    BEGIN
        OPEN INF_MILITARY_UNIT FOR
            SELECT *
            FROM V_MILITARY_UNIT;
        RETURN INF_MILITARY_UNIT ;
    END;

    -- UPDATE
    PROCEDURE UPDATE_MILITARY_UNIT(
        xId IN NUMBER,
        xName IN VARCHAR,
        xCity IN NUMBER,
        xFullLocation IN VARCHAR
        ) IS  

    BEGIN   
        UPDATE MilitaryUnit
        SET 
            name = xName,
            city = xCity,
            fullLocation = xFullLocation
        WHERE idMilitaryUnit = xId;
        COMMIT;

        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR LA UNIDAD MILITAR');    
    END;

    -- DIVISION
    -- CREATE
    PROCEDURE ADD_DIVISION(
        xMilitaryUnit IN NUMBER,
        xCommander IN VARCHAR,
        xMilitaryForce IN VARCHAR) IS
        BEGIN   
            INSERT INTO Division VALUES (xMilitaryUnit, xCommander, xMilitaryForce);
            COMMIT;           
        
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20003,'ERROR AL INSERTAR LA DIVISIÓN');     
        END;
    
    
    -- READ
    FUNCTION READ_DIVISION RETURN SYS_REFCURSOR
      IS INF_DIVISION  SYS_REFCURSOR;
    BEGIN
        OPEN INF_DIVISION FOR
            SELECT *
            FROM V_DIVISION;
        RETURN INF_DIVISION ;
    END;

    -- UPDATE
    PROCEDURE UPDATE_DIVISION(
        xId IN NUMBER,
        xCommander IN VARCHAR,
        xMilitaryForce IN VARCHAR
        ) IS  

    BEGIN
        UPDATE DIVISION
            SET 
                commander = xCommander,
                militaryForce = xMilitaryForce
        WHERE idDivision = xId;
        COMMIT;

        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR LA DIVISION'); 
    END;

    -- BRIGADE
    -- CREATE
    PROCEDURE ADD_BRIGADE(
        xMilitaryUnit IN NUMBER,
        xCommander IN VARCHAR,
        xDivision IN NUMBER,
        xMilitaryForce IN VARCHAR) IS
        BEGIN  
            INSERT INTO Brigade VALUES (xMilitaryUnit, xCommander, xMilitaryForce,xDivision);
            COMMIT;           
        
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20003,'ERROR AL INSERTAR LA BRIGADA');
            
        END;
    
    
    -- READ
    FUNCTION READ_BRIGADE RETURN SYS_REFCURSOR
      IS INF_BRIGADE  SYS_REFCURSOR;
    BEGIN
        OPEN INF_BRIGADE FOR
            SELECT *
            FROM V_BRIGADE;
        RETURN INF_BRIGADE ;
    END;

    -- UPDATE
    PROCEDURE UPDATE_BRIGADE(
        xId IN NUMBER,
        xCommander IN VARCHAR,
        xIdDivision IN NUMBER,
        xMilitaryForce IN VARCHAR
        ) IS  

    BEGIN
        UPDATE BRIGADE
            SET 
                commander = xCommander,
                militaryForce = xMilitaryForce,
                idDivision = xIdDivision
        WHERE idBrigade = xId;
        COMMIT;

        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR LA BRIGADA');
    END;


    -- BATTALION
    -- CREATE
    PROCEDURE ADD_BATTALION(
        xMilitaryUnit IN NUMBER,
        xCommander IN VARCHAR,
        xBrigade IN NUMBER,
        xMilitaryForce IN VARCHAR) IS
        BEGIN              
            INSERT INTO Battalion VALUES (xMilitaryUnit, xCommander, xMilitaryForce, xBrigade);
            COMMIT;           
        
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20003,'ERROR AL INSERTAR EL BATALLÓN');
        END;
    
    
    -- READ
    FUNCTION READ_BATTALION RETURN SYS_REFCURSOR
      IS INF_BATTALION  SYS_REFCURSOR;
    BEGIN
        OPEN INF_BATTALION FOR
            SELECT *
            FROM V_BATTALION;
        RETURN INF_BATTALION ;
    END;

    -- UPDATE
    PROCEDURE UPDATE_BATTALION(
        xId IN NUMBER,
        xCommander IN VARCHAR,
        xIdBrigade IN NUMBER,
        xMilitaryForce IN VARCHAR
        ) IS  

    BEGIN 
        UPDATE BATTALION
            SET 
                commander = xCommander,
                militaryForce = xMilitaryForce,
                idBrigade = xIdBrigade
        WHERE idBattalion = xId;
        COMMIT;

        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR EL BATALLÓN');        
    END;

END PKG_MILITARY_UNIT;

/

-- LABORATORY
CREATE OR REPLACE PACKAGE BODY PKG_LABORATORY AS
    -- CREATE
    PROCEDURE ADD_LABORATORY(
        xName IN VARCHAR,
        xIdCity IN NUMBER,
        xIdBattalion IN NUMBER,
        xAddress IN VARCHAR,
        xIdSuppliesInventory IN NUMBER) IS
    BEGIN 
        INSERT INTO Laboratory VALUES (NULL, xName, xAddress, xIdCity, xIdSuppliesInventory, xIdBattalion);
        COMMIT;
    
        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL LABORATORIO');
    END;

    -- READ
     FUNCTION READ_LABORATORY RETURN SYS_REFCURSOR
      IS INF_LABORATORY SYS_REFCURSOR;
    BEGIN
        OPEN INF_LABORATORY FOR
            SELECT *
            FROM V_LABORATORY;
        RETURN INF_LABORATORY ;
    END;
    

    -- UPDATE
    PROCEDURE UPDATE_LABORATORY(
        xIdLaboratory IN NUMBER,
        xIdBattalion IN NUMBER,
        xAddress IN VARCHAR
        ) IS  

    BEGIN
        UPDATE LABORATORY
            SET 
                idBattalion = xIdBattalion,
                address = xAddress
            WHERE idLaboratory = xIdLaboratory;
            COMMIT;

        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR EL LABORATORIO');     
    END;

END PKG_LABORATORY;

/

-- MEDICATION INVENTORY
CREATE OR REPLACE PACKAGE BODY PKG_MEDICATION_INVENTORY AS
    -- CREATE
    PROCEDURE ADD_MEDICATION_INVENTORY IS
    BEGIN 
        INSERT INTO MedicationInventory VALUES (null);
        COMMIT;
      
        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL INVENTARIO DE MEDICAMENTOS');
    END;

    -- READ
    FUNCTION READ_MEDICATION_INVENTORY RETURN SYS_REFCURSOR
      IS INF_MEDICATION_INVENTORY SYS_REFCURSOR;
    BEGIN
        OPEN INF_MEDICATION_INVENTORY FOR
            SELECT *
            FROM MedicationInventory;
        RETURN INF_MEDICATION_INVENTORY ;
    END;
    

    -- UPDATE
    PROCEDURE UPDATE_MEDICATION_INVENTORY(
        xOldId IN NUMBER,
        xNewId IN NUMBER
        ) IS  

    BEGIN
        UPDATE MedicationInventory
            SET 
                idMedicationInventory = xNewId
        WHERE idMedicationInventory = xOldId;
        COMMIT;

        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR EL INVENTARIO DE MEDICAMENTOS');
    END;

END PKG_MEDICATION_INVENTORY;

/

-- HOSPITAL
CREATE OR REPLACE PACKAGE BODY PKG_HOSPITAL AS
    -- CREATE
    PROCEDURE ADD_HOSPITAL(
        xName IN VARCHAR,
        xBeds IN NUMBER,
        xUCI IN NUMBER,
        xBattalion IN VARCHAR,
        xCity IN VARCHAR,
        xAddress IN VARCHAR) IS
    BEGIN 
        DECLARE
            xIdSuppliesInventory NUMBER;
            xIdMedicationInventory NUMBER;
            xIdCity NUMBER;
            xIdBattalion NUMBER;

        BEGIN    
            INSERT INTO SuppliesInventory VALUES (NULL);
            INSERT INTO MedicationInventory VALUES (NULL);

            SELECT idSuppliesInventory INTO xIdSuppliesInventory FROM SuppliesInventory
            WHERE ROWNUM = 1
            ORDER BY idSuppliesInventory DESC;

            SELECT idMedicationInventory INTO xIdMedicationInventory FROM MedicationInventory
            WHERE ROWNUM = 1
            ORDER BY idMedicationInventory DESC;

            SELECT idCity INTO xIdCity FROM CITY 
            WHERE name LIKE xCity;

            SELECT idMilitaryUnit INTO xIdBattalion FROM MILITARYUNIT
            WHERE name LIKE xBattalion;

            INSERT INTO Hospital VALUES (NULL, xName, xAddress, xBeds, xUCI, xIdBattalion, xIdSuppliesInventory, xIdCity, xIdMedicationInventory);
            COMMIT;
      
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL HOSPITAL');
        END;
    END;

    -- READ
     FUNCTION READ_HOSPITAL RETURN SYS_REFCURSOR
      IS INF_HOSPITAL SYS_REFCURSOR;
    BEGIN
        OPEN INF_HOSPITAL FOR
            SELECT *
            FROM V_HOSPITAL;
        RETURN INF_HOSPITAL ;
    END;
    

    -- UPDATE
    PROCEDURE UPDATE_HOSPITAL(
        xName IN VARCHAR,
        xBeds IN NUMBER,
        xUCI IN NUMBER,
        xBattalion IN VARCHAR,
        xAddress IN VARCHAR
        ) IS  

    BEGIN
        DECLARE
            xIdHospital NUMBER;
            xIdBattalion NUMBER;

        BEGIN
            SELECT idHospital INTO xIdHospital FROM Hospital
            WHERE name LIKE xName;

            SELECT idMilitaryUnit INTO xIdBattalion FROM MILITARYUNIT
            WHERE name LIKE xBattalion;

            UPDATE Hospital
                SET 
                    address = xAddress,
                    bedNumber = xBeds,
                    UCINumber = xUCI,
                    idBattalion = xIdBattalion
                WHERE idHospital = xIdHospital;
                COMMIT;

            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR EL HOSPITAL');
        END;
    END;

END PKG_HOSPITAL;

/

-- PERSON
CREATE OR REPLACE PACKAGE BODY PKG_PERSON AS
    -- PERSON
    -- CREATE
    PROCEDURE ADD_PERSON(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xName IN VARCHAR,
        xLastname IN VARCHAR,
        xGender IN VARCHAR,
        xBirthdate IN DATE,
        xEmail IN VARCHAR) IS
    BEGIN 

        INSERT INTO Person VALUES (xDocType, xDocNum, xName, xLastname, xGender, xBirthdate, NULL, xEmail, NULL);
        COMMIT;
    
        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR LA PERSONA');
    END;

    -- READ
     FUNCTION READ_PERSON RETURN SYS_REFCURSOR
      IS INF_PERSON SYS_REFCURSOR;
    BEGIN
        OPEN INF_PERSON FOR
            SELECT *
            FROM Person;
        RETURN INF_PERSON ;
    END;
    

    -- UPDATE
    PROCEDURE UPDATE_PERSON(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xStatus IN VARCHAR,
        xEmail IN VARCHAR
        ) IS    
    BEGIN
        UPDATE Person
            SET 
                status = xStatus,
                email = xEmail
            WHERE documentType = xDocType AND documentNumber = xDocNum;
            COMMIT;

        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR LA PERSONA');
    END;


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
        xSpecialty IN VARCHAR) IS
    BEGIN 
        DECLARE
            xIdSpeciality NUMBER;

        BEGIN
            INSERT INTO Person VALUES (xDocType, xDocNum, xName, xLastname, xGender, xBirthdate, NULL, xEmail, NULL);

            INSERT INTO DOCTOR VALUES (xDocType, xDocNum, xMilitaryForce);

            SELECT idSpeciality INTO xIdSpeciality FROM Speciality
            WHERE name LIKE xSpecialty;

            INSERT INTO DoctorSpeciality VALUES (xDocType, xDocNum, xIdSpeciality);
            COMMIT;
    
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL DOCTOR');
        END;
        
    END;

    -- READ
     FUNCTION READ_DOCTOR RETURN SYS_REFCURSOR
      IS INF_DOCTOR SYS_REFCURSOR;
    BEGIN
        OPEN INF_DOCTOR FOR
            SELECT *
            FROM V_DOCTOR;
        RETURN INF_DOCTOR ;
    END;

    -- READ DOCTOR APPOINTMENTS
    FUNCTION READ_APPOINTMENTS RETURN SYS_REFCURSOR 
    IS INF_APPOINTMENTS  SYS_REFCURSOR;
    BEGIN
        OPEN INF_APPOINTMENTS FOR
            SELECT *
            FROM V_APPOINTMENT;
        RETURN INF_APPOINTMENTS ;
    END;
    

    -- UPDATE
    PROCEDURE UPDATE_DOCTOR(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xStatus IN VARCHAR,
        xMilitaryForce IN VARCHAR,
        xSpecialty IN VARCHAR
        ) IS    
    BEGIN
        DECLARE
            xIdSpeciality NUMBER;

        BEGIN
            UPDATE Person
            SET 
                status = xStatus
            WHERE documentType = xDocType AND documentNumber = xDocNum;

            UPDATE DOCTOR
            SET
                militaryForce = xMilitaryForce
            WHERE documentType = xDocType AND documentNumber = xDocNum;

            SELECT idSpeciality INTO xIdSpeciality FROM Speciality
            WHERE name LIKE xSpecialty;

            UPDATE DoctorSpeciality
            SET
                idSpeciality = xIdSpeciality
            WHERE documentType = xDocType AND documentNumber = xDocNum;
            COMMIT;

            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR EL DOCTOR');
        END;
    END;


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
        xSpecialty IN VARCHAR) IS
    BEGIN 
        DECLARE
            xIdSpeciality NUMBER;

        BEGIN
            INSERT INTO Person VALUES (xDocType, xDocNum, xName, xLastname, xGender, xBirthdate, NULL, xEmail, NULL);

            INSERT INTO Nurse VALUES (xDocType, xDocNum, xMilitaryForce);

            SELECT idSpeciality INTO xIdSpeciality FROM Speciality
            WHERE name LIKE xSpecialty;

            INSERT INTO NurseSpeciality VALUES (xDocType, xDocNum, xIdSpeciality);
            COMMIT;
    
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL ENFERMERO');
        END;
        
    END;

    -- READ
     FUNCTION READ_NURSE RETURN SYS_REFCURSOR
      IS READ_NURSE SYS_REFCURSOR;
    BEGIN
        OPEN READ_NURSE FOR
            SELECT *
            FROM V_NURSE;
        RETURN READ_NURSE ;
    END;
    

    -- UPDATE
    PROCEDURE UPDATE_NURSE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xStatus IN VARCHAR,
        xMilitaryForce IN VARCHAR,
        xSpecialty IN VARCHAR
        ) IS    
    BEGIN
        DECLARE
            xIdSpeciality NUMBER;

        BEGIN
            UPDATE Person
            SET 
                status = xStatus
            WHERE documentType = xDocType AND documentNumber = xDocNum;

            UPDATE Nurse
            SET
                militaryForce = xMilitaryForce
            WHERE documentType = xDocType AND documentNumber = xDocNum;

            SELECT idSpeciality INTO xIdSpeciality FROM Speciality
            WHERE name LIKE xSpecialty;

            UPDATE NurseSpeciality
            SET
                idSpeciality = xIdSpeciality
            WHERE documentType = xDocType AND documentNumber = xDocNum;
            COMMIT;

            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR EL ENFERMERO');
        END;
    END;


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
        ) IS
    BEGIN       
        INSERT INTO Person VALUES (xDocType, xDocNum, xName, xLastname, xGender, xBirthdate, NULL, xEmail, NULL);

        INSERT INTO Patient VALUES (xDocType, xDocNum, NULL);
        COMMIT;

        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL PACIENTE');
    END;

    -- READ ALL PATIENTS
     FUNCTION READ_PATIENTS RETURN SYS_REFCURSOR
      IS INF_PATIENTS SYS_REFCURSOR;
    BEGIN
        OPEN INF_PATIENTS FOR
            SELECT *
            FROM V_PATIENT;
        RETURN INF_PATIENTS ;
    END;

    -- READ SPECIFIC PATIENT
    FUNCTION READ_SPECIFIC_PATIENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR 
    IS INF_SPECIFIC_PATIENT SYS_REFCURSOR;
    BEGIN
        OPEN INF_SPECIFIC_PATIENT FOR
            SELECT *
            FROM V_PATIENT
            WHERE DOCUMENT_TYPE = xDocType AND DOCUMENT_NUMBER = xDocNum;
        RETURN INF_SPECIFIC_PATIENT ;
    END;

    -- READ SPECIFIC PATIENT BACKGROUND PROCEDURES
    FUNCTION READ_PATIENT_BACK_PROC(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR 
    IS INF_PATIENT_BACK_PROC SYS_REFCURSOR;
    BEGIN
        OPEN INF_PATIENT_BACK_PROC FOR
            SELECT *
            FROM V_BACKGROUND_PROCEDURE
            WHERE PATIENT_DOC_TYPE = xDocType AND PATIENT_DOC_NUMBER = xDocNum;
        RETURN INF_PATIENT_BACK_PROC ;
    END;

    -- READ PECIFIC PATIENT BACKGROUND DISEASES
    FUNCTION READ_PATIENT_BACK_DIS(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR 
    IS INF_PATIENT_BACK_DIS SYS_REFCURSOR;
    BEGIN
        OPEN INF_PATIENT_BACK_DIS FOR
            SELECT *
            FROM V_BACKGROUND_DISEASE
            WHERE PATIENT_DOC_TYPE = xDocType AND PATIENT_DOC_NUMBER = xDocNum;
        RETURN INF_PATIENT_BACK_DIS ;
    END;
    

    -- UPDATE
    PROCEDURE UPDATE_PATIENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xStatus IN VARCHAR
        ) IS    
    BEGIN
        UPDATE Person
        SET 
            status = xStatus
        WHERE documentType = xDocType AND documentNumber = xDocNum;
        COMMIT;

        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR EL PACIENTE'); 
    END;
  

END PKG_PERSON;

/

-- PATIENT
CREATE OR REPLACE PACKAGE BODY PKG_PATIENT AS
    -- CREATE
    PROCEDURE ADD_PATIENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xName IN VARCHAR,
        xLastname IN VARCHAR,
        xGender IN VARCHAR,
        xBirthdate IN DATE,
        xEmail IN VARCHAR
        ) IS
    BEGIN       
        INSERT INTO Person VALUES (xDocType, xDocNum, xName, xLastname, xGender, xBirthdate, NULL, xEmail, NULL);

        INSERT INTO Patient VALUES (xDocType, xDocNum, NULL);
        COMMIT;

        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL PACIENTE');
    END;

    -- READ PATIENT
    FUNCTION READ_PATIENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR 
    IS INF_PATIENT SYS_REFCURSOR;
    BEGIN
        OPEN INF_PATIENT FOR
            SELECT *
            FROM V_PATIENT
            WHERE DOCUMENT_TYPE = xDocType AND DOCUMENT_NUMBER = xDocNum;
        RETURN INF_PATIENT ;
    END;

    -- READ PATIENT BACKGROUND PROCEDURES
    FUNCTION READ_BACK_PROC(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR 
    IS INF_BACK_PROC SYS_REFCURSOR;
    BEGIN
        OPEN INF_BACK_PROC FOR
            SELECT *
            FROM V_BACKGROUND_PROCEDURE
            WHERE PATIENT_DOC_TYPE = xDocType AND PATIENT_DOC_NUMBER = xDocNum;
        RETURN INF_BACK_PROC ;
    END;

    -- READ PATIENT BACKGROUND DISEASES
    FUNCTION READ_BACK_DIS(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR 
    IS INF_BACK_DIS SYS_REFCURSOR;
    BEGIN
        OPEN INF_BACK_DIS FOR
            SELECT *
            FROM V_BACKGROUND_DISEASE
            WHERE PATIENT_DOC_TYPE = xDocType AND PATIENT_DOC_NUMBER = xDocNum;
        RETURN INF_BACK_DIS ;
    END;
END PKG_PATIENT;

/

-- DOCTOR
CREATE OR REPLACE PACKAGE BODY PKG_DOCTOR AS
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
        xSpecialty IN VARCHAR) IS
    BEGIN 
        DECLARE
            xIdSpeciality NUMBER;

        BEGIN
            INSERT INTO Person VALUES (xDocType, xDocNum, xName, xLastname, xGender, xBirthdate, NULL, xEmail, NULL);

            INSERT INTO DOCTOR VALUES (xDocType, xDocNum, xMilitaryForce);

            SELECT idSpeciality INTO xIdSpeciality FROM Speciality
            WHERE name LIKE xSpecialty;

            INSERT INTO DoctorSpeciality VALUES (xDocType, xDocNum, xIdSpeciality);
            COMMIT;
    
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL DOCTOR');
        END;
        
    END;

    -- READ ALL DOCTORS
     FUNCTION READ_DOCTOR RETURN SYS_REFCURSOR
      IS INF_DOCTOR SYS_REFCURSOR;
    BEGIN
        OPEN INF_DOCTOR FOR
            SELECT *
            FROM V_DOCTOR;
        RETURN INF_DOCTOR ;
    END;

    -- READ SPECIFIC DOCTOR DATA
     FUNCTION READ_SPECIFIC_DOCTOR(
        xDoctorEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR
      IS INF_DOCTOR SYS_REFCURSOR;
    BEGIN
        OPEN INF_DOCTOR FOR
            SELECT *
            FROM V_DOCTOR
            WHERE EMAIL = xDoctorEmail;
        RETURN INF_DOCTOR ;
    END;

    -- READ DOCTOR APPOINTMENTS
    FUNCTION READ_APPOINTMENTS(
        xDoctorEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR 
    IS INF_APPOINTMENTS  SYS_REFCURSOR;
    BEGIN
        OPEN INF_APPOINTMENTS FOR
            SELECT *
            FROM V_APPOINTMENT_DOCTOR
            WHERE DOCTOR_EMAIL = xDoctorEmail;
        RETURN INF_APPOINTMENTS ;
    END;
    
END PKG_DOCTOR;

/

-- NURSE
CREATE OR REPLACE PACKAGE BODY PKG_NURSE AS
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
        xSpecialty IN VARCHAR) IS
    BEGIN 
        DECLARE
            xIdSpeciality NUMBER;

        BEGIN
            INSERT INTO Person VALUES (xDocType, xDocNum, xName, xLastname, xGender, xBirthdate, NULL, xEmail, NULL);

            INSERT INTO Nurse VALUES (xDocType, xDocNum, xMilitaryForce);

            SELECT idSpeciality INTO xIdSpeciality FROM Speciality
            WHERE name LIKE xSpecialty;

            INSERT INTO NurseSpeciality VALUES (xDocType, xDocNum, xIdSpeciality);
            COMMIT;
    
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL ENFERMERO');
        END;
        
    END;

    -- READ ALL NURSES
     FUNCTION READ_NURSE RETURN SYS_REFCURSOR
      IS READ_NURSE SYS_REFCURSOR;
    BEGIN
        OPEN READ_NURSE FOR
            SELECT *
            FROM V_NURSE;
        RETURN READ_NURSE ;
    END;

    -- READ SPECIFIC NURSE DATA
     FUNCTION READ_SPECIFIC_NURSE(
        xNurseEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR
      IS INF_NURSE SYS_REFCURSOR;
    BEGIN
        OPEN INF_NURSE FOR
            SELECT *
            FROM V_NURSE
            WHERE EMAIL = xNurseEmail;
        RETURN INF_NURSE ;
    END;

    -- READ NURSE APPOINTMENTS
    FUNCTION READ_APPOINTMENTS(
        xNurseEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR 
    IS INF_APPOINTMENTS  SYS_REFCURSOR;
    BEGIN
        OPEN INF_APPOINTMENTS FOR
            SELECT *
            FROM V_APPOINTMENT_NURSE
            WHERE NURSE_EMAIL = xNurseEmail;
        RETURN INF_APPOINTMENTS ;
    END;
END PKG_NURSE;

/

-- CLINICAL HISTORY
CREATE OR REPLACE PACKAGE BODY PKG_CLINICAL_HISTORY AS
    -- CLINICAL HISTORY
    -- CREATE
    PROCEDURE ADD_CLINICAL_HISTORY(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
        ) IS
    BEGIN 
        DECLARE
            xIdClinicalHistory NUMBER;
        BEGIN
            INSERT INTO ClinicalHistory VALUES (NULL, xDocType, xDocNum);

            SELECT idClinicalHistory INTO xIdClinicalHistory FROM ClinicalHistory
           -- WHERE ROWNUM = 1
            --ORDER BY idClinicalHistory DESC;
            WHERE documentType = xDocType AND documentNumber = xDocNum;

            

            INSERT INTO Background VALUES (NULL, xIdClinicalHistory);
            COMMIT;
      
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR LA HISTORIA CLÍNICA');
        END;
    END;

    -- READ
    FUNCTION READ_CLINICAL_HISTORY(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
        ) RETURN SYS_REFCURSOR 
    IS INF_CLINICAL_HISTORY SYS_REFCURSOR;
    BEGIN
        OPEN INF_CLINICAL_HISTORY FOR
            SELECT *
            FROM V_CLINICAL_HISTORY
            WHERE PATIENT_DOC_TYPE = xDocType AND PATIENT_DOC_NUMBER = xDocNum;
        RETURN INF_CLINICAL_HISTORY ;
    END;

    -- BACKGROUND DISEASE
    -- CREATE
    PROCEDURE ADD_BACKGROUND_DISEASE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xName IN VARCHAR,
        xDescription IN VARCHAR
        ) IS
    BEGIN 
        DECLARE
            xIdClinicalHistory NUMBER;
            xIdBackground NUMBER;

        BEGIN
            SELECT idClinicalHistory INTO xIdClinicalHistory FROM
            ClinicalHistory 
            WHERE ROWNUM = 1 AND
            documentType = xDocType AND documentNumber = xDocNum;

            SELECT idBackground INTO xIdBackground FROM Background
            WHERE idClinicalHistory = xIdClinicalHistory;

            INSERT INTO Disease VALUES (NULL, xName, xDescription, xIdBackground);
            COMMIT;
      
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL ANTECEDENTE MÉDICO');
        END;
    END;

    -- READ
    FUNCTION READ_BACKGROUND_DISEASE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR 
    IS INF_BACKGROUND_DISEASE SYS_REFCURSOR;
    BEGIN
        OPEN INF_BACKGROUND_DISEASE FOR
            SELECT *
            FROM V_BACKGROUND_DISEASE
            WHERE PATIENT_DOC_TYPE = xDocType AND PATIENT_DOC_NUMBER = xDocNum;
        RETURN INF_BACKGROUND_DISEASE ;
    END;


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
        ) IS
    BEGIN 
        DECLARE
            xIdClinicalHistory NUMBER;
            xIdBackground NUMBER;
            xIdManagementPlan NUMBER;
            xIdHospital NUMBER;
            xIdMedicationInventory NUMBER;
            xIdMedicationType NUMBER;

        BEGIN
            SELECT idMedicationType INTO xIdMedicationType FROM MedicationType
            WHERE name LIKE xMedType;

            SELECT idHospital INTO xIdHospital FROM HOSPITAL
            WHERE name LIKE xHospital;

            SELECT idMedicationInventory INTO xIdMedicationInventory FROM HOSPITAL
            WHERE name LIKE xHospital;

            INSERT INTO ManagementPlan VALUES(NULL, xManagementPlan);

            SELECT idManagementPlan INTO xIdManagementPlan FROM ManagementPlan
            WHERE ROWNUM = 1
            ORDER BY idManagementPlan DESC;

            INSERT INTO Medicines VALUES(NULL, xMedName, xMedPresentation, xMedProducer, xIdManagementPlan, xIdMedicationType, xIdMedicationInventory);
            
            SELECT idClinicalHistory INTO xIdClinicalHistory FROM
            ClinicalHistory 
            WHERE ROWNUM = 1 AND
            documentType = xDocType AND documentNumber = xDocNum;

            SELECT idBackground INTO xIdBackground FROM Background
            WHERE idClinicalHistory = xIdClinicalHistory;

            INSERT INTO Procedures VALUES (NULL, xName, xDateProcedure, xIdBackground, xIdManagementPlan, xIdClinicalHistory, xIdHospital);
            COMMIT;


      
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL ANTECEDENTE QUIÚRGICO');
        END;
    END;

    -- READ
    FUNCTION READ_BACKGROUND_PROCEDURE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER
    ) RETURN SYS_REFCURSOR 
    IS INF_BACKGROUND_PROCEDURE SYS_REFCURSOR;
    BEGIN
        OPEN INF_BACKGROUND_PROCEDURE FOR
            SELECT *
            FROM V_BACKGROUND_PROCEDURE
            WHERE PATIENT_DOC_TYPE = xDocType AND PATIENT_DOC_NUMBER = xDocNum;
        RETURN INF_BACKGROUND_PROCEDURE ;
    END;


    -- APPOINTMENT
    -- CREATE
    PROCEDURE ADD_APPOINTMENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xAppointmentMotive IN VARCHAR,
        xDate IN DATE,
        xDoctorEmail IN VARCHAR,
        xHospital IN VARCHAR
        ) IS
    BEGIN 
        DECLARE
            xIdClinicalHistory NUMBER;
            xIdHospital NUMBER;
            xDoctorDocType VARCHAR(2);
            xDoctorDocNumber NUMBER;
            xIdAppointment NUMBER;
        BEGIN
            SELECT documentType INTO xDoctorDocType FROM PERSON
            WHERE email LIKE xDoctorEmail;

            SELECT documentNumber INTO xDoctorDocNumber FROM PERSON
            WHERE email LIKE xDoctorEmail;

            SELECT idHospital INTO xIdHospital FROM HOSPITAL
            WHERE name LIKE xHospital;

            SELECT idClinicalHistory INTO xIdClinicalHistory FROM
            ClinicalHistory 
            WHERE ROWNUM = 1 AND
            documentType = xDocType AND documentNumber = xDocNum;

            INSERT INTO Appointment VALUES (NULL, xAppointmentMotive, NULL, xDate,  xIdClinicalHistory, NULL, xIdHospital);
            

            SELECT idAppointment INTO xIdAppointment FROM
            Appointment 
            WHERE ROWNUM = 1 AND
            idClinicalHistory = xIdClinicalHistory
            ORDER BY idAppointment DESC;


            INSERT INTO AppointmentDoctor VALUES (xIdAppointment, xDoctorDocType, xDoctorDocNumber);

            COMMIT;

      
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR LA CITA MÉDICA');
        END;
    END;


    -- CREATE
    PROCEDURE ADD_APPOINTMENT_NURSE(
        xNurseEmail IN VARCHAR,
        xIdAppointment IN NUMBER
        ) IS
    BEGIN 
        DECLARE
            xNurseDocType VARCHAR(2);
            xNurseDocNumber NUMBER;
        BEGIN
            SELECT documentType INTO xNurseDocType FROM PERSON
            WHERE email LIKE xNurseEmail;

            SELECT documentNumber INTO xNurseDocNumber FROM PERSON
            WHERE email LIKE xNurseEmail;


            INSERT INTO AppointmentNurse VALUES (xIdAppointment, xNurseDocType, xNurseDocNumber);

            COMMIT;

      
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR LA ENFERMERA EN LA CITA MÉDICA');
        END;
    END;

    -- READ
    FUNCTION READ_APPOINTMENTS RETURN SYS_REFCURSOR 
    IS INF_APPOINTMENTS  SYS_REFCURSOR;
    BEGIN
        OPEN INF_APPOINTMENTS FOR
            SELECT *
            FROM V_APPOINTMENT;
        RETURN INF_APPOINTMENTS ;
    END;


END PKG_CLINICAL_HISTORY;

/

-- APPOINTMENTS
CREATE OR REPLACE PACKAGE BODY PKG_APPOINTMENT AS
    -- CREATE WITH DOCTOR
    PROCEDURE ADD_APPOINTMENT(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xAppointmentMotive IN VARCHAR,
        xDate IN DATE,
        xDoctorEmail IN VARCHAR,
        xHospital IN VARCHAR
        ) IS
    BEGIN 
        DECLARE
            xIdClinicalHistory NUMBER;
            xIdHospital NUMBER;
            xDoctorDocType VARCHAR(2);
            xDoctorDocNumber NUMBER;
            xIdAppointment NUMBER;
        BEGIN
            SELECT documentType INTO xDoctorDocType FROM PERSON
            WHERE email LIKE xDoctorEmail;

            SELECT documentNumber INTO xDoctorDocNumber FROM PERSON
            WHERE email LIKE xDoctorEmail;

            SELECT idHospital INTO xIdHospital FROM HOSPITAL
            WHERE name LIKE xHospital;

            SELECT idClinicalHistory INTO xIdClinicalHistory FROM
            ClinicalHistory 
            WHERE ROWNUM = 1 AND
            documentType = xDocType AND documentNumber = xDocNum;

            INSERT INTO Appointment VALUES (NULL, xAppointmentMotive, NULL, xDate,  xIdClinicalHistory, NULL, xIdHospital);
            

            SELECT idAppointment INTO xIdAppointment FROM
            Appointment 
            WHERE ROWNUM = 1 AND
            idClinicalHistory = xIdClinicalHistory
            ORDER BY idAppointment DESC;


            INSERT INTO AppointmentDoctor VALUES (xIdAppointment, xDoctorDocType, xDoctorDocNumber);

            COMMIT;

      
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR LA CITA MÉDICA');
        END;
    END;


    -- ADD A NURSE TO THE APPOINTMENT
    PROCEDURE ADD_APPOINTMENT_NURSE(
        xNurseEmail IN VARCHAR,
        xIdAppointment IN NUMBER
        ) IS
    BEGIN 
        DECLARE
            xNurseDocType VARCHAR(2);
            xNurseDocNumber NUMBER;
        BEGIN
            SELECT documentType INTO xNurseDocType FROM PERSON
            WHERE email LIKE xNurseEmail;

            SELECT documentNumber INTO xNurseDocNumber FROM PERSON
            WHERE email LIKE xNurseEmail;


            INSERT INTO AppointmentNurse VALUES (xIdAppointment, xNurseDocType, xNurseDocNumber);

            COMMIT;

      
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR LA ENFERMERA EN LA CITA MÉDICA');
        END;
    END;

    -- READ ALL APPOINTMENTS
    FUNCTION READ_APPOINTMENTS RETURN SYS_REFCURSOR 
    IS INF_APPOINTMENTS  SYS_REFCURSOR;
    BEGIN
        OPEN INF_APPOINTMENTS FOR
            SELECT *
            FROM V_APPOINTMENT;
        RETURN INF_APPOINTMENTS ;
    END;

    -- READ DOCTOR APPOINTMENTS
    FUNCTION READ_DOC_APPOINTMENTS(
        xDoctorEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR 
    IS INF_APPOINTMENTS  SYS_REFCURSOR;
    BEGIN
        OPEN INF_APPOINTMENTS FOR
            SELECT *
            FROM V_APPOINTMENT_DOCTOR
            WHERE DOCTOR_EMAIL = xDoctorEmail;
        RETURN INF_APPOINTMENTS ;
    END;

    -- READ NURSE APPOINTMENTS
    FUNCTION READ_NUR_APPOINTMENTS(
        xNurseEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR 
    IS INF_APPOINTMENTS  SYS_REFCURSOR;
    BEGIN
        OPEN INF_APPOINTMENTS FOR
            SELECT *
            FROM V_APPOINTMENT_NURSE
            WHERE NURSE_EMAIL = xNurseEmail;
        RETURN INF_APPOINTMENTS ;
    END;

    -- READ PATIENT APPOINTMENTS
    FUNCTION READ_PAT_APPOINTMENTS(
        xPatientEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR 
    IS INF_APPOINTMENTS  SYS_REFCURSOR;
    BEGIN
        OPEN INF_APPOINTMENTS FOR
            SELECT *
            FROM V_APPOINTMENT
            WHERE PATIENT_EMAIL = xPatientEmail;
        RETURN INF_APPOINTMENTS ;
    END;
END PKG_APPOINTMENT;

/

-- PROCEDURES
CREATE OR REPLACE PACKAGE BODY PKG_PROCEDURES AS
    -- CREATE
    PROCEDURE ADD_PROCEDURE(
        xDocType IN VARCHAR,
        xDocNum IN NUMBER,
        xName IN VARCHAR,
        xDateProcedure IN DATE,
        xHospital IN VARCHAR,
        xDoctorEmail IN VARCHAR
        ) IS
    BEGIN 
        DECLARE
            xIdClinicalHistory NUMBER;
            xIdHospital NUMBER;
            xDoctorDocType VARCHAR(2);
            xDoctorDocNumber NUMBER;   
            xIdProcedure NUMBER;

        BEGIN
            SELECT documentType INTO xDoctorDocType FROM PERSON
            WHERE email LIKE xDoctorEmail;

            SELECT documentNumber INTO xDoctorDocNumber FROM PERSON
            WHERE email LIKE xDoctorEmail;

            SELECT idHospital INTO xIdHospital FROM HOSPITAL
            WHERE name LIKE xHospital;

            SELECT idClinicalHistory INTO xIdClinicalHistory FROM
            ClinicalHistory 
            WHERE ROWNUM = 1 AND
            documentType = xDocType AND documentNumber = xDocNum;

            INSERT INTO Procedures VALUES (NULL, xName, xDateProcedure, NULL, NULL, xIdClinicalHistory, xIdHospital);

            SELECT idProcedure INTO xIdProcedure FROM Procedures
            WHERE ROWNUM = 1 AND name LIKE xName
            ORDER BY idProcedure DESC;

            INSERT INTO ProcedureDoctor VALUES(xDocType, xDocNum, xIdProcedure);
            COMMIT;
      
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL PROCEDIMIENTO');
        END;
    END;

    -- READ ALL PROCEDURES
    FUNCTION READ_PROCEDURES RETURN SYS_REFCURSOR 
    IS INF_PROCEDURES SYS_REFCURSOR;
    BEGIN
        OPEN INF_PROCEDURES FOR
            SELECT *
            FROM V_PROCEDURES;
        RETURN INF_PROCEDURES ;
    END;

    -- READ SPECIFIC PATIENT PROCEDURES
    FUNCTION READ_PATIENT_PROCEDURES(
        xEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR 
    IS INF_PROCEDURES SYS_REFCURSOR;
    BEGIN
        OPEN INF_PROCEDURES FOR
            SELECT *
            FROM V_PROCEDURES
            WHERE PATIENT_EMAIL = xEmail;
        RETURN INF_PROCEDURES ;
    END;


    -- READ SPECIFIC DOCTOR PROCEDURES
    FUNCTION READ_DOCTOR_PROCEDURES(
        xEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR 
    IS INF_PROCEDURES SYS_REFCURSOR;
    BEGIN
        OPEN INF_PROCEDURES FOR
            SELECT *
            FROM V_PROCEDURES
            WHERE DOCTOR_EMAIL = xEmail;
        RETURN INF_PROCEDURES ;
    END;

    -- READ SPECIFIC NURSE PROCEDURES
    FUNCTION READ_NURSE_PROCEDURES(
        xEmail IN VARCHAR
    ) RETURN SYS_REFCURSOR 
    IS INF_PROCEDURES SYS_REFCURSOR;
    BEGIN
        OPEN INF_PROCEDURES FOR
            SELECT *
            FROM V_NURSE_PROCEDURES
            WHERE NURSE_EMAIL = xEmail;
        RETURN INF_PROCEDURES ;
    END;
   

    -- ADD A NURSE TO THE PROCEDURE
    PROCEDURE ADD_PROCEDURE_NURSE(
        xNurseEmail IN VARCHAR,
        xIdProcedure IN NUMBER
        ) IS
    BEGIN 
        DECLARE
            xNurseDocType VARCHAR(2);
            xNurseDocNumber NUMBER;
        BEGIN
            SELECT documentType INTO xNurseDocType FROM PERSON
            WHERE email LIKE xNurseEmail;

            SELECT documentNumber INTO xNurseDocNumber FROM PERSON
            WHERE email LIKE xNurseEmail;


            INSERT INTO ProcedureNurse VALUES (xIdProcedure, xNurseDocType, xNurseDocNumber);

            COMMIT;

      
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL ENFERMERO EN EL PROCEDIMIENTO');
        END;
    END;
END PKG_PROCEDURES;