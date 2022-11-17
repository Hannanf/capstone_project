-- JOIN MAIN AND PERSON TABLES
DROP TABLE IF EXISTS insurance_indexed;

-- Creating tables for Insurance.
CREATE TABLE insurance_indexed (
    id INT (4) NOT NULL,
    age INT (2) NOT NULL,
    average income VARCHAR (10) NOT NULL,
    sex VARCHAR(6) NOT NULL,
    bmi FLOAT (6) NOT NULL,
    children INT (2) NOT NULL,
    smoker BIT NOT NULL,
    region VARCHAR (9) NOT NULL,
    charges FLOAT (11) NOT NULL,
    PRIMARY KEY (id)
);