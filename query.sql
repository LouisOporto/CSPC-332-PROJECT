-- Show tables --
SHOW TABLES;

SELECT *
FROM PROFESSOR;

-- QUERY --

-- PROFESSOR -- 
-- Given the social security of a professor, list the titles, classrooms, meeting days and time of his/her classes.
SELECT SECTIONS.snum, SECTIONS.classroom, SECTIONS.begintime, SECTIONS.endtime, meetingdate
FROM SECTIONS
JOIN MEETING_DAYS MD ON MD.snum = SECTIONS.snum
JOIN COURSE ON COURSE.cnum = SECTIONS.coursenum
WHERE SECTIONS.profssn = 123456789;

-- Given a course number and a section number, count how many students  get each distinct, i.e. 'A', 'A-', 'B+', 'B', 'B', etc.->
SELECT grade, COUNT(*) AS grade_count
FROM RECORDS, COURSE, SECTIONS
WHERE RECORDS.snum = '47389' AND COURSE.cnum = 'CPSC332' AND SECTIONS.coursenum = COURSE.cnum
GROUP BY grade;

-- STUDENT
-- Given the CWID of a student, list courses they took and grades
SELECT SECTIONS.coursenum, RECORDS.grade
FROM RECORDS
JOIN SECTIONS ON RECORDS.snum = SECTIONS.snum
WHERE RECORDS.cwid = 123456788