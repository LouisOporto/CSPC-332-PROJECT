-- Crate database
CREATE DATABASE sysdb;
USE sysdb;

-- Create tables
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
    phonenumber numeric(10)
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
    phonenumber numeric(10),
    address varchar(20),
    majordeptnum char(4)
);

CREATE TABLE DEPARTMENT (
	dnum char(4) primary key,
    name varchar(20),
    phonenumber numeric(10),
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

-- Quick Remove certain tabs
DROP DATABASE sysdb;
