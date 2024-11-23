-- Insert values into tables here --

INSERT INTO PROFESSOR VALUES (
	123456789,
    'Wang',
    'CA',
    'Fullerton',
    'Robin',
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
    'Sparrow',
     90731,
     'M',
    2000.00,
    'Teacher',
    1,
    5621233456
    );

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
	45665,
    20,
    '03:15:00',
    '04:30:00',
    332,
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

INSERT INTO COURSE VALUES (
	'CPSC484',
    'Graphics Principles',
    3,
    '3d rendering book',
    'CPSC'
);



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

INSERT INTO MEETING_DAYS VALUES (
	47389,
    '2024-10-10'
);

INSERT INTO MEETING_DAYS VALUES (
	47388,
    '2024-10-10'
);

INSERT INTO MEETING_DAYS VALUES (
	47389,
    '2024-10-11'
);

INSERT INTO MEETING_DAYS VALUES (
	45665,
    '2024-12-1'
);

INSERT INTO MEETING_DAYS VALUES (
	45665,
    '2024-12-11'
);

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
	123456787,
    'A'
);