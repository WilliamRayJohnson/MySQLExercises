/*Retrieves the name and transcript of each senior student majoring in CS*/

SELECT stu.Name, c.Course_name, c.Course_number, c.Credit_hours, sec.Semester, sec.Year, g.Grade
    FROM Student stu
    JOIN Grade_report g ON stu.Student_number=g.Student_number
    JOIN Section sec ON sec.Section_identifier=g.Section_identifier
    JOIN Course c ON c.Course_number=sec.Course_number
    WHERE stu.Class=4
    ORDER BY stu.Name;
    