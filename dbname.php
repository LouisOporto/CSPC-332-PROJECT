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
    echo "Connection successful<p>";


    // Test query
    $query = "SELECT * FROM PROFESSOR WHERE ssn=" .$ssn;
    $result = $link->query($query);
    $row = $result->fetch_assoc();
    printf("SSN: %s<br>\n", $row["ssn"]);
    printf("NAME: %s<br>\n", $row["name"]);
    $result->free_result();
    
    include("src/models/Professor.php");
    
    $professor = new Professor($link);
    
    $result = $professor->getClassSchedule($ssn);
    printf("SNUM: %s\n", $result[0]["snum"]);
    printf("MEETING DATE: %s\n", $result[0]["meetingdate"]);

    $link->close();
    ?>
  </body>
</html>
