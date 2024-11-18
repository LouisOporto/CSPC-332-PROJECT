<?php
$db = new mysqli('localhost', 'root', '', 'sysdb'); // Adjust 'sysdb' to your database name

// Check connection
if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}
?>
