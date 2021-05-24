-- SUPPLIES INVENTORY
SELECT PKG_SUPPLIES_INVENTORY.READ_SUPPLIES_INVENTORY FROM DUAL;

-- SUPPLY
SELECT PKG_SUPPLY.READ_SUPPLY FROM DUAL;
SELECT PKG_SUPPLY.READ_SPEC_SUPPLY('TEST') FROM DUAL;

-- CITY
SELECT PKG_CITY.READ_CITY FROM DUAL;

-- MILITARY UNIT
SELECT PKG_MILITARY_UNIT.READ_MILITARY_UNIT FROM DUAL;
SELECT PKG_MILITARY_UNIT.READ_DIVISION FROM DUAL;
SELECT PKG_MILITARY_UNIT.READ_BRIGADE FROM DUAL;
SELECT PKG_MILITARY_UNIT.READ_BATTALION FROM DUAL;

-- LABORATORY
SELECT PKG_LABORATORY.READ_LABORATORY FROM DUAL;

-- MEDICATION INVENTORY
SELECT PKG_MEDICATION_INVENTORY.READ_MEDICATION_INVENTORY FROM DUAL;

-- HOSPITAL
SELECT PKG_HOSPITAL.READ_HOSPITAL FROM DUAL;

-- SPECIALTY
SELECT PKG_SPECIALTY.READ_SPECIALTIES FROM DUAL;

-- PERSON
SELECT PKG_PERSON.READ_PERSON FROM DUAL;
SELECT PKG_PERSON.READ_PATIENTS FROM DUAL;
SELECT PKG_PERSON.READ_DOCTOR FROM DUAL;
SELECT PKG_PERSON.READ_NURSE FROM DUAL;

-- PATIENT
SELECT PKG_PATIENT.READ_SPECIFIC_PATIENT('CC', 1235478965) FROM DUAL;
SELECT PKG_PATIENT.READ_PATIENT_BACK_PROC('CC', 1235478965) FROM DUAL;
SELECT PKG_PATIENT.READ_PATIENT_BACK_DIS('CC', 1235478965) FROM DUAL;

-- DOCTOR
SELECT PKG_DOCTOR.READ_DOCTOR FROM DUAL;
SELECT PKG_DOCTOR.READ_DOC_SPECIALTY(1) FROM DUAL;
SELECT PKG_DOCTOR.READ_SPECIFIC_DOCTOR('CC', 1235478965) FROM DUAL
!!SELECT PKG_DOCTOR.READ_APPOINTMENTS('CC', 1235478965) FROM DUAL;

-- NURSE
SELECT PKG_NURSE.READ_NURSE FROM DUAL;
SELECT PKG_NURSE.READ_SPECIFIC_NURSE('CC', 1235478965) FROM DUAL;
SELECT PKG_NURSE.READ_ALL_DOCTORS FROM DUAL;
!!SELECT PKG_NURSE.READ_APPOINTMENTS('CC', 1235478965) FROM DUAL;

-- DISEASE
SELECT PKG_DISEASE.READ_DISEASES FROM DUAL;

-- PROCEDURE
SELECT PKG_PROCEDURE.READ_PROCEDURES FROM DUAL;

-- PROCEDURE DOCTOR
SELECT PKG_PROCEDURE.READ_DOCTOR_PROCEDURES('CC', 1773190621) FROM DUAL;

-- PROCEDURE NURSE
SELECT PKG_PROCEDURE.READ_NURSE_PROCEDURES('CC', 7933982639) FROM DUAL;

-- BACKGROUNDS
SELECT PKG_BACKGROUND.READ_BACKGROUNDS FROM DUAL;
SELECT PKG_BACKGROUND.READ_PATIENT_BACKGROUNDS(2) FROM DUAL;

-- BACKGROUND DISEASE
SELECT PKG_CLINICAL_HISTORY.READ_BACKGROUND_DISEASE('CC', 9254619331) FROM DUAL;

-- BACKGROUND PROCEDURE
SELECT PKG_CLINICAL_HISTORY.READ_BACKGROUND_PROCEDURE('CC', 9254619331) FROM DUAL;

-- MANAGEMENT PLAN
SELECT PKG_MANAGEMENT_PLAN.READ_MANAGEMENT_PLAN FROM DUAL;

-- MANAGEMENT PLAN TO PROCEDURE
SELECT PKG_PROCEDURE.READ_PROCEDURES FROM DUAL;

-- APPOINTMENT
SELECT PKG_APPOINTMENT.READ_APPOINTMENTS FROM DUAL;

-- APPOINTMENT DOCTOR
SELECT PKG_APPOINTMENT.READ_DOC_APPOINTMENTS('CC', 1773190621) FROM DUAL;

-- APPOINTMENT NURSE
SELECT PKG_APPOINTMENT.READ_NUR_APPOINTMENTS('CC', 7933982639) FROM DUAL;

-- APPOINTMENT PATIENT
SELECT PKG_APPOINTMENT.READ_PAT_APPOINTMENTS('CC', 2984806463) FROM DUAL;

-- CLINICAL HISTORY
SELECT PKG_CLINICAL_HISTORY.READ_CLINICAL_HISTORY('CC', 2984806463) FROM DUAL;

-- EXAMS
SELECT PKG_EXAMS.READ_ALL_EXAMS FROM DUAL;
SELECT PKG_EXAMS.READ_SPEC_EXAMS(1) FROM DUAL;
SELECT PKG_EXAMS.READ_EXAM_LAB(1) FROM DUAL;
SELECT PKG_EXAMS.READ_EXAM_NURSE(1, NULL, NULL) FROM DUAL;
SELECT PKG_EXAMS.READ_EXAM_NURSE(NULL, 'CC', 7933982639) FROM DUAL;

-- MEDICINES
SELECT PKG_MEDICINES.READ_MED_TYPES FROM DUAL;
SELECT PKG_MEDICINES.READ_MED_COMPONENTS FROM DUAL;
SELECT PKG_MEDICINES.READ_ALL_MED FROM DUAL;
SELECT PKG_MEDICINES.READ_SPEC_MED('MEDICAMENTO 1') FROM DUAL;





