CREATE DATABASE sysdb;

CREATE TABLE PROFESSOR (
	SSN numeric(9) primary key,
    NAME varchar(40),
    STATE varchar(20),
    CITY varchar(20),
    STRADDRESS varchar(20),
    ZIPCODE char(5),
    SEX enum('M','F'),
    SALARY numeric(5),
    TITLE varchar(20),
    AREACODE numeric(3),
    PHONENUMBER numeric(10)
);

CREATE TABLE SECTIONS (
	SNUM numeric(3) primary key,
    NUMSEATS numeric(2),
    BEGINTIME timestamp,
    ENDTIME timestamp,
    CLASSROOM numeric(3)
);

CREATE TABLE RECORDS (
	SNUM numeric(3),
    CWID numeric(8),
    Grade char(1)
);

CREATE TABLE COURSE (
	CNUM numeric(3) primay key,
    TITLE varchar(20),
    UNITS numeric(2),
    TEXTBOOK varchar(20)
);

CREATE TABLE STUDENT (
	CWID numeric(9) primay key,
    FNAME varchar(20),
    LNAME varchar(20),
    PHONENUMBER varchar(10),
    ADDRESS varchar(20),
    MAJDEPTNUM numeric(2)
);

CREATE TABLE DEPARTMENT (
	DNUM numeric(2) primary key,
    NAME varchar(20),
    TELEPHONE numeric(10),
    OFFICELOCATION varchar(20),
    PROFSSN numeric(9)
);

CREATE TABLE MINORDEPARTMENT (
	STUDENTCWID numeric(9) primary key,
    MINDEPTNUM numeric(2)
);

CREATE TABLE COLLEGEDEGREES (
	PROFSSN numeric(9) primary key,
    DEGREE varchar(20)
);

CREATE TABLE MEETINGDAYS (
	SNUM numeric(3) primary key,
    MEETINGDATE time
);





    