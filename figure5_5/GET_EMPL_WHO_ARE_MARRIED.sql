/*Retrieves names of employees who are married for taxation purposes*/
SELECT e.Fname, e.Minit, e.Lname
    FROM Employee e
    JOIN Dependent d ON e.Ssn=d.Essn AND d.Relationship='Spouse';