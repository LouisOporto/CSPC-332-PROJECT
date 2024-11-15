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
}
