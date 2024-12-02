<!DOCTYPE html>
<html>
<head>
<title>
Course Grades
</title>
</head>
<body>
<?php

// username and password need to be replaced by your username and password
$hostname = "mariadb";
$username = "cs332g15";
$password = "13FB5sFT";
$dbname = "cs332g15";

$link = mysqli_connect($hostname, $username, $password, $dbname);

if(!$link) {
    die("<p>Connection failed: </p>" . mysql_error());
}
    echo "<p>Connection successful</p>\n\n";

    // Professor Queries
    include("../models/Professor.php");
    $professor = new Professor($link);

    $course_num = $_POST["course_num"];
    $section_num = $_POST["section_num"];

    $result = $professor->getGradeDistribution($section_num, $course_num);
    printf("<h3>Grade Counts in section: %s, course: %s</h3>\n", $section_num, $course_num);
    foreach($result as $row) {
        printf("<p>GRADE: %s, COUNT: %s</p>\n", $row["grade"], $row["grade_count"]);
    }

    $link->close();
?>
<a href="../../index.html">Return to submit form</a>
</body>
</html>
