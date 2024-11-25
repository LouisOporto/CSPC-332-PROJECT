<!DOCTYPE html>
<html>
<head>
<title>
Course Sections
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
    
    include("../models/Student.php");

    $courseNum = $_POST["course_num"];
    $student = new Student($link);

    $result = $student->getSectionsByCourse($courseNum);
    printf("<h3>Course: %s here are its sections and information</h3>\n", $courseNum);
    foreach($result as $row) {
        printf("<p>SECTION: %d, CLASSROOM: %d, MEETIN DAY: %s, BEGIN TIME: %s, END TIME: %s, ENROLLEDSTUDENTS: %d</p>\n", 
            $row["snum"],
            $row["classroom"],
            $row["meetingdate"],
            $row["begintime"],
            $row["endtime"],
            $row["enrolledcount"]);
    }

    $link->close();
?>
<a href="../../index.html">Return to submit form</a>
</body>
</html>