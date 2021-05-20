<?php

$dbConn = new mysqli("localhost", "root", "", "nav");

// Check connection
if ($dbConn->connect_error) {
    die("Connection failed: " . $dbConn->connect_error);
}
?>