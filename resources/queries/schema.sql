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

-- JOIN MAIN AND PERSON TABLES
DROP TABLE IF EXISTS average_age_by_state;

-- Create a table for average_age_by_state.
CREATE TABLE average_age_by_state (
	id INT NOT NULL,
	region VARCHAR(9) NOT NULL,
	average_age FLOAT NOT NULL,
	PRIMARY KEY (id)
);

SELECT * FROM average_age_by_state

INSERT INTO average_age_by_state(id, region, average_age)
VALUES
(0, 'northwest', 79.88),
(1, 'northeast', 79.24),
(2, 'southwest', 76.96),
(3, 'southeast', 78.43);

SELECT * FROM average_age_by_state