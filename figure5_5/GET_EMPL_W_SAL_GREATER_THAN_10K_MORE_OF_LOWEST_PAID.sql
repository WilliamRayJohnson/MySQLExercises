/*Retrieves the names of employees who make at least $10000 mroe than the employee who is paid the least in the company*/
SELECT e.Fname, e.Minit, e.Lname
    FROM Employee e
    WHERE e.Salary >= (SELECT MIN(ea.Salary) + 10000
                        FROM Employee ea);