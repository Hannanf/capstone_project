-- JOIN MAIN AND PERSON TABLES
DROP TABLE IF EXISTS insurance_indexed;

-- Creating tables for Insurance.
CREATE TABLE insurance_indexed (
	id INT NOT NULL,
	age INT NOT NULL,
	average_income VARCHAR(10) NOT NULL,
	sex VARCHAR(6) NOT NULL,
	bmi FLOAT(6) NOT NULL,
	children INT NOT NULL,
	smoker BIT NOT NULL,
	region VARCHAR(9) NOT NULL,
	charges FLOAT(11) NOT NULL,
	PRIMARY KEY (id)
);

SELECT * FROM insurance_indexed;