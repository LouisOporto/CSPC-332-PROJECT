CREATE DATABASE sysdb;

CREATE TABLE PROFESSOR (
	SSN numeric(9) primary key,
    NAME varchar(20),
    STATE char(2),
    CITY varchar(20),
    STREETADDRESS varchar(20),
    ZIPCODE char(5),
    SEX enum('M','F'),
    SALARY numeric(5),
    TITLE varchar(20),
    AREACODE numeric(3),
    PHONENUMBER numeric(10)
);

CREATE TABLE SECTIONS (
	SNUM char(7) primary key,
    NUMSEATS numeric(2),
    BEGINTIME timestamp,
    ENDTIME timestamp,
    CLASSROOM numeric(3),
    COURSENUM char(7),
    PROFSSN numeric(9)
);

CREATE TABLE RECORDS (
	SNUM char(7),
    CWID numeric(9),
    GRADE enum('A', 'B', 'C', 'D', 'F', 'W'),
    primary key(SNUM, CWID)
);

CREATE TABLE COURSE (
	CNUM char(7) primary key,
    TITLE varchar(20),
    UNITS tinyint,
    TEXTBOOK varchar(50),
    DNUM numeric(4)
);

CREATE TABLE STUDENT (
	CWID numeric(9) primary key,
    FNAME varchar(20),
    LNAME varchar(20),
    PHONENUMBER numeric(10),
    ADDRESS varchar(20),
    MAJORDEPTNUM numeric(4)
);

CREATE TABLE DEPARTMENT (
	DNUM numeric(4) primary key,
    NAME varchar(20),
    TELEPHONE numeric(10),
    OFFICELOCATION varchar(20),
    CHAIRPERSONSSN numeric(9)
);

CREATE TABLE MINOR_IN (
	STUDENTCWID numeric(4) primary key,
    MINORDEPTNUM numeric(4)
);

CREATE TABLE COLLEGE_DEGREES (
	PROFSSN numeric(9) primary key,
    DEGREE varchar(20)
);

CREATE TABLE MEETING_DAYS (
	SNUM numeric(7) primary key,
    MEETINGDATE time
);

CREATE TABLE PREQUISITE_COURSES (
	CNUM numeric(7) primary key,
    PREREQNUM numeric(7)
);

SHOW TABLES;





    