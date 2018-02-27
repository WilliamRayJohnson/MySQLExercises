/*Retrieves the names of all employees who work in the department that has the employee with the highest salary among all employees*/
SELECT e.Fname, e.Minit, e.Lname
    FROM Employee e
    JOIN (SELECT ea.Dno
            FROM Employee ea
            WHERE ea.Salary 
            IN (SELECT MAX(eb.Salary) 
                    FROM Employee eb)) hDep 
    ON e.Dno=hDep.Dno;