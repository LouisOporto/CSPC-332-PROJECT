<?php
class Student {
    private $db;

    public function __construct($db) {
      $this->db = $db;
    }

    // Retrieve a given student's previous courses and grades.
    public function getCoursesByStudent($cwid) {
        $stmt = $this->db->prepare("
            SELECT S.coursenum, R.grade
            FROM RECORDS AS R, SECTIONS AS S
            WHERE R.cwid = ? AND R.snum = S.snum
        ");
        $stmt->bind_param("s", $cwid);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->fetch_all(MYSQLI_ASSOC);
    }

    // Method to get sections of a course with enrollment count
    public function getSectionsByCourse($courseNum) {
        $stmt = $this->db->prepare("
            SELECT S.snum, S.classroom, MD.meetingdate, S.begintime, S.endtime, COUNT(*) AS enrolledcount
            FROM RECORDS AS R, SECTIONS AS S, MEETING_DAYS AS MD
            WHERE S.coursenum = ? AND S.snum = R.snum AND MD.snum = S.snum
            GROUP BY S.snum, MD.meetingdate;
        ");
        $stmt->bind_param("s", $courseNum);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->fetch_all(MYSQLI_ASSOC);
    }
}
?>
