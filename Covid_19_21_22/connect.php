<?php
    $connect = new mysqli("localhost", "root", "", "covid19");
    if($connect -> errno !== 0){
        die("Error: Could not connect to the database. An error ".$connect->error." ocurred.");
    } else {
        // echo ("Connect successfully!");
    }
    $connect -> set_charset("utf8");
?>