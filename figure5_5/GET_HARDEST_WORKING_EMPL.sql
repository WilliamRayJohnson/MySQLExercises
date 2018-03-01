/*Retrieves the name of employee, project name, and number of hours worked on of the employee who has worked on any project for the greatest number of hours?*/
SELECT e.Fname, e.Minit, e.Lname, p.Pname, w.Hours
    FROM Employee e
    JOIN Works_on w ON e.Ssn=w.Essn
    JOIN Project p ON w.Pno=p.Pnumber
    ORDER BY w.Hours DESC
    LIMIT 1;