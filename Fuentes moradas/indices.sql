-- PROCEDURES
CREATE INDEX IDX_PROCEDURES ON PROCEDURES (name);

-- HOSPITALS
CREATE INDEX IDX_HOSPITALS ON HOSPITALS (name);

-- MEDICINES
CREATE INDEX IDX_MEDICINES ON MEDICINES (commercialName);

-- SUPPLIES
CREATE INDEX IDX_SUPPLY ON SUPPLY (name);

-- LABORATORIES
CREATE INDEX IDX_LABORATORY ON LABORATORY (name);