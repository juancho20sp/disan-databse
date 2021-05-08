DROP TABLE TEST;
DROP TABLE TEST2;
DROP TRIGGER TEST_TRIGGER; 

CREATE TABLE test (
    InName    VARCHAR2(20),
    InLastname    VARCHAR2(20);
); 

CREATE TABLE test2 (
    InName    VARCHAR2(20),
    InLastname    VARCHAR2(20);
); 


CREATE OR REPLACE PACKAGE PKG_TEST AS
    PROCEDURE ADD_TEST(inName IN VARCHAR, inLastname IN VARCHAR);
END PKG_TEST;


CREATE OR REPLACE PACKAGE BODY PKG_TEST AS
    PROCEDURE ADD_TEST(inName IN VARCHAR, inLastname IN VARCHAR) AS
    BEGIN 
        INSERT INTO TEST VALUES (inName, inLastname);
        INSERT INTO TEST2 VALUES (inName, inLastname);
        COMMIT;

        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001,'Error al modificar el camerino.');
    END;
END PKG_TEST;


--- CONSULTA
BEGIN
    PKG_TEST.ADD_TEST('ESTA ES UNA', 'PRUEBA');
END;


CREATE OR REPLACE TRIGGER TEST_TRIGGER
BEFORE INSERT ON TEST 
FOR EACH ROW

BEGIN
    PKG_TEST.ADD_TEST(:NEW.InName, :NEW.InLastname);
END;

/


INSERT INTO TEST VALUES('T', 'T');