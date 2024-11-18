<?php
// Database connection parameters
$hostname = "localhost";
$username = "root"; // Replace with your username
$password = "";     // Replace with your password
$dbname = "sysdb";  // Replace with your database name

// Try connecting to the database
$conn = mysqli_connect($hostname, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connection successful!";
?>
