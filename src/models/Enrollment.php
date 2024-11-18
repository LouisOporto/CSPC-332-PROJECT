<?php
class Enrollment {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    // Retrieves grade distribution for a given course section.
    public function getGradeDistribution($courseNum, $sectionNum) {
        $stmt = $this->db->prepare("
            SELECT GRADE, COUNT(*) AS grade_count
            FROM RECORDS
            WHERE COURSE_NUM = ? AND SNUM = ?
            GROUP BY GRADE
        ");
        $stmt->bind_param("ss", $courseNum, $sectionNum);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->fetch_all(MYSQLI_ASSOC);
    }

    // Add enrollment record.
    public function addEnrollment($cwid, $snum, $grade) {
        $stmt = $this->db->prepare("
            INSERT INTO RECORDS (CWID, SNUM, GRADE)
            VALUES (?, ?, ?)
        ");
        $stmt->bind_param("sss", $cwid, $snum, $grade);
        return $stmt->execute();
    }
}
?>
