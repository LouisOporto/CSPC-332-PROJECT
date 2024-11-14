<html>
  <body>
    <?php

    // username and password need to be replaced by your username and password
    $hostname = "localhost";
    $username = "root";
    $password = "password";
    $dbname = "sysdb";

    // Create connection
    $link = mysqli_connect($hostname, $username, $password, $dbname);

    if(!$link) {
      die("Connection failed: " . mysql_error());
    }
    echo "Connection successful<p>";


    // Test query
    $query = "SELECT * FROM PROFESSOR WHERE ssn=" .$_POST["ssn"];
    $result = $link->query($query);
    $row = $result->fetch_assoc();
    printf("SSN: %s<br>\n", $row["ssn"]);
    printf("NAME: %s<br>\n", $row["name"]);
    $result->free_result();
    $link->close();
    ?>
  </body>
</html>