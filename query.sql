-- Show tables --
SHOW TABLES;

SELECT *
FROM PROFESSOR;

-- QUERY --

-- PROFESSOR -- 
-- Given the social security of a professor, list the titles, classrooms, meeting days and time of his/her classes.
SELECT S.snum, S.classroom, S.begintime, S.endtime, MD.meetingdate
FROM SECTIONS AS S, MEETING_DAYS AS MD, COURSE AS C
WHERE S.profssn = 604654701 AND MD.snum = S.snum
GROUP BY S.snum, MD.meetingdate; 

-- Given a course number and a section number, count how many students  get each distinct, i.e. 'A', 'A-', 'B+', 'B', 'B', etc.->
SELECT R.grade, COUNT(*) AS grade_count
FROM RECORDS AS R, SECTIONS AS S
WHERE R.snum = '32443' AND S.coursenum = 'PSYC201' AND R.snum = S.snum
GROUP BY R.grade;

-- STUDENT
-- Given the CWID of a student, list courses they took and grades
SELECT S.coursenum, R.grade
FROM RECORDS AS R, SECTIONS AS S
WHERE R.cwid = 123456788 AND S.snum = R.snum;

-- Given a course number list the sections of the course, including classrooms, meeting day, time, number of students
SELECT S.snum, S.classroom, MD.meetingdate, S.begintime, S.endtime, COUNT(*) AS enrolledcount
FROM RECORDS AS R, SECTIONS AS S, MEETING_DAYS AS MD
WHERE S.coursenum = 'PSYC201' AND S.snum = R.snum AND MD.snum = S.snum
GROUP BY S.snum, MD.meetingdate;
