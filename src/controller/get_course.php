<!DOCTYPE html>
<html>
<head>
<title>
Student Courses
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
    die("<p>Connection failed: </p>" . mysql_error());
}
    echo "<p>Connection successful</p>\n\n";

    // Student Queries
    include("../models/Student.php");
    
    $cwid = $_POST["cwid"];
    $student = new Student($link);

    $result = $student->getCoursesByStudent($cwid);
    printf("<h3>Student: %s courses taken...</h3>\n", $cwid);
    foreach($result as $row) {
        printf("<p>COURSE: %s, GRADE: %s</p>\n", $row["coursenum"], $row["grade"]);
    }

    $link->close();
?>
<a href="../../input.html">Return to submit form</a>
</body>
</html>
