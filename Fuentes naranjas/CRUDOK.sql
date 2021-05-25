-- SUPPLIES INVENTORY
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(NULL);
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(NULL);
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(NULL);
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(NULL);
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(NULL);
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(NULL);
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(NULL);
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(NULL);
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(NULL);
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(NULL);
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(NULL);
EXECUTE PKG_SUPPLIES_INVENTORY.ADD_SUPPLIES_INVENTORY(NULL);

--EXECUTE PKG_SUPPLIES_INVENTORY.UPDATE_SUPPLIES_INVENTORY(5, 258);

--SELECT PKG_SUPPLIES_INVENTORY.READ_SUPPLIES_INVENTORY FROM DUAL;


-- SUPPLY
EXECUTE PKG_SUPPLY.ADD_SUPPLY('Supply 1', 1, 1);
EXECUTE PKG_SUPPLY.ADD_SUPPLY('Supply 2', 12, 1);
EXECUTE PKG_SUPPLY.ADD_SUPPLY('Supply 3', 1000, 5);
EXECUTE PKG_SUPPLY.ADD_SUPPLY('Supply 4', 12345, 7);
EXECUTE PKG_SUPPLY.ADD_SUPPLY('Supply 5', 444, 2);
EXECUTE PKG_SUPPLY.ADD_SUPPLY('Supply 6', 2, 1);
EXECUTE PKG_SUPPLY.ADD_SUPPLY('Supply 7', 10900, 4);
EXECUTE PKG_SUPPLY.ADD_SUPPLY('Supply 8', 32, 8);
EXECUTE PKG_SUPPLY.ADD_SUPPLY('Supply 9', 1, 2);
EXECUTE PKG_SUPPLY.ADD_SUPPLY('Supply 10', 50, 3);
EXECUTE PKG_SUPPLY.ADD_SUPPLY('Supply 11', 33, 4);

--EXECUTE PKG_SUPPLY.ADD_SUPPLY('TEST', 150, 5);
--EXECUTE PKG_SUPPLY.UPDATE_SUPPLY(12, 555, 5);

--SELECT PKG_SUPPLY.READ_SUPPLY FROM DUAL;
--SELECT PKG_SUPPLY.READ_SPEC_SUPPLY('TEST') FROM DUAL;


-- CITY
EXECUTE PKG_CITY.ADD_CITY('Leticia', 'Amazonas'); 
EXECUTE PKG_CITY.ADD_CITY('Medellin', 'Antioquia'); 
EXECUTE PKG_CITY.ADD_CITY('Arauca', 'Arauca'); 
EXECUTE PKG_CITY.ADD_CITY('Barranquilla', 'Atlantico'); 
EXECUTE PKG_CITY.ADD_CITY('Bogota', 'Cundinamarca'); 
EXECUTE PKG_CITY.ADD_CITY('Cartagena', 'Bolivar'); 
EXECUTE PKG_CITY.ADD_CITY('Tunja', 'Boyaca'); 
EXECUTE PKG_CITY.ADD_CITY('Manizales', 'Caldas'); 
EXECUTE PKG_CITY.ADD_CITY('Florencia', 'Caqueta'); 
EXECUTE PKG_CITY.ADD_CITY('Yopal', 'Casanare'); 
EXECUTE PKG_CITY.ADD_CITY('Popayan', 'Cauca'); 
EXECUTE PKG_CITY.ADD_CITY('Valledupar', 'Cesar'); 
EXECUTE PKG_CITY.ADD_CITY('Quibdo', 'Choco'); 
EXECUTE PKG_CITY.ADD_CITY('Monteria', 'Cordoba'); 
EXECUTE PKG_CITY.ADD_CITY('Inirida', 'Guainia'); 
EXECUTE PKG_CITY.ADD_CITY('San Jose del Guaviare', 'Guaviare'); 
EXECUTE PKG_CITY.ADD_CITY('Neiva', 'Huila'); 
EXECUTE PKG_CITY.ADD_CITY('Rioacha', 'La Guajira'); 
EXECUTE PKG_CITY.ADD_CITY('Santa Marta', 'Magdalena'); 
EXECUTE PKG_CITY.ADD_CITY('Villavicencio', 'Meta'); 
EXECUTE PKG_CITY.ADD_CITY('Pasto', 'Nariño'); 
EXECUTE PKG_CITY.ADD_CITY('Cucuta', 'Norte de Santander'); 
EXECUTE PKG_CITY.ADD_CITY('Mocoa', 'Putumayo'); 
EXECUTE PKG_CITY.ADD_CITY('Armenia', 'Quindio'); 
EXECUTE PKG_CITY.ADD_CITY('Pereira', 'Risaralda'); 
EXECUTE PKG_CITY.ADD_CITY('San Andres', 'San Andres y Providencia'); 
EXECUTE PKG_CITY.ADD_CITY('Bucaramanga', 'Santander'); 
EXECUTE PKG_CITY.ADD_CITY('Sincelejo', 'Sucre'); 
EXECUTE PKG_CITY.ADD_CITY('Ibague', 'Tolima'); 
EXECUTE PKG_CITY.ADD_CITY('Cali', 'Valle del Cauca'); 
EXECUTE PKG_CITY.ADD_CITY('Mitu', 'Vaupes'); 
EXECUTE PKG_CITY.ADD_CITY('Puerto Carreño', 'Vichada');



--EXECUTE PKG_CITY.ADD_CITY('CIUDAD TEST', 'DEPARTAMENTO TEST');
--EXECUTE PKG_CITY.UPDATE_CITY(33, 'Nuevo ciudad editada','Nariño');

--SELECT PKG_CITY.READ_CITY FROM DUAL;




-- MILITARY UNIT
-- DIVISION AS MU
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('DIVISIÓN 1', 1, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('DIVISIÓN 2', 2, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('DIVISIÓN 3', 3, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('DIVISIÓN 4', 4, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('DIVISIÓN 5', 5, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('DIVISIÓN 6', 6, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('DIVISIÓN 7', 7, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('DIVISIÓN 8', 8, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('DIVISIÓN 9', 9, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('DIVISIÓN 10', 10, NULL);

-- BRIGADE AS MU
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BRIGADA 1', 11, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BRIGADA 2', 12, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BRIGADA 3', 13, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BRIGADA 4', 14, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BRIGADA 5', 15, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BRIGADA 6', 16, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BRIGADA 7', 17, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BRIGADA 8', 18, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BRIGADA 9', 19, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BRIGADA 10', 20, NULL);

-- BATTALION AS MU
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BATALLÓN 1', 21, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BATALLÓN 2', 22, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BATALLÓN 3', 23, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BATALLÓN 4', 24, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BATALLÓN 5', 25, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BATALLÓN 6', 26, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BATALLÓN 7', 27, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BATALLÓN 8', 28, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BATALLÓN 9', 29, NULL);
EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('BATALLÓN 10', 30, NULL);

-- DIVISION
EXECUTE PKG_MILITARY_UNIT.ADD_DIVISION(1, 'Comandante 1', 'Armada');
EXECUTE PKG_MILITARY_UNIT.ADD_DIVISION(2, 'Comandante 2', 'Fuerza Aerea');
EXECUTE PKG_MILITARY_UNIT.ADD_DIVISION(3, 'Comandante 3', 'Ejercito');
EXECUTE PKG_MILITARY_UNIT.ADD_DIVISION(4, 'Comandante 4', 'Fuerza Aerea');
EXECUTE PKG_MILITARY_UNIT.ADD_DIVISION(5, 'Comandante 5', 'Armada');
EXECUTE PKG_MILITARY_UNIT.ADD_DIVISION(6, 'Comandante 6', 'Ejercito');
EXECUTE PKG_MILITARY_UNIT.ADD_DIVISION(7, 'Comandante 7', 'Fuerza Aerea');
EXECUTE PKG_MILITARY_UNIT.ADD_DIVISION(8, 'Comandante 8', 'Ejercito');
EXECUTE PKG_MILITARY_UNIT.ADD_DIVISION(9, 'Comandante 9', 'Armada');
EXECUTE PKG_MILITARY_UNIT.ADD_DIVISION(10, 'Comandante 10', 'Fuerza Aerea');

-- BRIGADE
EXECUTE PKG_MILITARY_UNIT.ADD_BRIGADE(11, 'Comandante 11', 1, 'Armada');
EXECUTE PKG_MILITARY_UNIT.ADD_BRIGADE(12, 'Comandante 12', 2, 'Fuerza Aerea');
EXECUTE PKG_MILITARY_UNIT.ADD_BRIGADE(13, 'Comandante 13', 3, 'Ejercito');
EXECUTE PKG_MILITARY_UNIT.ADD_BRIGADE(14, 'Comandante 14', 4, 'Fuerza Aerea');
EXECUTE PKG_MILITARY_UNIT.ADD_BRIGADE(15, 'Comandante 15', 5, 'Armada');
EXECUTE PKG_MILITARY_UNIT.ADD_BRIGADE(16, 'Comandante 16', 6, 'Ejercito');
EXECUTE PKG_MILITARY_UNIT.ADD_BRIGADE(17, 'Comandante 17', 7, 'Fuerza Aerea');
EXECUTE PKG_MILITARY_UNIT.ADD_BRIGADE(18, 'Comandante 18', 8, 'Ejercito');
EXECUTE PKG_MILITARY_UNIT.ADD_BRIGADE(19, 'Comandante 19', 9, 'Armada');
EXECUTE PKG_MILITARY_UNIT.ADD_BRIGADE(20, 'Comandante 20', 10, 'Fuerza Aerea');

-- BATTALION
EXECUTE PKG_MILITARY_UNIT.ADD_BATTALION(21, 'Comandante 21', 11, 'Armada');
EXECUTE PKG_MILITARY_UNIT.ADD_BATTALION(22, 'Comandante 22', 12, 'Fuerza Aerea');
EXECUTE PKG_MILITARY_UNIT.ADD_BATTALION(23, 'Comandante 23', 13, 'Ejercito');
EXECUTE PKG_MILITARY_UNIT.ADD_BATTALION(24, 'Comandante 24', 14, 'Fuerza Aerea');
EXECUTE PKG_MILITARY_UNIT.ADD_BATTALION(25, 'Comandante 25', 15, 'Armada');
EXECUTE PKG_MILITARY_UNIT.ADD_BATTALION(26, 'Comandante 26', 16, 'Ejercito');
EXECUTE PKG_MILITARY_UNIT.ADD_BATTALION(27, 'Comandante 27', 17, 'Fuerza Aerea');
EXECUTE PKG_MILITARY_UNIT.ADD_BATTALION(28, 'Comandante 28', 18, 'Ejercito');
EXECUTE PKG_MILITARY_UNIT.ADD_BATTALION(29, 'Comandante 29', 19, 'Armada');
EXECUTE PKG_MILITARY_UNIT.ADD_BATTALION(30, 'Comandante 30', 20, 'Fuerza Aerea');


--EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('TEST DIVISIÓN', 1, NULL);
--EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('TEST BRIGADA', 1, NULL);
--EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('TEST BATALLÓN', 1, NULL);
--EXECUTE PKG_MILITARY_UNIT.ADD_MILITARY_UNIT('TEST UNIDAD MILITAR', 1, NULL);

--EXECUTE PKG_MILITARY_UNIT.ADD_DIVISION(31, 'TEST COMANDANTE 1', 'Armada');
--EXECUTE PKG_MILITARY_UNIT.ADD_BRIGADE(32, 'TEST COMANDANTE 2', 31, 'Armada');
--EXECUTE PKG_MILITARY_UNIT.ADD_BATTALION(33, 'TEST COMANDANTE 3', 32, 'Armada');

--EXECUTE PKG_MILITARY_UNIT.UPDATE_MILITARY_UNIT(37, 'TEST UNIDAD MILITAR EDITADO', 1, 'PRUEBA');
--EXECUTE PKG_MILITARY_UNIT.UPDATE_DIVISION(31, 'comandante de prueba', 'Fuerza Aerea');
--EXECUTE PKG_MILITARY_UNIT.UPDATE_BRIGADE(32, 'comandante de prueba', 31,'Fuerza Aerea');
--EXECUTE PKG_MILITARY_UNIT.UPDATE_BATTALION(33, 'comandante de prueba', 32,'Fuerza Aerea');


--SELECT PKG_MILITARY_UNIT.READ_MILITARY_UNIT FROM DUAL;
--SELECT PKG_MILITARY_UNIT.READ_DIVISION FROM DUAL;
--SELECT PKG_MILITARY_UNIT.READ_BRIGADE FROM DUAL;
--SELECT PKG_MILITARY_UNIT.READ_BATTALION FROM DUAL;

-- LABORATORY
EXECUTE PKG_LABORATORY.ADD_LABORATORY('LABORATORIO 1', 1, 21, 'Calle 111 #5 - 6', 1);
EXECUTE PKG_LABORATORY.ADD_LABORATORY('LABORATORIO 2', 3, 22, 'Calle 222 #57 - 77', 2);
EXECUTE PKG_LABORATORY.ADD_LABORATORY('LABORATORIO 3', 5, 23, 'Calle 333 #25 - 22', 3);
EXECUTE PKG_LABORATORY.ADD_LABORATORY('LABORATORIO 4', 7, 24, 'Calle 444 #45 - 56', 4);
EXECUTE PKG_LABORATORY.ADD_LABORATORY('LABORATORIO 5', 9, 25, 'Calle 555 #45 - 56', 5);
EXECUTE PKG_LABORATORY.ADD_LABORATORY('LABORATORIO 6', 11, 26, 'Calle 666 #45 - 56', 6);
EXECUTE PKG_LABORATORY.ADD_LABORATORY('LABORATORIO 7', 13, 27, 'Calle 777 #45 - 56', 7);
EXECUTE PKG_LABORATORY.ADD_LABORATORY('LABORATORIO 8', 15, 28, 'Calle 888 #45 - 56', 8);
EXECUTE PKG_LABORATORY.ADD_LABORATORY('LABORATORIO 9', 17, 29, 'Calle 999 #45 - 56', 9);
EXECUTE PKG_LABORATORY.ADD_LABORATORY('LABORATORIO 10', 19, 30, 'Calle 100 #45 - 56', 10);


--EXECUTE PKG_LABORATORY.ADD_LABORATORY('LABORATORIO PRUEBA', 19, 33, 'Calle 123 #45 - 56', 11);
--EXECUTE PKG_LABORATORY.UPDATE_LABORATORY(15, 21, 'Nueva dirección 123');
--SELECT PKG_LABORATORY.READ_LABORATORY FROM DUAL;


-- MEDICATION INVENTORY
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;
EXECUTE PKG_MEDICATION_INVENTORY.ADD_MEDICATION_INVENTORY;

EXECUTE PKG_MEDICATION_INVENTORY.UPDATE_MEDICATION_INVENTORY(14, 444);
--SELECT PKG_MEDICATION_INVENTORY.READ_MEDICATION_INVENTORY FROM DUAL;

-- HOSPITAL
EXECUTE PKG_HOSPITAL.ADD_HOSPITAL('HOSPITAL 1', 103, 10, 21, 1, 'CALLE 111', 1, 1);
EXECUTE PKG_HOSPITAL.ADD_HOSPITAL('HOSPITAL 2', 12, 10, 22, 2, 'CALLE 222', 2, 2);
EXECUTE PKG_HOSPITAL.ADD_HOSPITAL('HOSPITAL 3', 1233, 10, 23, 3, 'CALLE 333', 3, 4);
EXECUTE PKG_HOSPITAL.ADD_HOSPITAL('HOSPITAL 4', 43, 10, 24, 4, 'CALLE 444', 4, 4);
EXECUTE PKG_HOSPITAL.ADD_HOSPITAL('HOSPITAL 5', 54, 10, 25, 5, 'CALLE 555', 5, 5);
EXECUTE PKG_HOSPITAL.ADD_HOSPITAL('HOSPITAL 6', 100, 10, 26, 6, 'CALLE 666', 6, 6);
EXECUTE PKG_HOSPITAL.ADD_HOSPITAL('HOSPITAL 7', 1000, 10, 27, 7, 'CALLE 777', 7, 7);
EXECUTE PKG_HOSPITAL.ADD_HOSPITAL('HOSPITAL 8', 132, 10, 28, 8, 'CALLE 888', 8, 8);
EXECUTE PKG_HOSPITAL.ADD_HOSPITAL('HOSPITAL 9', 33, 10, 29, 9, 'CALLE 999', 9, 9);
EXECUTE PKG_HOSPITAL.ADD_HOSPITAL('HOSPITAL 10', 44, 10, 30, 10, 'CALLE 123', 10, 10);

--EXECUTE PKG_HOSPITAL.ADD_HOSPITAL('HOSPITAL PRUEBA', 44, 10, 30, 10, 'CALLE 432', 11, 11);
--EXECUTE PKG_HOSPITAL.UPDATE_HOSPITAL(11, 'NUEVO HOSPUTAL', 111, 111, 23, 'Dirección 147');
--SELECT PKG_HOSPITAL.READ_HOSPITAL FROM DUAL;

-- PERSON
-- PATIENTS AS PERSON
EXECUTE PKG_PERSON.ADD_PERSON('TI', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'dcianni0@dot.gov');
EXECUTE PKG_PERSON.ADD_PERSON('CC', 9254619331, 'Barbaraanne', 'Ceyssen', 'F', TO_DATE('09/06/2002', 'MM/DD/YYYY'),'bceyssen1@photobucket.com');
EXECUTE PKG_PERSON.ADD_PERSON('CE', 1786662041, 'Alard', 'Blackburne', 'M', TO_DATE('05/21/2018', 'MM/DD/YYYY'), 'ablackburne2@usa.gov');
EXECUTE PKG_PERSON.ADD_PERSON('CC', 2984806463, 'Sacha', 'Bilbrook', 'F', TO_DATE('01/20/1969', 'MM/DD/YYYY'), 'sbilbrook3@skyrock.com');

-- DOCTORS AS PERSON
EXECUTE PKG_PERSON.ADD_PERSON('CC', 1773190621, 'Sallie', 'Hearnshaw', 'F',TO_DATE( '11/22/1957', 'MM/DD/YYYY'), 'shearnshaw4@bandcamp.com');
EXECUTE PKG_PERSON.ADD_PERSON('CC', 2878196529, 'Dotti', 'Tadman', 'F',TO_DATE ('01/17/1974', 'MM/DD/YYYY'), 'dtadman5@moonfruit.com');
EXECUTE PKG_PERSON.ADD_PERSON('CE', 9115387117, 'Wilden', 'McLuckie', 'F', TO_DATE('09/20/1992', 'MM/DD/YYYY'), 'wmcluckie6@dionne.jp');
EXECUTE PKG_PERSON.ADD_PERSON('CC', 7049570787, 'Antonino', 'Bletsoe', 'M',TO_DATE( '4/7/1957', 'MM/DD/YYYY'), 'abletsoe7@ed.gov');

-- NURSES AS PERSON
EXECUTE PKG_PERSON.ADD_PERSON('CC', 7933982639, 'Arri', 'Woolerton', 'M',TO_DATE ('3/1/1992', 'MM/DD/YYYY'), 'awoolerton8@theatlantic.com');
EXECUTE PKG_PERSON.ADD_PERSON('CC', 4252609306, 'Teodoor', 'Ferschke', 'F',TO_DATE ('4/13/2010', 'MM/DD/YYYY'), 'tferschke9@cdc.gov');
EXECUTE PKG_PERSON.ADD_PERSON('CE', 4779118851, 'Janie', 'Paszak', 'F',TO_DATE('4/3/1955', 'MM/DD/YYYY'), 'jpaszaka@chicagotribune.com');
EXECUTE PKG_PERSON.ADD_PERSON('CC', 4563832319, 'Electra', 'de Marco', 'M', TO_DATE('8/30/2017', 'MM/DD/YYYY'), 'edemarcob@etsy.com');
 

--EXECUTE PKG_PERSON.ADD_PERSON('CC', '1235478965', 'PRUEBA', 'UNITARIA', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'laprueba@mail.com');
--EXECUTE PKG_PERSON.UPDATE_PERSON('CC', '1235478965', 'I', 'lapruebaeditada@mail.com');
--SELECT PKG_PERSON.READ_PERSON FROM DUAL;

-- ADD PATIENT (PERSON)
EXECUTE PKG_PERSON.ADD_PATIENT('TI', 1948559565);
EXECUTE PKG_PERSON.ADD_PATIENT('CC', 9254619331);
EXECUTE PKG_PERSON.ADD_PATIENT('CE', 1786662041);
EXECUTE PKG_PERSON.ADD_PATIENT('CC', 2984806463);

--SELECT PKG_PERSON.READ_PATIENTS FROM DUAL;


-- SPECIALTY
EXECUTE PKG_SPECIALTY.ADD_SPECIALTY('ESPECIALIDAD 1');
EXECUTE PKG_SPECIALTY.ADD_SPECIALTY('ESPECIALIDAD 2');
EXECUTE PKG_SPECIALTY.ADD_SPECIALTY('ESPECIALIDAD 3');
EXECUTE PKG_SPECIALTY.ADD_SPECIALTY('ESPECIALIDAD 4');
EXECUTE PKG_SPECIALTY.ADD_SPECIALTY('ESPECIALIDAD 5');
EXECUTE PKG_SPECIALTY.ADD_SPECIALTY('ESPECIALIDAD 6');
EXECUTE PKG_SPECIALTY.ADD_SPECIALTY('ESPECIALIDAD 7');
EXECUTE PKG_SPECIALTY.ADD_SPECIALTY('ESPECIALIDAD 8');
EXECUTE PKG_SPECIALTY.ADD_SPECIALTY('ESPECIALIDAD 9');
EXECUTE PKG_SPECIALTY.ADD_SPECIALTY('ESPECIALIDAD 10');


--EXECUTE PKG_SPECIALTY.ADD_SPECIALTY('ESPECIALIDAD DE PRUEBA');
--EXECUTE PKG_SPECIALTY.UPDATE_SPECIALTY(11, 'ESPECIALIDAD PROBADA');
--SELECT PKG_SPECIALTY.READ_SPECIALTIES FROM DUAL;


-- ADD PATIENT (PATIENT)
--!!EXECUTE PKG_PATIENT.ADD_PATIENT('CC', 1235478965);

--SELECT PKG_PATIENT.READ_SPECIFIC_PATIENT('CC', 1235478965) FROM DUAL;
--SELECT PKG_PATIENT.READ_PATIENT_BACK_PROC('CC', '1235478965') FROM DUAL;
--SELECT PKG_PATIENT.READ_PATIENT_BACK_DIS('CC', '1235478965') FROM DUAL;


-- ADD DOCTOR (PERSON)
EXECUTE PKG_PERSON.ADD_DOCTOR('CC', 1773190621, 'Fuerza Aerea'); 
EXECUTE PKG_PERSON.ADD_DOCTOR('CC', 2878196529, 'Armada'); 
EXECUTE PKG_PERSON.ADD_DOCTOR('CE', 9115387117, 'Ejercito'); 
EXECUTE PKG_PERSON.ADD_DOCTOR('CC', 7049570787, 'Fuerza Aerea'); 

--EXECUTE PKG_PERSON.ADD_DOCTOR('CC', '1235478965', 'Ejercito');
--EXECUTE PKG_PERSON.UPDATE_DOCTOR('CC', 1235478965, 'Armada');
--SELECT PKG_PERSON.READ_DOCTOR FROM DUAL;


-- ADD DOCTOR (DOCTOR)
--!!EXECUTE PKG_DOCTOR.ADD_DOCTOR('CC', 1235478965, 'Fuerza Aerea', 1); 

--SELECT PKG_DOCTOR.READ_DOCTOR FROM DUAL;
--SELECT PKG_DOCTOR.READ_DOC_SPECIALTY(1) FROM DUAL;
--SELECT PKG_DOCTOR.READ_SPECIFIC_DOCTOR('CC', 1235478965) FROM DUAL

-- PENDIENTE POR PROBAR
--!!SELECT PKG_DOCTOR.READ_APPOINTMENTS('CC', 1235478965') FROM DUAL;

-- NURSE (PERSON)
EXECUTE PKG_PERSON.ADD_NURSE('CC', 7933982639, 'Fuerza Aerea'); 
EXECUTE PKG_PERSON.ADD_NURSE('CC', 4252609306, 'Armada'); 
EXECUTE PKG_PERSON.ADD_NURSE('CE', 4779118851, 'Ejercito'); 
EXECUTE PKG_PERSON.ADD_NURSE('CC', 4563832319, 'Fuerza Aerea'); 

-- NURSE (NURSE)
--!!EXECUTE PKG_NURSE.ADD_NURSE('CC', 1235478965, 'Fuerza Aerea', 1);

--SELECT PKG_NURSE.READ_NURSE FROM DUAL;
--SELECT PKG_NURSE.READ_SPECIFIC_NURSE('CC', 1235478965) FROM DUAL;
--SELECT PKG_NURSE.READ_ALL_DOCTORS FROM DUAL;

--!!SELECT PKG_NURSE.READ_APPOINTMENTS('CC', 1235478965) FROM DUAL;

-- DISEASE
EXECUTE PKG_DISEASE.ADD_DISEASE('ENFERMEDAD 1', 'DESCRIPCIÓN DE LA ENFERMEDAD 1');
EXECUTE PKG_DISEASE.ADD_DISEASE('ENFERMEDAD 2', 'DESCRIPCIÓN DE LA ENFERMEDAD 2');
EXECUTE PKG_DISEASE.ADD_DISEASE('ENFERMEDAD 3', 'DESCRIPCIÓN DE LA ENFERMEDAD 3');
EXECUTE PKG_DISEASE.ADD_DISEASE('ENFERMEDAD 4', 'DESCRIPCIÓN DE LA ENFERMEDAD 4');
EXECUTE PKG_DISEASE.ADD_DISEASE('ENFERMEDAD 5', 'DESCRIPCIÓN DE LA ENFERMEDAD 5');
EXECUTE PKG_DISEASE.ADD_DISEASE('ENFERMEDAD 6', 'DESCRIPCIÓN DE LA ENFERMEDAD 6');
EXECUTE PKG_DISEASE.ADD_DISEASE('ENFERMEDAD 7', 'DESCRIPCIÓN DE LA ENFERMEDAD 7');
EXECUTE PKG_DISEASE.ADD_DISEASE('ENFERMEDAD 8', 'DESCRIPCIÓN DE LA ENFERMEDAD 8');
EXECUTE PKG_DISEASE.ADD_DISEASE('ENFERMEDAD 9', 'DESCRIPCIÓN DE LA ENFERMEDAD 9');
EXECUTE PKG_DISEASE.ADD_DISEASE('ENFERMEDAD 10', 'DESCRIPCIÓN DE LA ENFERMEDAD 10');

-- SELECT PKG_DISEASE.READ_DISEASES FROM DUAL;

-- BACKGROUNDS
-- EXECUTE PKG_BACKGROUND.ADD_BACKGROUND(1);
-- EXECUTE PKG_BACKGROUND.ADD_BACKGROUND(2);
-- EXECUTE PKG_BACKGROUND.ADD_BACKGROUND(3);
-- EXECUTE PKG_BACKGROUND.ADD_BACKGROUND(4);

-- SELECT PKG_BACKGROUND.READ_BACKGROUNDS FROM DUAL;
-- SELECT PKG_BACKGROUND.READ_PATIENT_BACKGROUNDS(2) FROM DUAL;

-- MANAGEMENT PLAN
EXECUTE PKG_MANAGEMENT_PLAN.ADD_MANAGEMENT_PLAN('PLAN DE MANEJO 1');
EXECUTE PKG_MANAGEMENT_PLAN.ADD_MANAGEMENT_PLAN('PLAN DE MANEJO 2');
EXECUTE PKG_MANAGEMENT_PLAN.ADD_MANAGEMENT_PLAN('PLAN DE MANEJO 3');
EXECUTE PKG_MANAGEMENT_PLAN.ADD_MANAGEMENT_PLAN('PLAN DE MANEJO 4');
EXECUTE PKG_MANAGEMENT_PLAN.ADD_MANAGEMENT_PLAN('PLAN DE MANEJO 5');
EXECUTE PKG_MANAGEMENT_PLAN.ADD_MANAGEMENT_PLAN('PLAN DE MANEJO 6');
EXECUTE PKG_MANAGEMENT_PLAN.ADD_MANAGEMENT_PLAN('PLAN DE MANEJO 7');
EXECUTE PKG_MANAGEMENT_PLAN.ADD_MANAGEMENT_PLAN('PLAN DE MANEJO 8');
EXECUTE PKG_MANAGEMENT_PLAN.ADD_MANAGEMENT_PLAN('PLAN DE MANEJO 9');
EXECUTE PKG_MANAGEMENT_PLAN.ADD_MANAGEMENT_PLAN('PLAN DE MANEJO 10');

-- SELECT PKG_MANAGEMENT_PLAN.READ_MANAGEMENT_PLAN FROM DUAL;

-- CLINICAL HISTORY
EXECUTE PKG_CLINICAL_HISTORY.ADD_CLINICAL_HISTORY('TI', 1948559565);
EXECUTE PKG_CLINICAL_HISTORY.ADD_CLINICAL_HISTORY('CC', 9254619331);
EXECUTE PKG_CLINICAL_HISTORY.ADD_CLINICAL_HISTORY('CE', 1786662041);
EXECUTE PKG_CLINICAL_HISTORY.ADD_CLINICAL_HISTORY('CC', 2984806463);

-- EXECUTE PKG_CLINICAL_HISTORY.ADD_BACKGROUND_DISEASE(1, 2984806463);


--EXECUTE PKG_CLINICAL_HISTORY.ADD_CLINICAL_HISTORY('CC', 1235478965);
--SELECT PKG_CLINICAL_HISTORY.READ_CLINICAL_HISTORY('CC', 9254619331) FROM DUAL;

-- PROCEDURE
EXECUTE PKG_PROCEDURE.ADD_PROCEDURE(TO_TIMESTAMP('07/09/2021 02:00', 'MM/DD/YYYY hh24:mi'), 'PROCEDIMIENTO 2', 'DESCRIPCIÓN DEL PROCEDIMIENTO 2', 2, 2);
EXECUTE PKG_PROCEDURE.ADD_PROCEDURE(TO_TIMESTAMP('08/09/2021 03:00', 'MM/DD/YYYY hh24:mi'), 'PROCEDIMIENTO 3', 'DESCRIPCIÓN DEL PROCEDIMIENTO 3', 3, 3);
EXECUTE PKG_PROCEDURE.ADD_PROCEDURE(TO_TIMESTAMP('06/09/2021 01:00', 'MM/DD/YYYY hh24:mi'), 'PROCEDIMIENTO 1', 'DESCRIPCIÓN DEL PROCEDIMIENTO 1', 1, 1);
EXECUTE PKG_PROCEDURE.ADD_PROCEDURE(TO_TIMESTAMP('09/09/2021 04:00', 'MM/DD/YYYY hh24:mi'), 'PROCEDIMIENTO 4', 'DESCRIPCIÓN DEL PROCEDIMIENTO 4', 4, 4);
EXECUTE PKG_PROCEDURE.ADD_PROCEDURE(TO_TIMESTAMP('10/09/2021 05:00', 'MM/DD/YYYY hh24:mi'), 'PROCEDIMIENTO 5', 'DESCRIPCIÓN DEL PROCEDIMIENTO 5', 1, 5);
EXECUTE PKG_PROCEDURE.ADD_PROCEDURE(TO_TIMESTAMP('11/09/2021 06:00', 'MM/DD/YYYY hh24:mi'), 'PROCEDIMIENTO 6', 'DESCRIPCIÓN DEL PROCEDIMIENTO 6', 2, 6);
EXECUTE PKG_PROCEDURE.ADD_PROCEDURE(TO_TIMESTAMP('12/09/2021 07:00', 'MM/DD/YYYY hh24:mi'), 'PROCEDIMIENTO 7', 'DESCRIPCIÓN DEL PROCEDIMIENTO 7', 3, 7);
EXECUTE PKG_PROCEDURE.ADD_PROCEDURE(TO_TIMESTAMP('11/09/2021 08:00', 'MM/DD/YYYY hh24:mi'), 'PROCEDIMIENTO 8', 'DESCRIPCIÓN DEL PROCEDIMIENTO 8', 4, 8);
EXECUTE PKG_PROCEDURE.ADD_PROCEDURE(TO_TIMESTAMP('10/09/2021 09:00', 'MM/DD/YYYY hh24:mi'), 'PROCEDIMIENTO 9', 'DESCRIPCIÓN DEL PROCEDIMIENTO 9', 1, 9);
EXECUTE PKG_PROCEDURE.ADD_PROCEDURE(TO_TIMESTAMP('11/09/2021 01:30', 'MM/DD/YYYY hh24:mi'), 'PROCEDIMIENTO 10', 'DESCRIPCIÓN DEL PROCEDIMIENTO 10', 2, 10);

-- SELECT PKG_PROCEDURE.READ_PROCEDURES FROM DUAL;

-- PROCEDURE DOCTOR
EXECUTE PKG_PROCEDURE.ADD_PROCEDURE_DOCTOR('CC', 1773190621, 1); 
-- SELECT PKG_PROCEDURE.READ_DOCTOR_PROCEDURES('CC', 1773190621) FROM DUAL;

-- PROCEDURE NURSE
EXECUTE PKG_PROCEDURE.ADD_PROCEDURE_NURSE('CC', 7933982639, 1); 
-- SELECT PKG_PROCEDURE.READ_NURSE_PROCEDURES('CC', 7933982639) FROM DUAL;


-- BACKGROUND DISEASE
EXECUTE PKG_CLINICAL_HISTORY.ADD_BACKGROUND_DISEASE(1, 2);
--SELECT PKG_CLINICAL_HISTORY.READ_BACKGROUND_DISEASE('CC', 9254619331) FROM DUAL;

-- BACKGROUND PROCEDURE
EXECUTE PKG_CLINICAL_HISTORY.ADD_BACKGROUND_PROCEDURE(1, 2);
--SELECT PKG_CLINICAL_HISTORY.READ_BACKGROUND_PROCEDURE('CC', 9254619331) FROM DUAL;

-- MANAGEMENT PLAN TO PROCEDURE
EXECUTE PKG_PROCEDURE.ADD_MANAGEMENT_PLAN(30, 1);
EXECUTE PKG_PROCEDURE.ADD_MANAGEMENT_PLAN(10, 3);
--SELECT PKG_PROCEDURE.READ_PROCEDURES FROM DUAL;

-- APPOINTMENT
EXECUTE PKG_APPOINTMENT.ADD_APPOINTMENT(4, 'MOTIVO DE PRUEBA 1', TO_TIMESTAMP('11/09/2021 01:30', 'MM/DD/YYYY HH24:MI'), 1);
-- SELECT PKG_APPOINTMENT.READ_APPOINTMENTS FROM DUAL;

-- APPOINTMENT DOCTOR
EXECUTE PKG_APPOINTMENT.ADD_APPOINTMENT_DOCTOR('CC', 1773190621, 1);
-- SELECT PKG_APPOINTMENT.READ_DOC_APPOINTMENTS('CC', 1773190621) FROM DUAL;

-- APPOINTMENT NURSE
EXECUTE PKG_APPOINTMENT.ADD_APPOINTMENT_NURSE('CC', 7933982639, 1);
-- SELECT PKG_APPOINTMENT.READ_NUR_APPOINTMENTS('CC', 7933982639) FROM DUAL;

-- APPOINTMENT PATIENT
-- SELECT PKG_APPOINTMENT.READ_PAT_APPOINTMENTS('CC', 2984806463) FROM DUAL;

-- APPOINTMENT DIAGNOSIS
EXECUTE PKG_APPOINTMENT.ADD_DIAGNOSIS(1, 'DIAGNÓSTICO DE PRUEBA');

-- FINISH APPOINTMENT
EXECUTE PKG_APPOINTMENT.FINISH_APPOINTMENT(1);


-- EXAMS
EXECUTE PKG_EXAMS.ADD_EXAM('EXAMEN 1');
EXECUTE PKG_EXAMS.ADD_MANAGEMENT_PLAN(1, 1);
EXECUTE PKG_EXAMS.ADD_EXAM_LAB(1, 1);
EXECUTE PKG_EXAMS.UPDATE_EXAM_LAB(4, 1);
EXECUTE PKG_EXAMS.ADD_EXAM_NURSE(1, 'CC', 7933982639);

--SELECT PKG_EXAMS.READ_ALL_EXAMS FROM DUAL;
--SELECT PKG_EXAMS.READ_SPEC_EXAMS(1) FROM DUAL;
--SELECT PKG_EXAMS.READ_EXAM_NURSE(1, NULL, NULL) FROM DUAL;
--SELECT PKG_EXAMS.READ_EXAM_NURSE(NULL, 'CC', 7933982639) FROM DUAL;


-- MEDICINES
EXECUTE PKG_MEDICINES.ADD_MED_TYPE('TIPO DE MEDICAMENTO 1');
EXECUTE PKG_MEDICINES.ADD_MED_COMPONENT('COMPONENTE DE MEDICAMENTO 1');
EXECUTE PKG_MEDICINES.ADD_MEDICINE('MEDICAMENTO 1','PRESENTACION 1','PRODUCTOR 1', 1 ,1, 1, 10);

EXECUTE PKG_MEDICINES.ADD_MED_TYPE('TIPO DE MEDICAMENTO 2');
EXECUTE PKG_MEDICINES.ADD_MED_TYPE('TIPO DE MEDICAMENTO 3');
EXECUTE PKG_MEDICINES.ADD_MED_TYPE('TIPO DE MEDICAMENTO 4');
EXECUTE PKG_MEDICINES.ADD_MED_TYPE('TIPO DE MEDICAMENTO 5');
EXECUTE PKG_MEDICINES.ADD_MED_TYPE('TIPO DE MEDICAMENTO 6');
EXECUTE PKG_MEDICINES.ADD_MED_TYPE('TIPO DE MEDICAMENTO 7');

EXECUTE PKG_MEDICINES.ADD_MED_COMPONENT('COMPONENTE DE MEDICAMENTO 2');
EXECUTE PKG_MEDICINES.ADD_MED_COMPONENT('COMPONENTE DE MEDICAMENTO 3');
EXECUTE PKG_MEDICINES.ADD_MED_COMPONENT('COMPONENTE DE MEDICAMENTO 4');
EXECUTE PKG_MEDICINES.ADD_MED_COMPONENT('COMPONENTE DE MEDICAMENTO 5');
EXECUTE PKG_MEDICINES.ADD_MED_COMPONENT('COMPONENTE DE MEDICAMENTO 6');
EXECUTE PKG_MEDICINES.ADD_MED_COMPONENT('COMPONENTE DE MEDICAMENTO 7');

EXECUTE PKG_MEDICINES.ADD_MEDICINE('MEDICAMENTO 2','PRESENTACION 2','PRODUCTOR 2', 1 ,1, 1, 10);
EXECUTE PKG_MEDICINES.ADD_MEDICINE('MEDICAMENTO 3','PRESENTACION 3','PRODUCTOR 3', 1 ,1, 1, 10);
EXECUTE PKG_MEDICINES.ADD_MEDICINE('MEDICAMENTO 4','PRESENTACION 4','PRODUCTOR 4', 1 ,1, 1, 10);
EXECUTE PKG_MEDICINES.ADD_MEDICINE('MEDICAMENTO 5','PRESENTACION 5','PRODUCTOR 5', 1 ,1, 1, 10);
EXECUTE PKG_MEDICINES.ADD_MEDICINE('MEDICAMENTO 6','PRESENTACION 6','PRODUCTOR 6', 1 ,1, 1, 10);
EXECUTE PKG_MEDICINES.ADD_MEDICINE('MEDICAMENTO 7','PRESENTACION 7','PRODUCTOR 7', 1 ,1, 1, 10);

--SELECT PKG_MEDICINES.READ_MED_TYPES FROM DUAL;
--SELECT PKG_MEDICINES.READ_MED_COMPONENTS FROM DUAL;
--SELECT PKG_MEDICINES.READ_ALL_MED FROM DUAL;

-- MEDICINES TO APPOINTMENT
EXECUTE PKG_MEDICINES.ADD_MED_TO_APPOINTMENT('MEDICAMENTO 2', 1);

-- MEDICINES TO PROCEDURE
EXECUTE PKG_MEDICINES.ADD_MED_TO_PROCEDURE('MEDICAMENTO 3', 10);
