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
    --FUNCTION READ_SUPPLY(xName IN VARCHAR) RETURN SYS_REFCURSOR;

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