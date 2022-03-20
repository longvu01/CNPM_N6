<?php
    $host = "localhost";
    $dbname = "quan_ly_hang_hoa";
    $username = "root";
    $password = "";
    try {
        $conn = new PDO("mysql:host=$host;dbname=quan_ly_hang_hoa;charset=utf8", $username, $password);

        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    } catch(PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }
?>
