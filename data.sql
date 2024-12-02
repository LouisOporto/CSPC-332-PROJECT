-- Insert values into tables here --

-- 3 Professors --
INSERT INTO PROFESSOR VALUES (
	123456789,
    'Wang',
    'CA',
    'Fullerton',
    'Robin Way.',
    90420,
    'M',
    70000.00,
    'Teacher',
    1,
    5621231234
    );
    
INSERT INTO PROFESSOR VALUES (
	123456788,
    'Williams',
    'CA',
    'Los Angeles',
    'Sparrow Ave.',
    90731,
    'M',
    2000.00,
    'Teacher',
    1,
    5621233456
    );

INSERT INTO PROFESSOR VALUES (
    604654701,
    'Charles',
    'CA',
    'Palm Springs',
    'Flamingo St.',
    90502,
    'M',
    5000.00,
    'Teacher',
    1,
    7343342323
);

-- 6 sections -- 
INSERT INTO SECTIONS VALUES (
	47389,
    20,
    '01:00:00',
    '02:15:00',
    332,
    'CPSC332',
    123456789
);

INSERT INTO SECTIONS VALUES (
	47388,
    20,
    '01:00:00',
    '02:15:00',
    484,
    'CPSC484',
    123456788
);

INSERT INTO SECTIONS VALUES (
    47387,
    30,
    '21:00:00',
    '22:15:00',
    483,
    'CPSC484',
    123456788
);

INSERT INTO SECTIONS VALUES (
	45665,
    20,
    '03:15:00',
    '04:30:00',
    332,
    'CPSC332',
    123456789
);

INSERT INTO SECTIONS VALUES (
    32334,
    30,
    '02:10:00',
    '03:00:00',
    101,
    'PSYC101',
    604654701
);

INSERT INTO SECTIONS VALUES (
    32443,
    30,
    '09:30:00',
    '10:45:00',
    201,
    'PSYC201',
    604654701
);

-- 2 department --
INSERT INTO DEPARTMENT VALUES (
    'CPSC',
    'Computer Science',
    9993234567,
    'Castle Abestos',
    123456789
);

INSERT INTO DEPARTMENT VALUES (
    'PSYC',
    'Psychology',
    7775843434,
    'Pshyc Ward',
    604654701
);

-- 4 courses --
INSERT INTO COURSE VALUES (
	'CPSC332',
    'Database Structure',
    3,
    'database book',
    'CPSC'
);

INSERT INTO COURSE VALUES (
	'CPSC484',
    'Graphics Principles',
    3,
    '3d rendering book',
    'CPSC'
);

INSERT INTO COURSE VALUES (
    'PSYC101',
    'Intro Psychology',
    3,
    'Book of psychology',
    'PYSC'
);

INSERT INTO COURSE VALUES (
    'PSYC201',
    'Intro to Statistics in Psychology',
    3,
    'Statistics in Psychology',
    'PSYC'
);

-- 8 students --
INSERT INTO STUDENT VALUES (
	123456788,
    'John',
    'Smith',
    5623214545,
    'fullerton',
    'CSPC'
);

INSERT INTO STUDENT VALUES (
	123456889,
    'John',
    'Second',
    5623215656,
    'fullerton',
    'CSPC'
);

INSERT INTO STUDENT VALUES (
	123456888,
    'Mary',
    'Jane',
    5623343322,
    'buena park',
    'CSPC'
);

INSERT INTO STUDENT VALUES (
    123456887,
    'Paul',
    'Walker',
    3432327878,
    'fullerton',
    'PSYC'
);

INSERT INTO STUDENT VALUES (
    123456886,
    'David',
    'Kim',
    1232222323,
    'la mirada',
    'PSYC'
);

INSERT INTO STUDENT VALUES (
    333444232,
    'Nathan',
    'Nguyen',
    4564563434,
    'diamond bar',
    'CPSC'
);

INSERT INTO STUDENT VALUES (
    333444233,
    'Curys',
    'Lang',
    9879877777,
    'fullerton',
    'CPSC'
);

INSERT INTO STUDENT VALUES (
    333444234,
    'sofia',
    'lee',
    4567892323,
    'buena park',
    'PSYC'
);

INSERT INTO MINOR_IN VALUES (
    123456889,
    'PSYC'
);

INSERT INTO MINOR_IN VALUES (
    123456886,
    'CPSC'
);

-- Meeting days --
INSERT INTO MEETING_DAYS VALUES (
	47389,
    '2024-10-10'
);

INSERT INTO MEETING_DAYS VALUES (
	47389,
    '2024-10-11'
);

INSERT INTO MEETING_DAYS VALUES (
	47388,
    '2024-10-10'
);

INSERT INTO MEETING_DAYS VALUES (
	45665,
    '2024-12-1'
);

INSERT INTO MEETING_DAYS VALUES (
	45665,
    '2024-12-11'
);

INSERT INTO MEETING_DAYS VALUES (
    47387,
    '2024-12-12'
);

INSERT INTO MEETING_DAYS VALUES (
    47387,
    '2024-06-12'
);

INSERT INTO MEETING_DAYS VALUES (
    32334,
    '2024-12-25'
);

INSERT INTO MEETING_DAYS VALUES (
    32334,
    '2024-12-20'
);

INSERT INTO MEETING_DAYS VALUES (
    32334,
    '2024-09-12'
);

INSERT INTO MEETING_DAYS VALUES (
    32443,
    '2024-05-23'
);

INSERT INTO MEETING_DAYS VALUES (
    32443,
    '2024-05-24'
);

INSERT INTO MEETING_DAYS VALUES (
    32443,
    '2024-05-23'
);

-- 20 enrollment records --
INSERT INTO RECORDS VALUES (
	45665,
    123456888,
    'C'
);

INSERT INTO RECORDS VALUES (
	47389,
	123456889,
    'A+'
);

INSERT INTO RECORDS VALUES (
	47389,
	123456788,
    'A+'
);

INSERT INTO RECORDS VALUES (
	47388,
    123456788,
    'B'
);

INSERT INTO RECORDS VALUES (
	47389,
	333444232,
    'A'
);

-- 15 more
INSERT INTO RECORDS VALUES (
	45665,
	333444233,
    'C'
);

INSERT INTO RECORDS VALUES (
	45665,
	333444232,
    'B+'
);

INSERT INTO RECORDS VALUES (
	47389,
	123456888,
    'D'
);

INSERT INTO RECORDS VALUES (
	47388,
	333444233,
    'F'
);

INSERT INTO RECORDS VALUES (
	47388,
	123456799,
    'A'
);

INSERT INTO RECORDS VALUES (
	32443,
	123456886,
    'A+'
);

INSERT INTO RECORDS VALUES (
	32443,
	123456887,
    'C-'
);

INSERT INTO RECORDS VALUES (
	32334,
	123456887,
    'A-'
);

INSERT INTO RECORDS VALUES (
	32334,
	123456886,
    'B'
);

INSERT INTO RECORDS VALUES (
	32443,
	333444234,
    'D+'
);

INSERT INTO RECORDS VALUES (
	32334,
	333444234,
    'C'
);

INSERT INTO RECORDS VALUES (
	32443,
	123456889,
    'B'
);

INSERT INTO RECORDS VALUES (
	45565,
	123456886,
    'A+'
);

INSERT INTO RECORDS VALUES (
	47389,
	123456886,
    'A'
);

INSERT INTO RECORDS VALUES (
	32334,
	123456889,
    'B-'
);

-- College Degrees --
INSERT INTO COLLEGE_DEGREES VALUES (
    123456789,
    'computer science'
);

INSERT INTO COLLEGE_DEGREES VALUES (
    123456788,
    'computer science'
);

INSERT INTO COLLEGE_DEGREES VALUES (
    604654701,
    'psychology'
);

-- Prerequisite Courses --
INSERT INTO PREQUISITE_COURSES VALUES (
    'PSYC201',
    'PSYC101'
);

INSERT INTO PREQUISITE_COURSES VALUES (
    'CPSC332',
    'CPSC335'
);
