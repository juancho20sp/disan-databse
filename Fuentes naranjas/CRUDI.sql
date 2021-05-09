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

    -- READ
     FUNCTION READ_SUPPLY RETURN SYS_REFCURSOR IS INF_SUPPLY SYS_REFCURSOR;
    BEGIN
        OPEN INF_SUPPLY FOR
            SELECT *
            FROM V_SUPPLIES;
        RETURN INF_SUPPLY ;
    END;
    

    -- UPDATE
    PROCEDURE UPDATE_SUPPLY(
        xName IN VARCHAR, 
        xAmount IN NUMBER,
         xInventory IN NUMBER
        ) IS  

    BEGIN
        DECLARE
            xId NUMBER;
        BEGIN
            SELECT idSupply INTO xId FROM SUPPLY
                WHERE name LIKE xName;
                

            UPDATE Supply
                SET amount = xAmount, idSuppliesInventory = xInventory
            WHERE idSupply = xId;

            COMMIT;
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR EL SUMINISTRO');
        END;
    END;

END PKG_SUPPLY;

/

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

-- MILITARY UNIT
CREATE OR REPLACE PACKAGE BODY PKG_MILITARY_UNIT AS
    -- MILITARY UNIT
    -- CREATE
    PROCEDURE ADD_MILITARY_UNIT(
        xName IN VARCHAR,
        xCity IN VARCHAR,
        xFullLocation IN VARCHAR) IS
    BEGIN 
        DECLARE
            xIdCity NUMBER;

        BEGIN
            SELECT idCity INTO xIdCity FROM CITY 
            WHERE name LIKE xCity;

            INSERT INTO MilitaryUnit VALUES (NULL, xName, xIdCity, xFullLocation);
            COMMIT;
        
      
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20003,'ERROR AL INSERTAR LA UNIDAD MILITAR');
        END;

        
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
        xCity IN VARCHAR,
        xFullLocation IN VARCHAR
        ) IS  

    BEGIN
        DECLARE
            xIdCity NUMBER;

        BEGIN
            SELECT idCity INTO xIdCity FROM CITY 
            WHERE name LIKE xCity;


            UPDATE MilitaryUnit
            SET 
                name = xName,
                city = xIdCity,
                fullLocation = xFullLocation
            WHERE idMilitaryUnit = xId;
            COMMIT;

            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR LA UNIDAD MILITAR');
        END;
    END;

    -- DIVISION
    -- CREATE
    PROCEDURE ADD_DIVISION(
        xName IN VARCHAR,
        xCity IN VARCHAR,
        xFullLocation IN VARCHAR,
        xCommander IN VARCHAR,
        xMilitaryForce IN VARCHAR) IS
        BEGIN   
            DECLARE
                lastId NUMBER; 
                xIdCity NUMBER;
                  
            BEGIN
                SELECT idCity INTO xIdCity FROM CITY 
                WHERE name LIKE xCity;

                INSERT INTO MilitaryUnit VALUES (NULL, xName, xIdCity, xFullLocation);


                SELECT idMilitaryUnit INTO lastId FROM MilitaryUnit
                WHERE ROWNUM = 1
                ORDER BY idMilitaryUnit DESC;

                INSERT INTO Division VALUES (lastId, xCommander, xMilitaryForce);
                COMMIT;           
            
                EXCEPTION 
                WHEN OTHERS THEN 
                    ROLLBACK;
                    RAISE_APPLICATION_ERROR(-20003,'ERROR AL INSERTAR LA DIVISIÓN');
            END;
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
        xName IN VARCHAR,
        xCommander IN VARCHAR,
        xMilitaryForce IN VARCHAR
        ) IS  

    BEGIN
        DECLARE
            xId NUMBER;
        BEGIN
            SELECT idMilitaryUnit INTO xId FROM MILITARYUNIT
            WHERE name LIKE xName;

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
    END;

    -- BRIGADE
    -- CREATE
    PROCEDURE ADD_BRIGADE(
        xName IN VARCHAR,
        xCity IN VARCHAR,
        xFullLocation IN VARCHAR,
        xCommander IN VARCHAR,
        xDivision IN VARCHAR,
        xMilitaryForce IN VARCHAR) IS
        BEGIN   
            DECLARE
                lastId NUMBER; 
                xIdCity NUMBER;
                xIdDivision NUMBER;
                  
            BEGIN
                SELECT idCity INTO xIdCity FROM CITY 
                WHERE name LIKE xCity;

                SELECT idMilitaryUnit INTO xIdDivision FROM MILITARYUNIT
                WHERE name LIKE xDivision;

                INSERT INTO MilitaryUnit VALUES (NULL, xName, xIdCity, xFullLocation);               

                SELECT idMilitaryUnit INTO lastId FROM MilitaryUnit
                WHERE ROWNUM = 1
                ORDER BY idMilitaryUnit DESC;

                INSERT INTO Brigade VALUES (lastId, xCommander, xMilitaryForce,xIdDivision);
                COMMIT;           
            
                EXCEPTION 
                WHEN OTHERS THEN 
                    ROLLBACK;
                    RAISE_APPLICATION_ERROR(-20003,'ERROR AL INSERTAR LA BRIGADA');
            END;
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
        xName IN VARCHAR,
        xCommander IN VARCHAR,
        xDivision IN VARCHAR,
        xMilitaryForce IN VARCHAR
        ) IS  

    BEGIN
        DECLARE
            xId NUMBER;
            xIdDivision NUMBER;
        BEGIN
            SELECT idMilitaryUnit INTO xId FROM MILITARYUNIT
            WHERE name LIKE xName;

            SELECT idMilitaryUnit INTO xIdDivision FROM MILITARYUNIT
                WHERE name LIKE xDivision;

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
    END;


    -- BATTALION
    -- CREATE
    PROCEDURE ADD_BATTALION(
        xName IN VARCHAR,
        xCity IN VARCHAR,
        xFullLocation IN VARCHAR,
        xCommander IN VARCHAR,
        xBrigade IN VARCHAR,
        xMilitaryForce IN VARCHAR) IS
        BEGIN   
            DECLARE
                lastId NUMBER; 
                xIdCity NUMBER;
                xIdBrigade NUMBER;
                  
            BEGIN
                SELECT idCity INTO xIdCity FROM CITY 
                WHERE name LIKE xCity;

                SELECT idMilitaryUnit INTO xIdBrigade FROM MILITARYUNIT
                WHERE name LIKE xBrigade;

                INSERT INTO MilitaryUnit VALUES (NULL, xName, xIdCity, xFullLocation);               

                SELECT idMilitaryUnit INTO lastId FROM MilitaryUnit
                WHERE ROWNUM = 1
                ORDER BY idMilitaryUnit DESC;

                INSERT INTO Battalion VALUES (lastId, xCommander, xMilitaryForce,xIdBrigade);
                COMMIT;           
            
                EXCEPTION 
                WHEN OTHERS THEN 
                    ROLLBACK;
                    RAISE_APPLICATION_ERROR(-20003,'ERROR AL INSERTAR EL BATALLÓN');
            END;
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
        xName IN VARCHAR,
        xCommander IN VARCHAR,
        xBrigade IN VARCHAR,
        xMilitaryForce IN VARCHAR
        ) IS  

    BEGIN
        DECLARE
            xId NUMBER;
            xIdBrigade NUMBER;
        BEGIN
            SELECT idMilitaryUnit INTO xId FROM MILITARYUNIT
            WHERE name LIKE xName;

            SELECT idMilitaryUnit INTO xIdBrigade FROM MILITARYUNIT
                WHERE name LIKE xBrigade;

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
    END;

END PKG_MILITARY_UNIT;

/

-- LABORATORY
CREATE OR REPLACE PACKAGE BODY PKG_LABORATORY AS
    -- CREATE
    PROCEDURE ADD_LABORATORY(
        xName IN VARCHAR,
        xCity IN VARCHAR,
        xBattalion IN VARCHAR,
        xAddress IN VARCHAR) IS
    BEGIN 
        DECLARE
            lastId NUMBER;
            xIdCity NUMBER;
            xIdBattalion NUMBER;

        BEGIN    
            INSERT INTO SuppliesInventory VALUES (NULL);

            SELECT idSuppliesInventory INTO lastId FROM SuppliesInventory
            WHERE ROWNUM = 1
            ORDER BY idSuppliesInventory DESC;

            SELECT idCity INTO xIdCity FROM CITY 
            WHERE name LIKE xCity;

            SELECT idMilitaryUnit INTO xIdBattalion FROM MILITARYUNIT
            WHERE name LIKE xBattalion;

            INSERT INTO Laboratory VALUES (NULL, xName, xAddress, xIdCity, lastId, xIdBattalion);
            COMMIT;
      
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20001,'ERROR AL INSERTAR EL LABORATORIO');
        END;
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
        xName IN VARCHAR,
        xBattalion IN VARCHAR,
        xAddress IN VARCHAR
        ) IS  

    BEGIN
        DECLARE
            xIdLaboratory NUMBER;
            xIdBattalion NUMBER;

        BEGIN
            SELECT idLaboratory INTO xIdLaboratory FROM LABORATORY
            WHERE name LIKE xName;

            SELECT idMilitaryUnit INTO xIdBattalion FROM MILITARYUNIT
            WHERE name LIKE xBattalion;

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
    END;

END PKG_LABORATORY;

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

-- MEDICATION INVENTORY
CREATE OR REPLACE PACKAGE BODY PKG_MEDICATION_INVENTORY AS
    -- CREATE
    PROCEDURE ADD_MEDICATION_INVENTORY(xId IN NUMBER) IS
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

    -- READ
     FUNCTION READ_PATIENT RETURN SYS_REFCURSOR
      IS INF_PATIENT SYS_REFCURSOR;
    BEGIN
        OPEN INF_PATIENT FOR
            SELECT *
            FROM V_PATIENT;
        RETURN INF_PATIENT ;
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