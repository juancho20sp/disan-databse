-- SUPPLY
EXECUTE PKG_SUPPLY.ADD_SUPPLY('TEST', 1, 1);
EXECUTE PKG_SUPPLY.ADD_SUPPLY('TEST2', 1000, 10);
SELECT PKG_SUPPLY.READ_SUPPLY FROM DUAL;
EXECUTE PKG_SUPPLY.UPDATE_SUPPLY(16, 'TEST UPDATED', 11, 10);
