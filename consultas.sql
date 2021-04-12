--- MEDICATION TYPE ---
SELECT * FROM MEDICATIONTYPE ORDER BY idmedicationtype;

--- MEDICATION INVENTORY ---
SELECT * FROM MEDICATIONINVENTORY ORDER BY idMedicationInventory;

--- SUPPLIES INVENTORY ---
SELECT * FROM SuppliesInventory ORDER BY idSuppliesInventory;

--- CITY ---
SELECT * FROM City ORDER BY idCity;

--- MILITARY UNIT ---
SELECT * FROM MilitaryUnit ORDER BY idMilitaryUnit;

--- DIVISION ---
SELECT * FROM Division ORDER BY idDivision;

--- BRIGADE ---
SELECT * FROM Brigade ORDER BY idBrigade;

--- BATTALION ---
SELECT * FROM Battalion ORDER BY idBattalion;

--- HOSPITAL ---
SELECT * FROM Hospital ORDER BY idHospital;

--- PERSON ---
SELECT * FROM Person;

 --- HASTA AQUÍ TODO 10/10

--- DOCTOR ---
SELECT * FROM Doctor;

--- NURSE ---
SELECT * FROM Nurse;

--- PATIENT ---
SELECT * FROM Patient;

--- CLINICAL HISTORY ---
SELECT * FROM ClinicalHistory ORDER BY idClinicalHistory;

--- SPECIALTY ---
SELECT * FROM Speciality ORDER BY idSpeciality ;

--- DOCTOR SPECIALTY ---
SELECT * FROM DoctorSpeciality;

--- NURSE SPECIALTY ---
SELECT * FROM NurseSpeciality;

--- BACKGROUND ---
SELECT * FROM Background ORDER BY idBackground ;

--- LABORATORY ---
SELECT * FROM Laboratory ORDER BY idLaboratory ;

--- MANAGEMENT PLAN ---
SELECT * FROM ManagementPlan ORDER BY idManagementPlan;

--- APPOINTMENT ---
SELECT * FROM Appointment ORDER BY idAppointment;

--- APPOINTMENT DOCTOR ---
SELECT * FROM AppointmentDoctor ORDER BY idAppointment;

--- APPOINTMENT NURSE ---
SELECT * FROM AppointmentNurse ORDER BY idAppointment;

--- EXAMS ---
SELECT * FROM Exams ORDER BY idExams;

--- SUPPLY ---
SELECT * FROM Supply ORDER BY idSupply;

--- MEDICINES ---
SELECT * FROM Medicines ORDER BY idMedicines; 

--- MEDICATION COMPONENTS ---
SELECT * FROM MedicationComponents ORDER BY idMedicationComponent;

--- PROCEDURES ---
SELECT * FROM Procedures ORDER BY idProcedure; 

--- EXAMS NURSE ---
SELECT * FROM ExamsNurse ORDER BY idExam; 

--- PROCEDURE NURSE ---
SELECT * FROM ProcedureNurse ORDER BY idProcedure; 

--- PROCEDURE DOCTOR ---
SELECT * FROM ProcedureDoctor ORDER BY idProcedure; 