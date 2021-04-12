--- X POBLAR ---
DELETE FROM Appointment; 
DELETE FROM Background; 
DELETE FROM Battalion; 
DELETE FROM Brigade; 
DELETE FROM City; 
DELETE FROM ClinicalHistory; 
DELETE FROM Disease; 
DELETE FROM Division; 
DELETE FROM Doctor; 
DELETE FROM Hospital; 
DELETE FROM Exams; 
DELETE FROM Laboratory; 
DELETE FROM ManagementPlan; 
DELETE FROM MedicationComponents; 
DELETE FROM MedicationInventory; 
DELETE FROM MedicationType; 
DELETE FROM Medicines;
DELETE FROM MilitaryUnit;
DELETE FROM Nurse; 
DELETE FROM Patient; 
DELETE FROM Person; 
DELETE FROM Procedures; 
DELETE FROM Speciality; 
DELETE FROM SuppliesInventory; 
DELETE FROM Supply; 
DELETE FROM ExamsLaboratory; 
DELETE FROM ExamsNurse; 
DELETE FROM NurseSpeciality; 
DELETE FROM DoctorSpeciality;
DELETE FROM AppointmentDoctor;
DELETE FROM AppointmentNurse; 
DELETE FROM ProcedureNurse;
DELETE FROM ProcedureDoctor;

--- POBLAR NO  OK ---

--- MEDICATION TYPE ---
--- idMedicationType -> NUMBER (10) NOT NULL ---
INSERT INTO MedicationType VALUES (99999999999, 'Oral'); 

--- name -> VARCHAR2(50) NOT NULL
INSERT INTO MedicationType VALUES (0000000001, 'Lorem ipsum dolor sit amet, consectetuer adipiscing'); 

--- Ambos son not null
INSERT INTO MedicationType VALUES (NULL, ''); 
INSERT INTO MedicationType VALUES (0000000001, ''); 
INSERT INTO MedicationType VALUES (NULL, 'Lorem'); 

--- Name es único ---
INSERT INTO MedicationType VALUES (1, 'Lorem');
INSERT INTO MedicationType VALUES (1, 'Lorem');

--- QUERY ---
SELECT * FROM MEDICATIONTYPE ORDER BY idmedicationtype;




--- MEDICATION INVENTORY ---
--- idMedicationInventory -> NUMBER(10) NOT NULL
INSERT INTO MedicationInventory VALUES (9999999999999);
INSERT INTO MedicationInventory VALUES (NULL);
INSERT INTO MedicationInventory VALUES (99);
INSERT INTO MedicationInventory VALUES (99);

--- QUERY ---
SELECT * FROM MEDICATIONINVENTORY ORDER BY idMedicationInventory;



--- SUPPLIES INVENTORY ---
--- idSuppliesInventory	-> NUMBER(10) NOT NULL
INSERT INTO SuppliesInventory VALUES (9999999999999);
INSERT INTO SuppliesInventory VALUES (NULL);
INSERT INTO SuppliesInventory VALUES (99);
INSERT INTO SuppliesInventory VALUES (99);

--- QUERY ---
SELECT * FROM SuppliesInventory ORDER BY idSuppliesInventory;



--- CITY ---
--- idCity -> NUMBER(10) NOT NULL
INSERT INTO City VALUES(99999999999, 'Leticia', 'Amazonas'); 

---	name ->	VARCHAR2(50) NOT NULL 	
INSERT INTO City VALUES(12, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'Amazonas'); 

---	department -> VARCHAR2(50) NOT NULL
INSERT INTO City VALUES(12, 'Amazonas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing'); 

INSERT INTO City VALUES(NULL, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing'); 
INSERT INTO City VALUES(12, '', '');

INSERT INTO City VALUES(0000000001, 'Leticia', 'Amazonas');
INSERT INTO City VALUES(0000000002, 'Leticia', 'Amazonas');

--- QUERY ---
SELECT * FROM City ORDER BY idCity;




--- MILITARY UNIT ---
--- idMilitaryUnit -> NUMBER(10) NOT NULL
INSERT INTO MilitaryUnit VALUES (99999999999, 'División 1', 1, NULL);
INSERT INTO MilitaryUnit VALUES (NULL, 'División 1', 1, NULL);

--- name -> VARCHAR2(250) NOT NULL
INSERT INTO MilitaryUnit VALUES (777, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium q', 1, NULL);

INSERT INTO MilitaryUnit VALUES (777, '', 1, NULL);

--- city -> NUMBER(10) NOT NULL
INSERT INTO MilitaryUnit VALUES (777, 'Lorem', 99999999999, NULL);
INSERT INTO MilitaryUnit VALUES (777, 'Lorem', NULL, NULL);

--- NAME IS UNIQUE
INSERT INTO MilitaryUnit VALUES (0000000001, 'División 1', 1, NULL);
INSERT INTO MilitaryUnit VALUES (0000000002, 'División 1', 1, NULL);
INSERT INTO MilitaryUnit VALUES (0000000003, 'División 2', 1, NULL);
INSERT INTO MilitaryUnit VALUES (0000000004, 'División 2', 1, NULL);

INSERT INTO MilitaryUnit VALUES (00000000011, 'Brigada 1', 1, NULL);
INSERT INTO MilitaryUnit VALUES (00000000012, 'Brigada 1', 1, NULL);
INSERT INTO MilitaryUnit VALUES (00000000013, 'Brigada 2', 1, NULL);
INSERT INTO MilitaryUnit VALUES (00000000014, 'Brigada 2', 1, NULL);

INSERT INTO MilitaryUnit VALUES (00000000021, 'Batallón 1', 1, NULL);
INSERT INTO MilitaryUnit VALUES (00000000022, 'Batallón 1', 1, NULL);
INSERT INTO MilitaryUnit VALUES (00000000023, 'Batallón 2', 1, NULL);
INSERT INTO MilitaryUnit VALUES (00000000024, 'Batallón 2', 1, NULL);

--- QUERY ---
SELECT * FROM MilitaryUnit ORDER BY idMilitaryUnit;


--- DIVISION ---
--- idDivision ->  NUMBER(10) NOT NULL
INSERT INTO Division VALUES (75321478951, 'Juline Theobold', 'Fuerza Aerea');
INSERT INTO Division VALUES (NULL, 'Juline Theobold', 'Fuerza Aerea');

--- commander -> VARCHAR2(100) NOT NULL
INSERT INTO Division VALUES (11, '', 'Fuerza Aerea');

INSERT INTO Division VALUES (11, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean mer', 'Fuerza Aerea');

--- militaryForce -> VARCHAR2(50) NOT NULL 
INSERT INTO Division VALUES (11, 'Juline Theobold', '');

INSERT INTO Division VALUES (11, 'Juline Theobold', 'Lorem ipsum dolor sit amet, consectetuer adipisciner');

--- COMANDER IS UNIQUE ---
INSERT INTO Division VALUES (0000000001, 'Juline Theobold', 'Fuerza Aerea');
INSERT INTO Division VALUES (0000000003, 'Juline Theobold', 'Armada');

--- QUERY ---
SELECT * FROM Division ORDER BY idDivision;


--- BRIGADE ---
--- idBrigade ->  NUMBER(10) NOT NULL
INSERT INTO Brigade VALUES (75321478951, 'Averyl Stinson', 'Armada', 1);
INSERT INTO Brigade VALUES (NULL, 'Averyl Stinson', 'Armada', 1);

--- commander -> VARCHAR2(100) NOT NULL
INSERT INTO Brigade VALUES (12, '', 'Fuerza Aerea', 1);

INSERT INTO Brigade VALUES (12, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean mer', 'Fuerza Aerea', 1);

--- militaryForce -> VARCHAR2(50) NOT NULL 
INSERT INTO Brigade VALUES (12, 'Juline Theobold', '', 1);

INSERT INTO Brigade VALUES (12, 'Juline Theobold', 'Lorem ipsum dolor sit amet, consectetuer adipisciner', 1);

--- idDivision -> NUMBER(10) NOT NULL
INSERT INTO Brigade VALUES (12, 'Averyl Stinson', 'Armada', 75321478951);
INSERT INTO Brigade VALUES (12, 'Averyl Stinson', 'Armada', NULL);

--- COMANDER IS UNIQUE ---
INSERT INTO Brigade VALUES (0000000011, 'Averyl Stinson', 'Armada', 1);
INSERT INTO Brigade VALUES (0000000013, 'Averyl Stinson', 'Fuerza Aérea', 1);

--- QUERY ---
SELECT * FROM Brigade ORDER BY idBrigade;



--- BATTALION  ---
--- idBattalion ->  NUMBER(10) NOT NULL
INSERT INTO Battalion VALUES (75321478951, 'Noe Mellows', 'Armada', 12);
INSERT INTO Battalion VALUES (NULL, 'Noe Mellows', 'Armada', 12);

--- commander -> VARCHAR2(100) NOT NULL
INSERT INTO Battalion VALUES (23, '', 'Fuerza Aerea', 12);

INSERT INTO Battalion VALUES (23, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean mer', 'Fuerza Aerea', 12);

--- militaryForce -> VARCHAR2(50) NOT NULL 
INSERT INTO Battalion VALUES (23, 'Juline Theobold', '', 12);

INSERT INTO Battalion VALUES (23, 'Juline Theobold', 'Lorem ipsum dolor sit amet, consectetuer adipisciner', 12);

--- idBrigade -> NUMBER(10) NOT NULL
INSERT INTO Battalion VALUES (23, 'Averyl Stinson', 'Armada', 75321478951);
INSERT INTO Battalion VALUES (23, 'Averyl Stinson', 'Armada', NULL);

--- COMANDER IS UNIQUE ---
INSERT INTO Battalion VALUES (0000000021, 'Noe Mellows', 'Armada', 11);
INSERT INTO Battalion VALUES (0000000023, 'Noe Mellows', 'Ejército', 11);

--- QUERY ---
SELECT * FROM Battalion ORDER BY idBattalion;



--- HOSPITAL ---
--- idHospital -> NUMBER(10) NOT NULL
INSERT INTO Hospital VALUES (12345678914, 'Hospital 1', 150, 48, 23, 1, 1, 1);
INSERT INTO Hospital VALUES (NULL, 'Hospital 1', 150, 48, 23, 1, 1, 1);

--- name -> VARCHAR2(50) NOT NULL 
INSERT INTO Hospital VALUES (0000000001, '', 150, 48, 23, 1, 1, 1);
INSERT INTO Hospital VALUES (0000000001, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 150, 48, 23, 1, 1, 1);

--- bedNumber -> NUMBER(10) NOT NULL
INSERT INTO Hospital VALUES (0000000001, 'Hospital 1', 12345678914, 48, 23, 1, 1, 1);
INSERT INTO Hospital VALUES (0000000001, 'Hospital 1', NULL, 48, 23, 1, 1, 1);

--- UCINumber -> NUMBER(10) NOT NULL 
INSERT INTO Hospital VALUES (0000000001, 'Hospital 1', 12, 12345678914, 23, 1, 1, 1);
INSERT INTO Hospital VALUES (0000000001, 'Hospital 1', 34, NULL, 23, 1, 1, 1);


--- idBattalion -> NUMBER(10) NOT NULL 
INSERT INTO Hospital VALUES (0000000001, 'Hospital 1', 150, 48, 12345678965, 1, 1, 1);
INSERT INTO Hospital VALUES (0000000001, 'Hospital 1', 150, 48, NULL, 1, 1, 1);


--- idSuppliesInventory	-> NUMBER(10) NOT NULL 
INSERT INTO Hospital VALUES (0000000001, 'Hospital 1', 150, 48, 1, 12345678965, 1, 1);
INSERT INTO Hospital VALUES (0000000001, 'Hospital 1', 150, 48, 1, NULL, 1, 1);

--- idCity -> NUMBER(10) NOT NULL 
INSERT INTO Hospital VALUES (0000000001, 'Hospital 1', 150, 48, 1, 1, 12345678965, 1);
INSERT INTO Hospital VALUES (0000000001, 'Hospital 1', 150, 48, 1, 1, NULL, 1);

--- idMedicationInventory -> NUMBER(10) NOT NULL
INSERT INTO Hospital VALUES (0000000001, 'Hospital 1', 150, 48, 1, 1, 1, 12345678965);
INSERT INTO Hospital VALUES (0000000001, 'Hospital 1', 150, 48, 1, 1, 1, NULL);

--- QUERY ---
SELECT * FROM Hospital ORDER BY idHospital;



--- PERSON ---
--- documentType -> VARCHAR2(2) NOT NULL
INSERT INTO Person VALUES ('CEEE', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

INSERT INTO Person VALUES ('', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

--- documentNumber -> NUMBER(10) NOT NULL
INSERT INTO Person VALUES ('CE', 147852369878, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

INSERT INTO Person VALUES ('CE', NULL, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

--- name -> VARCHAR2(50) NOT NULL
INSERT INTO Person VALUES ('CE', 1948559565, '', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

INSERT INTO Person VALUES ('CE', 1948559565, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

--- lastname -> VARCHAR2(50) NOT NULL
INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', '', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

--- gender -> CHAR(1) NOT NULL
INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Cianni', '', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Cianni', 'MM', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

--- birthDate -> DATE NOT NULL
INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Cianni', 'M', 'I', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

--- status -> CHAR(1) NOT NULL
INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), '', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'III', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

--- email -> VARCHAR2(100) NOT NULL
INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', '', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean m', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

--- registerDate -> DATE NOT NULL
INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', NULL);

--- EMAIL IS UNIQUE
INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));
INSERT INTO Person VALUES ('CE', 1948559565, 'Didi', 'Cianni', 'M', TO_DATE('01/26/1979', 'MM/DD/YYYY'), 'I', 'dcianni0@dot.gov', TO_DATE('04/10/2021', 'MM/DD/YYYY'));

--- QUERY ---
SELECT * FROM Person;


--- DOCTOR ---
--- documentType -> VARCHAR2(2) NOT NULL
INSERT INTO Doctor VALUES('', 1773190621, 'Fuerza Aerea');
INSERT INTO Doctor VALUES('TII', 1773190621, 'Fuerza Aerea');

--- documentNumber -> NUMBER(10) NOT NULL
INSERT INTO Doctor VALUES('TI', NULL, 'Fuerza Aerea');
INSERT INTO Doctor VALUES('TI', 123456789479, 'Fuerza Aerea');

--- militaryForce -> VARCHAR2(50) NOT NULL
INSERT INTO Doctor VALUES('TI', 1773190621, '');
INSERT INTO Doctor VALUES('TI', 1773190621, 'Lorem ipsum dolor sit amet, consectetuer adipiscing.');

--- QUERY ---
SELECT * FROM Doctor;


--- NURSE ---
--- documentType -> VARCHAR2(2) NOT NULL
INSERT INTO Nurse VALUES('', 1773190621, 'Fuerza Aerea');
INSERT INTO Nurse VALUES('TII', 1773190621, 'Fuerza Aerea');

--- documentNumber -> NUMBER(10) NOT NULL
INSERT INTO Nurse VALUES('TI', NULL, 'Fuerza Aerea');
INSERT INTO Nurse VALUES('TI', 123456789479, 'Fuerza Aerea');

--- militaryForce -> VARCHAR2(50) NOT NULL
INSERT INTO Nurse VALUES('TI', 1773190621, '');
INSERT INTO Nurse VALUES('TI', 1773190621, 'Lorem ipsum dolor sit amet, consectetuer adipiscing.');

--- QUERY ---
SELECT * FROM Nurse;



--- PATIENT ---
--- documentType -> VARCHAR2(2) NOT NULL
INSERT INTO Patient VALUES ('', 1948559565, 00001);
INSERT INTO Patient VALUES ('CEEE', 1948559565, 00001);

--- documentNumber -> NUMBER(10) NOT NULL
INSERT INTO Patient VALUES ('CE', NULL, 00001);
INSERT INTO Patient VALUES ('CE', 12345678985, 00001);

--- disanId -> NUMBER(10) NOT NULL
INSERT INTO Patient VALUES ('CE', 1948559565, NULL);
INSERT INTO Patient VALUES ('CE', 1948559565, 123456789874);

--- QUERY ---
SELECT * FROM Patient;


--- CLINICAL HISTORY ---
--- idClinicalHistory -> NUMBER(10) NOT NULL
INSERT INTO ClinicalHistory VALUES (NULL, 'CE', 1948559565);
INSERT INTO ClinicalHistory VALUES (12345678987, 'CE', 1948559565);

--- documentType -> VARCHAR2(2) NOT NULL
INSERT INTO ClinicalHistory VALUES (00001, '', 1948559565);
INSERT INTO ClinicalHistory VALUES (00001, 'CEEE', 1948559565);

--- documentNumber -> NUMBER(10) NOT NULL
INSERT INTO ClinicalHistory VALUES (00001, 'CE', NULL);
INSERT INTO ClinicalHistory VALUES (00001, 'CE', 12345678987);

--- QUERY ---
SELECT * FROM ClinicalHistory ORDER BY idClinicalHistory;



--- SPECIALTY --- 
--- idSpeciality -> NUMBER(10) NOT NULL
INSERT INTO Speciality VALUES (NULL, 'Hematologia');
INSERT INTO Speciality VALUES (1234569874785, 'Hematologia');

--- name -> VARCHAR2(50) NOT NULL
INSERT INTO Speciality VALUES (0000000001, '');
INSERT INTO Speciality VALUES (0000000001, 'Lorem ipsum dolor sit amet, consectetuer adipiscing.');

--- NAME IS UNIQUE
INSERT INTO Speciality VALUES (0000000001, 'Hematologia');
INSERT INTO Speciality VALUES (0000000001, 'Hematologia');

--- QUERY ---
SELECT * FROM Speciality ORDER BY idSpeciality ;



--- DOCTOR SPECIALTY ---
--- documentType -> VARCHAR2(2) NOT NULL
INSERT INTO DoctorSpeciality VALUES ('', 1773190621, 0000000001);
INSERT INTO DoctorSpeciality VALUES ('TIII', 1773190621, 0000000001);

--- documentNumber -> NUMBER(10) NOT NULL,
INSERT INTO DoctorSpeciality VALUES ('TI', NULL, 0000000001);
INSERT INTO DoctorSpeciality VALUES ('TI', 147852369874, 0000000001);

--- idSpeciality -> NUMBER(10) NOT NULL
INSERT INTO DoctorSpeciality VALUES ('TI', 1773190621, NULL);
INSERT INTO DoctorSpeciality VALUES ('TI', 1773190621, 123654789658);

--- QUERY ---
SELECT * FROM DoctorSpeciality;



--- NURSE SPECIALTY ---
--- documentType -> VARCHAR2(2) NOT NULL
INSERT INTO NurseSpeciality VALUES ('', 1773190621, 0000000001);
INSERT INTO NurseSpeciality VALUES ('TIII', 1773190621, 0000000001);

--- documentNumber -> NUMBER(10) NOT NULL,
INSERT INTO NurseSpeciality VALUES ('TI', NULL, 0000000001);
INSERT INTO NurseSpeciality VALUES ('TI', 147852369874, 0000000001);

--- idSpeciality -> NUMBER(10) NOT NULL
INSERT INTO NurseSpeciality VALUES ('TI', 1773190621, NULL);
INSERT INTO NurseSpeciality VALUES ('TI', 1773190621, 123654789658);

--- QUERY ---
SELECT * FROM NurseSpeciality;


--- BACKGROUND ---
--- idBackground -> NUMBER(10) NOT NULL
INSERT INTO Background VALUES (NULL, 00001); 
INSERT INTO Background VALUES (147852365474, 00001); 

--- idClinicalHistory -> NUMBER(10) NOT NULL
INSERT INTO Background VALUES (0000000001, NULL); 
INSERT INTO Background VALUES (0000000001, 145236987458); 

--- QUERY ---
SELECT * FROM Backgound ORDER BY idBackground ;


--- DISEASE ---
--- idDisease -> NUMBER(10) NOT NULL
INSERT INTO Disease VALUES (NULL, 'Liliaceae', 'Other fracture of left patella, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with routine healing', 2);
INSERT INTO Disease VALUES (147852369856, 'Liliaceae', 'Other fracture of left patella, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with routine healing', 2);

--- name -> VARCHAR2(50) NOT NULL
INSERT INTO Disease VALUES (0000000010, '', 'Other fracture of left patella, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with routine healing', 2);
INSERT INTO Disease VALUES (0000000010, 'Lorem ipsum dolor sit amet, consectetuer adipiscing.', 'Other fracture of left patella, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with routine healing', 2);

--- description -> VARCHAR2(500) NOT NULL
INSERT INTO Disease VALUES (0000000010, 'Liliaceae', '', 2);
INSERT INTO Disease VALUES (0000000010, 'Liliaceae', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.', 2);

--- idBackground -> NUMBER(10) NOT NULL
INSERT INTO Disease VALUES (0000000010, 'Liliaceae', 'Other fracture of left patella, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with routine healing', NULL);
INSERT INTO Disease VALUES (0000000010, 'Liliaceae', 'Other fracture of left patella, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with routine healing', 232123456723);

--- QUERY ---
SELECT * FROM Disease ORDER BY idDisease ;



--- LABORATORY ---
--- idLaboratory -> NUMBER(10) NOT NULL
INSERT INTO Laboratory VALUES (NULL, 'Kshlerin-Hilll', 1, 1);
INSERT INTO Laboratory VALUES (1234543212343, 'Kshlerin-Hilll', 1, 1);

--- name -> VARCHAR2(50) NOT NULL
INSERT INTO Laboratory VALUES (0000000001, '', 1, 1);
INSERT INTO Laboratory VALUES (0000000001, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1, 1);

--- idCity -> NUMBER(10) NOT NULL
INSERT INTO Laboratory VALUES (0000000001, 'Kshlerin-Hilll', NULL, 1);
INSERT INTO Laboratory VALUES (0000000001, 'Kshlerin-Hilll', 123432145678, 1);

--- idSuppliesInventory -> NUMBER(10) NOT NULL
INSERT INTO Laboratory VALUES (0000000001, 'Kshlerin-Hilll', 1, NULL);
INSERT INTO Laboratory VALUES (0000000001, 'Kshlerin-Hilll', 1, 123432145678);

--- QUERY ---
SELECT * FROM Laboratory ORDER BY idLaboratory ;



--- MANAGEMENT PLAN ---
--- idManagementPlan -> NUMBER(10) NOT NULL
INSERT INTO ManagementPlan VALUES (NULL, 'Retroverted and incarcerated gravid uterus, postpartum condition or complication');
INSERT INTO ManagementPlan VALUES (147852369856, 'Retroverted and incarcerated gravid uterus, postpartum condition or complication');

--- instructions -> VARCHAR2(500) NOT NULL
INSERT INTO ManagementPlan VALUES (0000000010, '');
INSERT INTO ManagementPlan VALUES (0000000010, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus');

--- QUERY ---
SELECT * FROM ManagementPlan ORDER BY idManagementPlan;


--- APPOINTMENT ---
--- idAppointment -> NUMBER(10) NOT NULL
INSERT INTO Appointment VALUES (NULL, 'Atypical squamous cells of undetermined significance on cytologic smear of anus (ASC-US)', TO_DATE('7/22/2022', 'MM/DD/YYYY'), 1, 2, 3);
INSERT INTO Appointment VALUES (145236547898, 'Atypical squamous cells of undetermined significance on cytologic smear of anus (ASC-US)', TO_DATE('7/22/2022', 'MM/DD/YYYY'), 1, 2, 3);

--- diagnosis -> VARCHAR2(500) NOT NULL
INSERT INTO Appointment VALUES (0000000001, '', TO_DATE('7/22/2022', 'MM/DD/YYYY'), 1, 2, 3);
INSERT INTO Appointment VALUES (0000000001, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus', TO_DATE('7/22/2022', 'MM/DD/YYYY'), 1, 2, 3);

--- dateAppointment -> DATE NOT NULL
INSERT INTO Appointment VALUES (0000000001, 'Atypical squamous cells of undetermined significance on cytologic smear of anus (ASC-US)', NULL, 1, 2, 3);

--- idClinicalHistory -> NUMBER(10) NOT NULL
INSERT INTO Appointment VALUES (0000000001, 'Atypical squamous cells of undetermined significance on cytologic smear of anus (ASC-US)', TO_DATE('7/22/2022', 'MM/DD/YYYY'), NULL, 2, 3);
INSERT INTO Appointment VALUES (0000000001, 'Atypical squamous cells of undetermined significance on cytologic smear of anus (ASC-US)', TO_DATE('7/22/2022', 'MM/DD/YYYY'), 123214543212, 2, 3);

--- idManagementPlan -> NUMBER(10) NOT NULL
INSERT INTO Appointment VALUES (0000000001, 'Atypical squamous cells of undetermined significance on cytologic smear of anus (ASC-US)', TO_DATE('7/22/2022', 'MM/DD/YYYY'), 1, NULL, 3);
INSERT INTO Appointment VALUES (0000000001, 'Atypical squamous cells of undetermined significance on cytologic smear of anus (ASC-US)', TO_DATE('7/22/2022', 'MM/DD/YYYY'), 1, 2312345432312, 3);

--- idHospital -> NUMBER(10) NOT NULL
INSERT INTO Appointment VALUES (0000000001, 'Atypical squamous cells of undetermined significance on cytologic smear of anus (ASC-US)', TO_DATE('7/22/2022', 'MM/DD/YYYY'), 1, 2, NULL);
INSERT INTO Appointment VALUES (0000000001, 'Atypical squamous cells of undetermined significance on cytologic smear of anus (ASC-US)', TO_DATE('7/22/2022', 'MM/DD/YYYY'), 1, 2, 123214341231);

--- QUERY ---
SELECT * FROM Appointment ORDER BY idAppointment;



--- APPOINTMENT DOCTOR ---
--- idAppointment -> NUMBER(10) NOT NULL
INSERT INTO AppointmentDoctor VALUES (NULL, 'TI', 1773190621);
INSERT INTO AppointmentDoctor VALUES (145236989655, 'TI', 1773190621);

--- documentType -> VARCHAR2(2) NOT NULL
INSERT INTO AppointmentDoctor VALUES (0000000001, '', 1773190621);
INSERT INTO AppointmentDoctor VALUES (0000000001, 'TIII', 1773190621);

--- documentNumber -> NUMBER(10) NOT NULL
INSERT INTO AppointmentDoctor VALUES (0000000001, 'TI', NULL);
INSERT INTO AppointmentDoctor VALUES (0000000001, 'TI', 1452369874521);

--- QUERY ---
SELECT * FROM AppointmentDoctor ORDER BY idAppointment;



--- APPOINTMENT NURSE ---
--- idAppointment -> NUMBER(10) NOT NULL
INSERT INTO AppointmentNurse VALUES (NULL, 'TI', 1773190621);
INSERT INTO AppointmentNurse VALUES (145236989655, 'TI', 1773190621);

--- documentType -> VARCHAR2(2) NOT NULL
INSERT INTO AppointmentNurse VALUES (0000000001, '', 1773190621);
INSERT INTO AppointmentNurse VALUES (0000000001, 'TIII', 1773190621);

--- documentNumber -> NUMBER(10) NOT NULL
INSERT INTO AppointmentNurse VALUES (0000000001, 'TI', NULL);
INSERT INTO AppointmentNurse VALUES (0000000001, 'TI', 1452369874521);

--- QUERY ---
SELECT * FROM AppointmentNurse ORDER BY idAppointment;


--- EXAMS ---
--- idExams -> NUMBER(10) NOT NULL
INSERT INTO Exams VALUES (NULL, 'Removal of Bandage on Left Lower Leg', 9);
INSERT INTO Exams VALUES (1478523698565, 'Removal of Bandage on Left Lower Leg', 9);

--- name -> VARCHAR2(250) NOT NULL
INSERT INTO Exams VALUES (0000000009, '', 9);
INSERT INTO Exams VALUES (0000000009, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium qu', 9);

--- idManagementPlan -> NUMBER(10) NOT NULL
INSERT INTO Exams VALUES (0000000009, 'Removal of Bandage on Left Lower Leg', NULL);
INSERT INTO Exams VALUES (0000000009, 'Removal of Bandage on Left Lower Leg', 147852369854);

--- QUERY ---
SELECT * FROM Exams ORDER BY idExams;


--- EXAMS LABORATORY ---
--- idLaboratory -> NUMBER(10) NOT NULL
INSERT INTO ExamsLaboratory VALUES (NULL, 0000000001);
INSERT INTO ExamsLaboratory VALUES (147852365895, 0000000001);

--- idExam -> NUMBER(10) NOT NULL
INSERT INTO ExamsLaboratory VALUES (0000000001, NULL);
INSERT INTO ExamsLaboratory VALUES (0000000001, 123654785954);

--- QUERY ---
SELECT * FROM ExamsLaboratory;


--- SUPPLY --- 
--- idSupply -> NUMBER(10) NOT NULL
INSERT INTO Speciality values (NULL, 'Poaceae', 1200, 2);
INSERT INTO Speciality values (123659856321, 'Poaceae', 1200, 2);

--- name -> VARCHAR2(50) NOT NULL
INSERT INTO Speciality values (000000002, '', 1200, 2);
INSERT INTO Speciality values (000000002, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium qu', 1200, 2);

--- amount -> NUMBER(10) NOT NULL
INSERT INTO Speciality values (000000002, 'Poaceae', NULL, 2);
INSERT INTO Speciality values (000000002, 'Poaceae', 145236987485, 2);

--- idSuppliesInventory -> NUMBER(10) NOT NULL
INSERT INTO Speciality values (000000002, 'Poaceae', 1200, NULL);
INSERT INTO Speciality values (000000002, 'Poaceae', 1200, 123654741258);

--- QUERY ---
SELECT * FROM Supply ORDER BY idSupply;
