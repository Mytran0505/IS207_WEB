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
        <tr><th>STT</th><th>Tên ca sĩ</th></tr></tr>
        <?php
            Include "connect.php";
            $sql = "SELECT MaCaSi, TenCaSi
                    FROM CaSi C
                    WHERE NOT EXISTs( SELECT *
            FROM BaiHat B
            WHERE NOT EXISTS(
            SELECT * FROM CASI_BAIHAT CS_BH
            WHERE CS_BH.MaCaSi = C.MaCaSi
            AND CS_BH. MaBaiHat = B.MaBaiHat))";
            $result = $connect->query($sql);
            $i = 1;
            While($row = $result->fetch_row())
            {
                Echo "<tr><td>$i</td><td>$row[1]</td></tr>";
                $i = $i + 1;
            }
        ?>
    </table> 
</body>
</html>

