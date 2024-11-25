<!DOCTYPE html>
<html>
<head>
<title>
Professor Sections
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

    // Professor Queries
    include("../models/Professor.php");

    $professor = new Professor($link);
    $ssn = $_POST["ssn"];

    $result = $professor->getClassSchedule($ssn);
    printf("<h3>Professor: %s classes...</h3>\n", $ssn);
    foreach($result as $row) {
        printf("<p>SNUM: %s, CLASSROOM: %s, BEGINTIME: %s, ENDTIME: %s, MEETINGDATE: %s</p>\n", $row["snum"], $row["classroom"], $row["begintime"], $row["endtime"], $row["meetingdate"]);
    }

    $link->close();
?>
<a href="../../index.html">Return to submit form</a>
</body>
</html>
