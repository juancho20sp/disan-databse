--- SUPPLY
CREATE OR REPLACE PACKAGE PKG_SUPPLY AS
    PROCEDURE ADD_SUPPLY(
        xName IN VARCHAR,
        xAmount IN NUMBER,
        xInventory IN NUMBER
        );

    --FUNCTION READ_SUPPLY(xName IN VARCHAR) RETURN SYS_REFCURSOR;

    PROCEDURE UPDATE_SUPPLY(
        xId IN NUMBER,
        xName IN VARCHAR, 
        xAmount IN NUMBER,
         xInventory IN NUMBER
        );
END PKG_SUPPLY;
