/*Inserts data into student_course_records*/

/*Student Table*/
INSERT INTO Student
    VALUES ('Smith', 17, 1, 'CS');

INSERT INTO Student
    VALUES ('Brown', 8, 2, 'CS');

INSERT INTO Student
    VALUES ('William', 3, 4, 'CS');

INSERT INTO Student
    VALUES ('Brian', 10, 4, 'CS');

/*Course Table*/
INSERT INTO Course
    VALUES ('Intro to Computer Science', 'CS1310', 4, 'CS');

INSERT INTO Course
    VALUES ('Data Structures', 'CS3320', 4, 'CS');

INSERT INTO Course
    VALUES ('Discrete Mathematics', 'MATH2410', 3, 'MATH');

INSERT INTO Course
    VALUES ('Database', 'CS3380', 3, 'CS');

/*Section Table*/
INSERT INTO Section 
    VALUES (85, 'MATH2410', 'Fall', 07, 'King');

INSERT INTO Section 
    VALUES (92, 'CS1310', 'Fall', 07, 'Anderson');

INSERT INTO Section 
    VALUES (102, 'CS3320', 'Spring', 08, 'Knuth');

INSERT INTO Section 
    VALUES (112, 'MATH2410', 'Fall', 08, 'Chang');

INSERT INTO Section 
    VALUES (119, 'CS1310', 'Fall', 08, 'Anderson');

INSERT INTO Section 
    VALUES (135, 'CS3380', 'Fall', 08, 'Stone');

INSERT INTO Section 
    VALUES (200, 'MATH2410', 'Spring', 08, 'King');

/*Grade_report Table*/
INSERT INTO Grade_report 
    VALUES (17, 112, 'B');

INSERT INTO Grade_report 
    VALUES (17, 119, 'C');

INSERT INTO Grade_report 
    VALUES (8, 85, 'A');

INSERT INTO Grade_report 
    VALUES (8, 92, 'A');

INSERT INTO Grade_report 
    VALUES (8, 102, 'B');

INSERT INTO Grade_report 
    VALUES (8, 135, 'A');

/*Prerequisite Table*/
INSERT INTO Prerequisite 
    VALUES ('CS3380', 'CS3320');

INSERT INTO Prerequisite 
    VALUES ('CS3380', 'MATH2410');

INSERT INTO Prerequisite 
    VALUES ('CS3320', 'CS1310');
