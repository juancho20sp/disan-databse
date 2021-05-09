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
        xId IN NUMBER,
        xName IN VARCHAR, 
        xAmount IN NUMBER,
         xInventory IN NUMBER
        ) IS  

    BEGIN
        UPDATE Supply
            SET name = xName, amount = xAmount, idSuppliesInventory = xInventory
        WHERE idSupply = xId;

        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'ERROR AL MODIFCAR EL SUMINISTRO');
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
        xIdCity IN NUMBER,
        xFullLocation IN VARCHAR) IS
    BEGIN 
        INSERT INTO MilitaryUnit VALUES (NULL, xName, xIdCity, xFullLocation);
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
        xIdCity IN NUMBER,
        xFullLocation IN VARCHAR
        ) IS  

    BEGIN
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

    -- DIVISION
    -- CREATE
    PROCEDURE ADD_DIVISION(
        xName IN VARCHAR,
        xIdCity IN NUMBER,
        xFullLocation IN VARCHAR,
        xCommander IN VARCHAR,
        xMilitaryForce IN VARCHAR) IS
        BEGIN   
            DECLARE
                lastId NUMBER; 
                  
            BEGIN
                INSERT INTO MilitaryUnit VALUES (NULL, xName, xIdCity, xFullLocation);
                COMMIT;

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

END PKG_MILITARY_UNIT;

/