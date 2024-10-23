CREATE DATABASE IndiaDB;
USE IndiaDB;

CREATE TABLE States (
    StateID INT PRIMARY KEY,
    StateName VARCHAR(50),
    Population INT,
    Area FLOAT
);

CREATE TABLE Cities (
    CityID INT PRIMARY KEY,
    CityName VARCHAR(50),
    StateID INT,
    Population INT,
    FOREIGN KEY (StateID) REFERENCES States(StateID)
);

CREATE TABLE People (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(50),
    Age INT,
    CityID INT,
    JobID INT,
    FOREIGN KEY (CityID) REFERENCES Cities(CityID),
    FOREIGN KEY (JobID) REFERENCES Jobs(JobID)
);

CREATE TABLE Jobs (
    JobID INT PRIMARY KEY,
    JobTitle VARCHAR(50),
    Salary INT
);

-- States data
INSERT INTO States (StateID, StateName, Population, Area) VALUES
(1, 'Maharashtra', 112374333, 307713),
(2, 'Karnataka', 61095297, 191791),
(3, 'Gujarat', 60439692, 196024);

-- Cities data
INSERT INTO Cities (CityID, CityName, StateID, Population) VALUES
(1, 'Mumbai', 1, 12442373),
(2, 'Bangalore', 2, 8443675),
(3, 'Ahmedabad', 3, 5577940);

-- Jobs data
INSERT INTO Jobs (JobID, JobTitle, Salary) VALUES
(1, 'Software Engineer', 1200000),
(2, 'Doctor', 1500000),
(3, 'Teacher', 500000);

-- People data
INSERT INTO People (PersonID, PersonName, Age, CityID, JobID) VALUES
(1, 'Rahul Deshmukh', 30, 1, 1),
(2, 'Sanjay Sharma', 45, 2, 2),
(3, 'Anita Patel', 35, 3, 3);



