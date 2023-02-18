<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table border="1">
        <tr>
            <th>Tên khách hàng</th>
            <th>Số lần thuê xe</th>
        </tr>
        <?php
            include "connect.php";
            $sql = "SELECT HOTEN, COUNT(*) FROM khachhang KH JOIN hopdong HD ON KH.MAKH = HD.MAKH GROUP BY HOTEN HAVING COUNT(*) > 2";
            $result = $connect->query($sql);
            while($row = $result->fetch_row())
            {
                echo "<tr><td>$row[0]</td><td>$row[1]</td></tr>";
            }
        ?>
    </table>
</body>
</html>