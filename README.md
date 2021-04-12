# DISAN Database

## Laura Valentina García, Juan David Murillo

Here you will find all the SQL code used to create the DISAN database. The DBM that we are using is ORACLE.

## TO-DO List

### 11/04/2021

- Si una persona es doctor, los tipos de documento válidos son ('CC', 'CE', 'PS')
- Si una persona es enfermero/a, los tipos de documento válidos son ('CC', 'CE', 'PS')
- La fecha de una cita no puede ser menor a la fecha actual, es decir, no puedo agendar 'appointments' en días que YA pasaron
- No pueden haber 'Medicines' sin componentes ('Medication Components')

### POR PROBAR

- Fuerza militar IN ('Ejército', 'Fuerza Aérea', 'Armada')
- documentType IN ('CC', 'CE', 'TI', 'RC', 'PS')
- gender IN ('F', 'M')
- status IN ('A', 'I')
- Verificar correo
- Verificar que la fecha de cumpleaños de un paciente sea mayor a su fecha de registro en el sistema (no hay registros de personas que no han nacido)

### Summary

- Appointment <PENDIENTE POR PROBAR>
- AppointmentDoctor <PENDIENTE POR PROBAR>
- AppointmentNurse <PENDIENTE POR PROBAR>
- Background <PENDIENTE POR PROBAR>
- Battalion (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- Brigade (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- City (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- ClinicalHistory (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Disease <PENDIENTE POR PROBAR>
- Division (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- Doctor (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- Exams <PENDIENTE POR PROBAR>
- Hospital (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Laboratory <PENDIENTE POR PROBAR>
- ExamsLaboratory <PENDIENTE POR PROBAR>
- ManagementPlan <PENDIENTE POR PROBAR>
- MedicationComponents <PENDIENTE POR PROBAR>
- MedicationInventory (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- MedicationType (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Medicines <PENDIENTE POR PROBAR>
- MilitaryUnit (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Nurse (POBLAR OK | POBLAR NO OK | NO NECESITA AUTOMATIZACIÓN)
- ExamsNurse <PENDIENTE POR PROBAR>
- Patient (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Person (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Procedures <PENDIENTE POR PROBAR>
- ProcedureNurse <PENDIENTE POR PROBAR>
- ProcedureDoctor <PENDIENTE POR PROBAR>
- Specialty <PENDIENTE POR PROBAR>
- NurseSpeciality <PENDIENTE POR PROBAR>
- DoctorSpeciality <PENDIENTE POR PROBAR>
- SuppliesInventory (POBLAR OK | POBLAR NO OK | AUTOMATIZACIÓN)
- Supply <PENDIENTE POR PROBAR>

## Considerations

- ON DELETE RESTRICT
- Do not create Indexes

## Running the code

For running the code simply copy all the code from the SQL file and paste it into your SQL Developer tab, then run it. That's it!
