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
        SELECT SECTIONS.SNUM, SECTIONS.CLASSROOM, SECTIONS.BEGINTIME, SECTIONS.ENDTIME, SECTIONS.MEETING_DAYS, COURSE.TITLE
        FROM SECTIONS
        JOIN COURSE ON SECTIONS.COURSENUM = COURSE.CNUM
        WHERE SECTIONS.PROFSSN = ?
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
    public function getGradeDistribution($courseNum, $sectionNum) {
      // Prepare the SQL query
      $stmt = $this->db->prepare("
        SELECT GRADE, COUNT(*) AS grade_count
        FROM RECORDS
        WHERE SNUM = ? AND COURSE_NUM = ?
        GROUP BY GRADE
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
