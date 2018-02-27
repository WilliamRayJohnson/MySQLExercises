/*Inserts data into employee_records*/

/*Employee Table*/
INSERT INTO Employee
    VALUES('James', 'E', 'Borg', 888665555, '1937-11-10', '450 Stone, Houston, TX', 'M', 55000, NULL, 1);
    
INSERT INTO Employee
    VALUES('Franklin', 'T', 'Wong', 333445555, '1955-12-08', '638 Voss, Houston, TX', 'M', 40000, 888665555, 5);
    
INSERT INTO Employee
    VALUES('Jennifer', 'S', 'Wallace', 987654321, '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000, 888665555, 4);

INSERT INTO Employee
    VALUES('John', 'B', 'Smith', 123456789, '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, 333445555, 5);

INSERT INTO Employee
    VALUES('Alicia', 'J', 'Zelaya', 999887777, '1968-01-19', '3321 Castle, Spring, TX', 'F', 25000, 987654321, 4);

INSERT INTO Employee
    VALUES('Ramesh', 'K', 'Narayan', 666884444, '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000, 333445555, 5);

INSERT INTO Employee
    VALUES('Joyce', 'A', 'English', 453453453, '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000, 333445555, 5);

INSERT INTO Employee
    VALUES('Ahmad', 'V', 'Jabbar', 987987987, '1969-03-29', '980 Dallas, Houston, TX', 'M', 25000, 987654321, 4);

/*Department Table*/
INSERT INTO Department
    VALUES('Headquarters', 1, 888665555, '1981-06-19');

INSERT INTO Department
    VALUES('Research', 5, 333445555, '1988-05-22');
    
INSERT INTO Department
    VALUES('Administration', 4, 987654321, '1995-01-01');
    
/*Foreign key added after employees and departments have been established*/
ALTER TABLE Employee
    ADD FOREIGN KEY (Dno)
        REFERENCES Department(Dnumber)
        ON UPDATE CASCADE
        ON DELETE RESTRICT;
    
/*Dept_locations Table*/
INSERT INTO Dept_locations
    VALUES(1, 'Houston');

INSERT INTO Dept_locations
    VALUES(4, 'Stafford');

INSERT INTO Dept_locations
    VALUES(5, 'Bellaire');

INSERT INTO Dept_locations
    VALUES(5, 'Sugarland');

INSERT INTO Dept_locations
    VALUES(5, 'Houston');

/*Project Table*/
INSERT INTO Project
    VALUES('Reorganization', 20, 'Houston', 1);

INSERT INTO Project
    VALUES('ProductX', 1, 'Bellaire', 5);

INSERT INTO Project
    VALUES('ProductY', 2, 'Sugarland', 5);

INSERT INTO Project
    VALUES('ProductZ', 3, 'Houston', 5);

INSERT INTO Project
    VALUES('Computerization', 10, 'Stafford', 4);

INSERT INTO Project
    VALUES('Newbenefits', 30, 'Stafford', 4);
    
/*Works_on Table*/
INSERT INTO Works_on
    VALUES(888665555, 20, NULL);

INSERT INTO Works_on
    VALUES(123456789, 1, 32.5);

INSERT INTO Works_on
    VALUES(123456789, 2, 7.5);

INSERT INTO Works_on
    VALUES(666884444, 3, 40.0);

INSERT INTO Works_on
    VALUES(453453453, 1, 20.0);

INSERT INTO Works_on
    VALUES(453453453, 2, 10.0);

INSERT INTO Works_on
    VALUES(333445555, 3, 10.0);

INSERT INTO Works_on
    VALUES(333445555, 10, 10.0);

INSERT INTO Works_on
    VALUES(333445555, 20, 10.0);

INSERT INTO Works_on
    VALUES(999887777, 30, 30.0);

INSERT INTO Works_on
    VALUES(999887777, 10, 10.0);

INSERT INTO Works_on
    VALUES(987987987, 10, 35.0);

INSERT INTO Works_on
    VALUES(987987987, 30, 5.0);

INSERT INTO Works_on
    VALUES(987654321, 30, 20.0);

INSERT INTO Works_on
    VALUES(987654321, 20, 15.0);
    
/*Dependent Table*/
INSERT INTO Dependent
    VALUES(333445555, 'Alice', 'F', '1986-04-05', 'Daughter');

INSERT INTO Dependent
    VALUES(333445555, 'Theodore', 'M', '1983-10-25', 'Son');

INSERT INTO Dependent
    VALUES(333445555, 'Joy', 'F', '1958-05-03', 'Spouse');

INSERT INTO Dependent
    VALUES(987654321, 'Abner', 'M', '1942-02-28', 'Spouse');

INSERT INTO Dependent
    VALUES(123456789, 'Michael', 'M', '1988-01-04', 'Son');

INSERT INTO Dependent
    VALUES(123456789, 'Alice', 'F', '1988-12-30', 'Daughter');

INSERT INTO Dependent
    VALUES(123456789, 'Elizabeth', 'F', '1967-05-05', 'Spouse');
