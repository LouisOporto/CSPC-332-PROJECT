CREATE DATABASE sysdb;

CREATE TABLE PROFESSOR (
	ssn numeric(9) primary key,
    name varchar(20),
    state char(2),
    city varchar(20),
    streetaddress varchar(20),
    zipcode char(5),
    sex enum('M','F'),
    salary numeric(5),
    title varchar(20),
    areacode numeric(3),
    phonenumber numeric(10)
);

CREATE TABLE SECTIONS (
	snum numeric(5) primary key,
    numseats numeric(2),
    begintime time,
    endtime time,
    classroom numeric(3),
    coursenum char(7),
    profssn numeric(9)
);

CREATE TABLE RECORDS (
	snum numeric(5),
    cwid numeric(9),
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
	cwid numeric(9) primary key,
    fname varchar(20),
    lname varchar(20),
    phonenumber numeric(10),
    address varchar(20),
    majordeptnum char(4)
);

CREATE TABLE DEPARTMENT (
	dnum char(4) primary key,
    name varchar(20),
    phonenumber numeric(10),
    officelocation varchar(20),
    chairpersonssn numeric(9)
);

CREATE TABLE MINOR_IN (
	studentcwid numeric(9) primary key,
    minordeptnum char(4)
);

CREATE TABLE COLLEGE_DEGREES (
  	profssn numeric(9) primary key,
    degree varchar(20)
);

CREATE TABLE MEETING_DAYS (
	snum numeric(5),
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
-- Show tables --
SHOW TABLES;

SELECT *
FROM PROFESSOR;

SELECT SECTIONS.snum, SECTIONS.classroom, SECTIONS.begintime, SECTIONS.endtime, meetingdate
FROM SECTIONS
INNER JOIN MEETING_DAYS MD ON MD.snum = SECTIONS.snum
-- WHERE COURSE.cnum = SECTIONS.coursenum AND SECTIONS.profssn = 123456789;

JOIN MEETING_DAYS ON SECTIONS.snum = MEETING_DAYS.snum
WHERE SECTIONS.coursenum = COURSE.cnum AND MEETING_DAYS.snum = SECTIONS.snum AND SECTIONS.profssn = 123456789;
GROUP BY SECTIONS.snum;

-- Quick Remove certain tabs

DROP DATABASE sysdb;


    