<html>
  <body>
    <?php

    // if($_POST["ssn"]) {
    //     $ssn = $_POST["ssn"];
    // }
    $ssn = "123456789";
    // username and password need to be replaced by your username and password
    $hostname = "localhost"; // Server on-campus is "an ip not sure"
    $username = "root";
    $password = "";
    $dbname = "sysdb"; // Server on-campus is "mariadb"

    // Create connection
    $link = mysqli_connect($hostname, $username, $password, $dbname);

    if(!$link) {
      die("Connection failed: " . mysql_error());
    }
    echo "Connection successful<p>\n";


    // Test query
    // $query = "SELECT * FROM PROFESSOR WHERE ssn=" .$ssn;
    // $result = $link->query($query);
    // $row = $result->fetch_assoc();
    // printf("SSN: %s<br>\n", $row["ssn"]);
    // printf("NAME: %s<br>\n", $row["name"]);
    // $result->free_result();
    
    include("src/models/Professor.php");
    
    $professor = new Professor($link);
    
    $result = $professor->getClassSchedule($ssn);
    foreach($result as $row) {
        printf("SNUM: %s, CLASSROOM: %s, BEGINTIME: %s, ENDTIME: %s, MEETINGDATE: %s\n", $row["snum"], $row["classroom"], $row["begintime"], $row["endtime"], $row["meetingdate"]);
    }

    printf("\n");
    $result = $professor->getGradeDistribution('47389', 'CPSC332');
    foreach($result as $row) {
        printf("GRADE: %s, COUNT: %s\n", $row["grade"], $row["grade_count"]);
    }

    $link->close();
    ?>
  </body>
</html>
