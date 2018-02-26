/*Inserts data into employee_records*/

/*Employee Table*/
INSERT INTO Employee
    VALUES('James', 'E', 'Borg', 888665555, '1937-11-10', '450 Stone, Houston, TX', 'M', 55000, NULL, 1);
    
INSERT INTO Employee
    VALUES('Franklin', 'T', 'Wong', 333445555, '1955-12-08', '638 Voss, Houston, TX', 'M', 40000, 888665555, 5);
    
INSERT INTO Employee
    VALUES('Jennifer', 'S', 'Wallace', 987654321, '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000, 888665555, 4);



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

/*Project Table*/
INSERT INTO Project
    VALUES('Reorganization', 20, 'Houston', 1);
    
/*Works_on Table*/
INSERT INTO Works_on
    VALUES(888665555, 20, NULL);
    
/*Dependent Table*/
INSERT INTO Dependent
    VALUES(333445555, 'Alice', 'F', '1986-04-05', 'Daughter');