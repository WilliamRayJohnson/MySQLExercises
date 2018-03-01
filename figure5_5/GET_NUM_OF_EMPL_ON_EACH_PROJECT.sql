/*Retrieves number of employees working on each project*/
SELECT p.Pname, COUNT(w.Essn) EmployeesWorkingOn
    FROM Project p
    JOIN Works_on w ON p.Pnumber=w.Pno
    GROUP BY w.Pno;
    