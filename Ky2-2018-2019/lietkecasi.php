<?php
Include "connect.php";
$NamSinh = $_GET['NamSinh'];
$sql = "SELECT * FROM CaSi WHERE NamSinh = '$NamSinh'";
$result = $connect->query($sql);
Echo "<table border='1'><tr><th>STT</th><th>Tên ca sĩ</th></tr>";
$i = 1;
While($row = $result->fetch_row())
{
Echo "<tr><td>$i</td><td>$row[1]</td></tr>";
$i = $i + 1;
}
Echo "</table>";
?>
