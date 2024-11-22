<!DOCTYPE html>
<html>
<head>
<title>
Response
</title>
</head>
<body>
<?php

// username and password need to be replaced by your username and password
$hostname = "localhost"; // Server on-campus is "an ip not sure"
$username = "root";
$password = "";
$dbname = "sysdb"; // Server on-campus is "mariadb"

$link = mysqli_connect($hostname, $username, $password, $dbname);

if(!$link) {
    die("Connection failed: " . mysql_error());
}
    echo "Connection successful<p>\n";

    // Professor Queries
    include("src/models/Professor.php");
    $professor = new Professor($link);
    // if($_POST["ssn"]) { $ssn = $_POST["ssn"]; }
    $ssn = "123456789";

    $result = $professor->getClassSchedule($ssn);
    foreach($result as $row) {
        printf("SNUM: %s, CLASSROOM: %s, BEGINTIME: %s, ENDTIME: %s, MEETINGDATE: %s\n", $row["snum"], $row["classroom"], $row["begintime"], $row["endtime"], $row["meetingdate"]);
    }

    printf("\n");
    $result = $professor->getGradeDistribution('47389', 'CPSC332');
    foreach($result as $row) {
        printf("GRADE: %s, COUNT: %s\n", $row["grade"], $row["grade_count"]);
    }

    printf("\n\n");

    // Student Queries
    include("src/models/Student.php");
    $cwid = 123456788;
    $courseNum = 123;

    $student = new Student($link);
    $result = $professor->getCoursesByStudent($cwid);
    foreach($resut as $row) {
        printf();
    }

    printf('\n');
    // $result = $professor->getSectionsByCourse($courseNum);
    // foreach($result as $row) {
    //     printf();
    // }

    $link->close();
    ?>
  </body>
</html>
