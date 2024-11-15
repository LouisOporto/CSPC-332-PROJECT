<!DOCTYPE html>
<html>
<head>
<title>
Response
</title>
</head>
<body>
<?php

$ssn = $_POST["ssn"];
// $ssn = '123456789';

// username and password need to be replaced by your username and password
$hostname = "localhost";
$username = "root";
$password = ""; // Default for xampp (if your using that)
$dbname = "sysdb";

// Create connection
$link = mysqli_connect($hostname, $username, $password, $dbname);

if(!$link) {
  die("Connection failed: " . mysql_error());
}
echo "Connection successful\n";


// Test query
// $query = "SELECT * FROM PROFESSOR WHERE ssn='123456789'"; // Should post Professor Wang database if added

$query = "SELECT * FROM PROFESSOR WHERE ssn=$ssn";
$result = $link->query($query);
$row = $result->fetch_assoc();
printf("<p>ssn: %s\n</p>", $row["ssn"]);
printf("<p>name: %s\n</p>", $row["name"]);

echo "<p>Professor ", $row["name"], "</p";
$result->free_result();
$link->close();
?>
</body>
</html>

