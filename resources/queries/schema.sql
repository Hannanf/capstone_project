-- JOIN MAIN AND PERSON TABLES
DROP TABLE IF EXISTS insurance;

-- Creating tables for Insurance.
CREATE TABLE insurance (
	age INT NOT NULL,
	sex VARCHAR NOT NULL,
	bmi FLOAT NOT NULL,
	children INT NOT NULL,
	smoker VARCHAR NOT NULL,
	region VARCHAR NOT NULL,
	charges FLOAT NOT NULL
);

SELECT * FROM insurance;

-- JOIN MAIN AND PERSON TABLES
DROP TABLE IF EXISTS combined_dataframes;

-- Creating tables for Insurance.
CREATE TABLE combined_dataframes (
	id int NOT NUll,
	age INT NOT NULL,
	average_income VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	bmi FLOAT NOT NULL,
	children INT NOT NULL,
	smoker VARCHAR NOT NULL,
	region VARCHAR NOT NULL,
	charges FLOAT NOT NULL
);

SELECT * FROM combined_dataframes;

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