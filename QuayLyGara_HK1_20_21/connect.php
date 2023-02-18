<?php
    $connect = new mysqli("localhost","root","","quanlygara");
    if($connect->errno != 0)
    {
        die("Error: Could not connect to the database. An error ".$connect->error." ocurred.");
    }
    //Chọn hệ ký tự là utf8 để có thể in ra tiếng Việt.
    $connect->set_charset('utf8'); //csdl tiếng việt
?>