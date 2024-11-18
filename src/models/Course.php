<?php
class Course {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    // Get course information via course number.
    public function getCourseInfo($courseNum) {
        $stmt = $this->db->prepare("
            SELECT COURSE.TITLE, COURSE.UNITS, COURSE.TEXTBOOK, DEPARTMENT.NAME AS department_name
            FROM COURSE
            JOIN DEPARTMENT ON COURSE.DNUM = DEPARTMENT.DNUM
            WHERE COURSE.CNUM = ?
        ");
        $stmt->bind_param("s", $courseNum);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->fetch_assoc();
    }
}
?>
