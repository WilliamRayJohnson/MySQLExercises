/*Retrieves the name, department, and total number of hours of employees who have worked 35 hours or more*/
SELECT e.Fname, e.Minit, e.Lname, SUM(sw.Hours) Totalhours, d.Dname
    FROM Employee e
    JOIN Works_on sw ON sw.Essn=e.Ssn
    JOIN Department d ON d.Dnumber=e.Dno
    GROUP BY sw.Essn
    HAVING SUM(sw.Hours) >= 35;
