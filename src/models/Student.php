<?php
class Student {
    private $db;

    public function __construct($db) {
      $this->db = $db;
    }

    // Retrieve a given student's previous courses and grades.
    public function getCoursesByStudent($cwid) {
        $stmt = $this->db->prepare("
            SELECT COURSE.TITLE, RECORDS.GRADE, SECTIONS.SNUM, SECTIONS.BEGINTIME, SECTIONS.ENDTIME
            FROM RECORDS
            JOIN SECTIONS ON RECORDS.SNUM = SECTIONS.SNUM
            JOIN COURSE ON SECTIONS.COURSENUM = COURSE.CNUM
            WHERE RECORDS.CWID = ?
        ");
        $stmt->bind_param("s", $cwid);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->fetch_all(MYSQLI_ASSOC);
    }

    // Method to get sections of a course with enrollment count
    public function getSectionsByCourse($courseNum) {
        $stmt = $this->db->prepare("
            SELECT SECTIONS.SNUM, SECTIONS.CLASSROOM, SECTIONS.BEGINTIME, SECTIONS.ENDTIME, COUNT(RECORDS.CWID) AS enrolled_count
            FROM SECTIONS
            LEFT JOIN RECORDS ON SECTIONS.SNUM = RECORDS.SNUM
            WHERE SECTIONS.COURSENUM = ?
            GROUP BY SECTIONS.SNUM
        ");
        $stmt->bind_param("s", $courseNum);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->fetch_all(MYSQLI_ASSOC);
    }
}
?>
