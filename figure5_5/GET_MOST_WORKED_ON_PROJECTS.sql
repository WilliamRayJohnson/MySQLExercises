/*Retrieves the project name and hours each employee has worked on the most*/
SELECT e.Fname, e.Minit, e.Lname, p.Pname, MAX(w.Hours)
    FROM Employee e
    JOIN Works_on w ON e.Ssn=w.Essn
    JOIN Project p ON w.Pno=p.Pnumber
    GROUP BY e.Ssn;