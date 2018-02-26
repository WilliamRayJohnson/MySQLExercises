/*Creates the tables for Figure 5.5*/

CREATE DATABASE company_records;

USE company_records;

CREATE TABLE Employee (
    Fname VARCHAR(20) NOT NULL,
    Minit VARCHAR(1) NOT NULL,
    Lname VARCHAR(20) NOT NULL,
    Ssn INT NOT NULL PRIMARY KEY,
    Bdate DATE NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Sex VARCHAR(1) NOT NULL,
    Salary INT NOT NULL,
    Super_ssn INT,
    Dno INT NOT NULL);
    
ALTER TABLE Employee
    ADD FOREIGN KEY (Super_ssn)
        REFERENCES Employee(Ssn)
        ON UPDATE CASCADE
        ON DELETE RESTRICT;
    
CREATE TABLE Department (
    Dname VARCHAR(20) NOT NULL,
    Dnumber INT NOT NULL PRIMARY KEY,
    Mgr_ssn INT NOT NULL,
    FOREIGN KEY (Mgr_ssn)
        REFERENCES Employee(Ssn)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    Mgr_start_date DATE NOT NULL);
    
CREATE TABLE Dept_locations (
    Dnumber INT NOT NULL,
    FOREIGN KEY (Dnumber)
        REFERENCES Department(Dnumber)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    Dlocation VARCHAR(30) NOT NULL,
    PRIMARY KEY (Dnumber, Dlocation));
    
CREATE TABLE Project (
    Pname VARCHAR(30) NOT NULL,
    Pnumber INT NOT NULL PRIMARY KEY,
    Plocation VARCHAR(20) NOT NULL,
    Dnum INT NOT NULL,
    FOREIGN KEY (Dnum)
        REFERENCES Department(Dnumber)
        ON UPDATE CASCADE
        ON DELETE RESTRICT);
        
CREATE TABLE Works_on (
    Essn INT NOT NULL,
    FOREIGN KEY (Essn)
        REFERENCES Employee(Ssn)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    Pno INT NOT NULL,
    FOREIGN KEY (Pno)
        REFERENCES Project(Pnumber)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    Hours FLOAT,
    PRIMARY KEY (Essn, Pno));
    
CREATE TABLE Dependent (
    Essn INT NOT NULL,
    FOREIGN KEY (Essn)
        REFERENCES Employee(Ssn)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    Dependent_name VARCHAR(20) NOT NULL,
    Sex VARCHAR(1) NOT NULL,
    Bdate DATE NOT NULL,
    Relationship VARCHAR(15) NOT NULL,
    PRIMARY KEY (Essn, Dependent_name));