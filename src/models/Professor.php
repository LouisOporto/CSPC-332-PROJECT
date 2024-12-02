<?php
class Professor {
    private $db;

    public function __construct($db) {
      $this->db = $db;
    }

    // Given the SSN of a professor, retrieves titles, classrooms, meeting times, and times of his/her classes.
    public function getClassSchedule($ssn) {
      // Prepare SQL query.
      $stmt = $this->db->prepare("
        SELECT S.snum, S.classroom, S.begintime, S.endtime, MD.meetingdate
        FROM SECTIONS AS S, MEETING_DAYS AS MD, COURSE AS C
        WHERE S.profssn = ? AND MD.snum = S.snum
        GROUP BY S.snum, MD.meetingdate
      ");
      // Prepare and bind parameters.
      $stmt->bind_param("s", $ssn);
      // Set parameters and execute.
      $stmt->execute();
      // Get result set.
      $result = $stmt->get_result();
      // Get all results and associate them.
      return $result->fetch_all(MYSQLI_ASSOC);
    }

    // Function for grade distribution given a course section
    public function getGradeDistribution($sectionNum, $courseNum) {
      // Prepare the SQL query
      $stmt = $this->db->prepare("
        SELECT R.grade, COUNT(*) AS grade_count
        FROM RECORDS AS R, COURSE AS C, SECTIONS AS S
        WHERE R.snum = ? AND C.cnum = ? AND S.coursenum = C.cnum AND S.snum = R.snum
        GROUP BY R.grade
      ");
      // Prepare and bind parameters.
      $stmt->bind_param("ss", $sectionNum, $courseNum);
      // Execution.
      $stmt->execute();
      // Get the result set.
      $result = $stmt->get_result();
      // Fetch and association.
      return $result->fetch_all(MYSQLI_ASSOC);
    }
}
?>
