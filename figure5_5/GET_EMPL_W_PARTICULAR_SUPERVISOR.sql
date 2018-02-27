/*Retrieves the names of all employees whose supervisor's supervisor has '888665555' for Ssn*/
SELECT e.Fname, e.Minit, e.Lname
    FROM Employee e
    WHERE e.Super_ssn 
    IN (SELECT ea.Ssn
            FROM Employee ea
            WHERE ea.Super_ssn=888665555);