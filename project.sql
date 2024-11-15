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
	snum char(7) primary key,
    numseats numeric(2),
    begintime dateTime,
    endtime dateTime,
    classroom numeric(3),
    coursenum char(7),
    profssn numeric(9)
);

CREATE TABLE RECORDS (
	snum char(7),
    cwid numeric(9),
    grade char(2),
    primary key(snum, cwid)
);

CREATE TABLE COURSE (
	cnum char(7) primary key,
    title varchar(20),
    units tinyint,
    textbook varchar(50),
    dnum numeric(4)
);

CREATE TABLE STUDENT (
	cwid numeric(9) primary key,
    fname varchar(20),
    lname varchar(20),
    phonenumber numeric(10),
    address varchar(20),
    majordeptnum numeric(4)
);

CREATE TABLE DEPARTMENT (
	dnum numeric(4) primary key,
    name varchar(20),
    phonenumber numeric(10),
    officelocation varchar(20),
    chairpersonssn numeric(9)
);

CREATE TABLE MINOR_IN (
	studentcwid numeric(4) primary key,
    minordeptnum numeric(4)
);

CREATE TABLE COLLEGE_DEGREES (
  	profssn numeric(9) primary key,
    degree varchar(20)
);

CREATE TABLE MEETING_DAYS (
	snum numeric(7) primary key,
    meetingdate time
);

CREATE TABLE PREQUISITE_COURSES (
	cnum numeric(7) primary key,
    prereqnum numeric(7)
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
    
-- Show tables --
SHOW TABLES;

SELECT *
FROM PROFESSOR;

-- Quick Remove certain tabs

DROP DATABASE sysdb;


    