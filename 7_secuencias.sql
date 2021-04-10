--- X SECUENCIAS ---
DROP SEQUENCE "BD2172577"."ID_MEDICATION_TYPE"; 
DROP SEQUENCE "BD2172577"."ID_MEDICATION_INVENTORY"; 
DROP SEQUENCE "BD2172577"."ID_SUPPLY_INVENTORY"; 
DROP SEQUENCE "BD2172577"."ID_CITY"; 
DROP SEQUENCE "BD2172577"."ID_MU"; 
DROP SEQUENCE "BD2172577"."ID_HOSPITAL"; 

--- SECUENCIAS ---
--- MEDICATION TYPE---
CREATE SEQUENCE  "BD2172577"."ID_MEDICATION_TYPE"
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- MEDICATION INVENTORY ---
CREATE SEQUENCE  "BD2172577"."ID_MEDICATION_INVENTORY"
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- SUPPLIES INVENTORY ---
CREATE SEQUENCE  "BD2172577"."ID_SUPPLY_INVENTORY"
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- CITY ---
CREATE SEQUENCE  "BD2172577"."ID_CITY"
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- MILITARY UNIT ---
CREATE SEQUENCE  "BD2172577"."ID_MU"
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;

--- HOSPITAL ---
CREATE SEQUENCE  "BD2172577"."ID_HOSPITAL"
MINVALUE 1 MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1 
NOCACHE  ORDER  CYCLE ;