/*Creates the tables for Figure 1.2*/

CREATE DATABASE student_course_records;

USE student_course_records;

CREATE TABLE Student (
    Name VARCHAR(20) NOT NULL,
    Student_number INT NOT NULL PRIMARY KEY,
    Class INT NOT NULL,
    Major VARCHAR(10) NOT NULL);

CREATE TABLE Course (
    Course_name VARCHAR(40) NOT NULL,
    Course_number VARCHAR(10) NOT NULL PRIMARY KEY,
    Credit_hours INT NOT NULL,
    Department VARCHAR(10) NOT NULL);

CREATE TABLE Section (
    Section_identifier INT NOT NULL PRIMARY KEY,
    Course_number VARCHAR(10) NOT NULL,
    FOREIGN KEY (Course_number)
        REFERENCES Course(Course_number)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    Semester VARCHAR(7) NOT NULL,
    Year YEAR NOT NULL,
    Instructor VARCHAR(20) NOT NULL);

CREATE TABLE Grade_report (
    Student_number INT NOT NULL,
    FOREIGN KEY (Student_number)
        REFERENCES Student(Student_number)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    Section_identifier INT NOT NULL,
    FOREIGN KEY (Section_identifier)
        REFERENCES Section(Section_identifier)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    Grade VARCHAR(2) NOT NULL,
    PRIMARY KEY (Student_number, Section_identifier));

CREATE TABLE Prerequisite (
    Course_number VARCHAR(10) NOT NULL,
    FOREIGN KEY (Course_number)
        REFERENCES Course(Course_number)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    Prerequisite_number VARCHAR(10) NOT NULL,
    FOREIGN KEY (Prerequisite_number)
        REFERENCES Course(Course_number)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    PRIMARY KEY (Course_number, Prerequisite_number));
