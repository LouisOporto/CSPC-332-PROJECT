<html>
  <body>
    <?php
    // username and password need to be replaced by your username and password
    // dbname is the smae as your usernmae

    $link = mysqli_connect('louisdb', 'username', 'password', 'dbname');
    if(!$link) {
      die("Connection failed: " . mysql_error());
    }
    echo "Connection successful<p>";

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