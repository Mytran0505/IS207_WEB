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
    <tr><th>STT</th><th>Tên bài hát</th><th>Số lần xuất hiện trong playlist</th></tr>
    <?php
        Include "connect.php";
        $sql="SELECT TenBaiHat, COUNT(*)
        FROM PLAYLIST_BAIHAT PB JOIN BAIHAT BH ON PB.MaBaiHat = BH.MaBaiHat
        GROUP BY TenBaiHat
        ORDER BY COUNT(*) DESC";
        $i = 1;
        $result = $connect->query($sql);
        While($row = $result->fetch_row())
        {
            Echo "<tr><td>$i</td><td>$row[0]</td><td>$row[1]</td></tr>";
            $i = $i + 1;
        }
        ?>
    </table>
</body>
</html>