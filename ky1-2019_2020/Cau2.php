<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="thuexe.php" method="POST">
	Mã hợp đồng <input type="text" name="MAHD" />
	Tên hợp đồng <input type="text" name="TENHD" />
	Tên khách hàng <select name="MAKH" id="MAKH">
	<?php
		include "connect.php";
        $sql = "SELECT * FROM khachhang";
        $result = $connect->query($sql);
        While($row = $result->fetch_row())
        {
            echo "<option value='$row[0]'>$row[1]</option>";
        }
	?>
</select>
Tên xe <select name="MAXE[]" id="MAXE" multiple>
    <?php
		Include "connect.php";
        $sql = "SELECT * FROM XE";
        $result = $connect->query($sql);
        While($row = $result->fetch_row())
        {
            echo "<option value='$row[0]'>$row[1]</option>";
        }
	?>
</select>
Số tiền <input type="text" name="TONGTIEN" />
<input type="submit" value="Thuê xe" />
</form>
</body>
</html>

