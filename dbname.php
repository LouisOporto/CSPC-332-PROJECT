<html>
  <body>
    <?php
    // username and password need to be replaced by your username and password
    // dbname is the smae as your usernmae
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
    $query = "SELECT * FROM STUDENT WHERE ssn=" .$_POST["sno"];
    $result = $link->query($query);
    $row = $result->fetch_assoc();
    printf("SSN: %s<br>\n", $row["ssn"]);
    printf("First NAME: %s<br>\n", $row["fname"]);
    printf("Last NAME: %s<br>\n", $row["lname"]);
    $result->free_result();
    $link->close();
    ?>
  </body>
</html>