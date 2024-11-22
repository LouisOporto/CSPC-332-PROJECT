CREATE DATABASE sysdb;
USE sysdb;

CREATE TABLE PROFESSOR (
	ssn int(9) primary key,
    name varchar(20),
    state char(2),
    city varchar(20),
    streetaddress varchar(20),
    zipcode int(5),
    sex enum('M','F'),
    salary numeric(7,2),
    title varchar(20),
    areacode int(3),
    phonenumber int(10)
);

CREATE TABLE SECTIONS (
	snum int(5) primary key,
    numseats int(2),
    begintime time,
    endtime time,
    classroom int(3),
    coursenum char(7),
    profssn int(9)
);

CREATE TABLE RECORDS (
	snum int(5),
    cwid int(9),
    grade char(2),
    primary key(snum, cwid)
);

CREATE TABLE COURSE (
	cnum char(7) primary key,
    title varchar(20),
    units tinyint,
    textbook varchar(50),
    dnum char(4)
);

CREATE TABLE STUDENT (
	cwid int(9) primary key,
    fname varchar(20),
    lname varchar(20),
    phonenumber int(10),
    address varchar(20),
    majordeptnum char(4)
);

CREATE TABLE DEPARTMENT (
	dnum char(4) primary key,
    name varchar(20),
    phonenumber int(10),
    officelocation varchar(20),
    chairpersonssn int(9)
);

CREATE TABLE MINOR_IN (
	studentcwid int(9) primary key,
    minordeptnum char(4)
);

CREATE TABLE COLLEGE_DEGREES (
  	profssn int(9) primary key,
    degree varchar(20)
);

CREATE TABLE MEETING_DAYS (
	snum int(5),
    meetingdate time
);

CREATE TABLE PREQUISITE_COURSES (
	cnum char(7) primary key,
    prereqnum char(7)
);

-- Insert values into tables here --

INSERT INTO PROFESSOR VALUES (
	123456789,
    'Wang',
    'CA',
    'Fullerton',
    'Robin',
    '90420',
    'M',
    70000,
    'Teacher',
    1,
    5621231234
    );

INSERT INTO SECTIONS VALUES (
	47389,
    20,
    '01:00:00',
    '02:15:00',
    351,
    'CPSC332',
    123456789
);

INSERT INTO COURSE VALUES (
	'CPSC332',
    'Database Structure',
    3,
    'database book',
    'CPSC'
);

INSERT INTO MEETING_DAYS VALUES (
	47389,
    '12:10:10'
);

INSERT INTO MEETING_DAYS VALUES (
	47389,
    '10:10:10'
);

INSERT INTO RECORDS VALUES (
	47389,
	12345689,
    'A+'
);

INSERT INTO RECORDS VALUES (
	47389,
	123456887,
    'A+'
);
   
INSERT INTO RECORDS VALUES (
	47389,
	123456787,
    'A'
);

-- Show tables --
SHOW TABLES;

SELECT *
FROM PROFESSOR;

-- QUERY --

-- Given the social security of a professor, list the titles, classrooms, meeting days and time of his/her classes.
SELECT SECTIONS.snum, SECTIONS.classroom, SECTIONS.begintime, SECTIONS.endtime, meetingdate
FROM SECTIONS
INNER JOIN MEETING_DAYS MD ON MD.snum = SECTIONS.snum;

-- Given a course number and a section number, count how many students  get each distinct, i.e. 'A', 'A-', 'B+', 'B', 'B', etc.->
SELECT grade, COUNT(*) AS grade_count
FROM RECORDS, COURSE, SECTIONS
WHERE RECORDS.snum = '47389' AND COURSE.cnum = 'CPSC332' AND SECTIONS.coursenum = COURSE.cnum
GROUP BY grade;

-- Quick Remove certain tabs
DROP DATABASE sysdb;
