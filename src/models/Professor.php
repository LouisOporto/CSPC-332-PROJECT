<?php
class Professor {
    private $db;

    public function __construct($db) {
      $this->db = $db;
    }

    // Retrieve a professor's class schedule via SSN.
    public function getClassSchedule($ssn) {
      $stmt = $this->db->prepare("
        SELECT SECTIONS.SNUM, SECTIONS.CLASSROOM, SECTIONS.BEGINTIME, SECTIONS.ENDTIME, SECTIONS.MEETING_DAYS, COURSE.TITLE
        FROM SECTIONS
        JOIN COURSE ON SECTIONS.COURSENUM = COURSE.CNUM
        WHERE SECTIONS.PROFSSN = ?
        ")
    }
}
