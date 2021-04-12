ALTER TABLE Battalion 
	ADD CONSTRAINT CK_BATTALION_MILFORCE 
	CHECK (militaryForce IN ('Fuerza Aérea', 'Armada', 'Ejército'));
	
ALTER TABLE Brigade 
	ADD CONSTRAINT CK_BRIGADE_MILFORCE
	CHECK (militaryForce IN ('Fuerza Aérea', 'Armada', 'Ejército'));
	
ALTER TABLE Division 
	ADD CONSTRAINT CK_DIVISION_MILFORCE
	CHECK (militaryForce IN ('Fuerza Aérea', 'Armada', 'Ejército'));	
	
ALTER TABLE Doctor 
	ADD CONSTRAINT CK_DOCTOR_MILFORCE
	CHECK (militaryForce IN ('Fuerza Aérea', 'Armada', 'Ejército'));	

ALTER TABLE Nurse 
	ADD CONSTRAINT CK_NURSE_MILFORCE
	CHECK (militaryForce IN ('Fuerza Aérea', 'Armada', 'Ejército'));

ALTER TABLE Person 
	ADD CONSTRAINT CK_PERSON_DOCTYPE
	CHECK (documentType IN ('CC', 'CE', 'TI', 'RC', 'PS'));
	
ALTER TABLE Person 
	ADD CONSTRAINT CK_PERSON_GENDER
	CHECK (documentType IN ('F', 'M'));
	
ALTER TABLE Person 
	ADD CONSTRAINT CK_PERSON_STATUS
	CHECK (status IN ('A', 'I'));
	
ALTER TABLE Person 
	ADD CONSTRAINT CK_PERSON_EMAIL 
	CHECK (REGEXP_LIKE(email, '^[A-Za-z]*[0-9]*@[A-Za-z]*.[A-Za-z]*$'));
	
ALTER TABLE Person 
	ADD CONSTRAINT CK_PERSON_DATEVAL 
	CHECK (registerDate > birthDate); 
	
ALTER TABLE Doctor 
	ADD CONSTRAINT CK_PERSON_DOCTYPE
	CHECK (documentType IN ('CC', 'CE', 'PS'));	
	
ALTER TABLE Nurse 
	ADD CONSTRAINT CK_PERSON_DOCTYPE
	CHECK (documentType IN ('CC', 'CE', 'PS'));	
	
	


	

	
