# DISAN Database

## Laura Valentina García, Juan David Murillo

Here you will find all the SQL code used to create the DISAN database. The DBM that we are using is ORACLE.

## TO-DO List

- Módulo de procedimientos
- Módulo de especialidades
- Módulo de exámenes (Exams, exams nurse)
- Módulo de medicinas
- Agregar enfermeras a las citas y procedimientos

- Si una persona es doctor, los tipos de documento válidos son ('CC', 'CE', 'PS')
- Si una persona es enfermero/a, los tipos de documento válidos son ('CC', 'CE', 'PS')
- Verificar que la fecha de cumpleaños de un paciente sea mayor a su fecha de registro en el sistema (no hay registros de personas que no han nacido)
- REALIZAR TUPLASOK
- REALIZAR TUPLASNOOK

### POR PROBAR

### Summary

- Appointment (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- AppointmentDoctor (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- AppointmentNurse (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- Background(POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- Battalion (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- Brigade (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- City (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- ClinicalHistory (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Disease (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Division (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- Doctor (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- Exams <(POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Hospital (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Laboratory (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- ExamsLaboratory (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- ManagementPlan(POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- MedicationComponents (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- MedicationInventory (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- MedicationType (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Medicines (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- MilitaryUnit (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Nurse (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- ExamsNurse (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- Patient (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Person (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Procedures (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- ProcedureNurse (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- ProcedureDoctor (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- Specialty (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- NurseSpeciality (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- DoctorSpeciality (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- SuppliesInventory (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Supply (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)

## Considerations

- ON DELETE RESTRICT
- Do not create Indexes

## Running the code

For running the code simply copy all the code from the SQL file and paste it into your SQL Developer tab, then run it. That's it!
