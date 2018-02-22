/*Retrieves the course number, semester, year, and number of students for each section taught by Prof. King*/

SELECT s.Course_number, s.Semester, s.Year, COUNT(g.Student_number) No_of_Students
    FROM Section s
    JOIN Grade_report g ON s.Section_identifier=g.Section_identifier
    WHERE s.Instructor='King'
    GROUP BY s.Section_identifier;