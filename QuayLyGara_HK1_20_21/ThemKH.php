<?php
    $MAKH = $_POST['MAKH'];
    $HOTENKH=$_POST['HOTENKH'];
    $DIACHI=$_POST['DIACHI'];
    $DIENTHOAI=$_POST['DIENTHOAI'];
    include "connect.php";
    $sql ="INSERT INTO KHACHHANG VALUES('$MAKH','$HOTENKH','$DIACHI','$DIENTHOAI')";
    if ($connect->query($sql) === TRUE)
    {
        echo "Thêm khách hàng thành công";
    }
    // else
    // {
    //     echo "Error deleting record: " . $connect->error;
    // }
    $connect->close();
?>