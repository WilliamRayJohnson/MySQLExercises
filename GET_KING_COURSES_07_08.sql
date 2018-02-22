/*Retrieves the name of all courses taught by Professor King in 2007 and 2008*/

SELECT c.Course_name
    FROM Course c
    INNER JOIN Section s ON c.Course_number=s.Course_number
    WHERE s.Instructor='King' AND (s.Year=08 OR s.Year=07);
