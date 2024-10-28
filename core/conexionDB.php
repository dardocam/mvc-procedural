<?php

require_once "configApp.php";
function openDbConnect(): bool | mysqli
{
    // Create connection
    $conn = mysqli_connect(DBM_HOST, DBM_USER, DBM_PASSWORD, DBM_NAME);

    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    return $conn;
}
