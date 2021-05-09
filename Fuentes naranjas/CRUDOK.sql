-- SUPPLY
EXECUTE PKG_SUPPLY.ADD_SUPPLY('TEST', 1, 1);
EXECUTE PKG_SUPPLY.ADD_SUPPLY('TEST2', 1000, 10);
--SELECT PKG_SUPPLY.READ_SUPPLY FROM DUAL;
EXECUTE PKG_SUPPLY.UPDATE_SUPPLY(2, 'TEST UPDATED', 11, 10);

-- SUPPLIES INVENTORY
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(1);
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(1000);
--SELECT PKG_SUPPLIES_INVENTORY.READ_SUPPLIES_INVENTORY FROM DUAL;
EXECUTE PKG_SUPPLIES_INVENTORY.UPDATE_SUPPLIES_INVENTORY(12, 13);

-- MILITARY UNIT
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('UNIDAD DE PRUEBA', 5, NULL);
--SELECT PKG_MILITARY_UNIT.READ_MILITARY_UNIT FROM DUAL;
EXECUTE PKG_MILITARY_UNIT.UPDATE_MILITARY_UNIT(3, 'zzz', 'Leticia', 'CALLE 456');

-- DIVISION
EXECUTE PKG_MILITARY_UNIT.ADD_DIVISION('NUEVA DIVISIÓN2', NULL, NULL, 'PEPE EL POLLO2', 'Armada');
--SELECT PKG_MILITARY_UNIT.READ_DIVISION FROM DUAL;

EXECUTE PKG_MILITARY_UNIT.UPDATE_DIVISION('NUEVA DIVISIÓN2','comandante de prueba', 'Fuerza Aerea');
