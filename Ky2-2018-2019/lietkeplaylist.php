<?php
$MaNN = $_POST['MaNN'];
Include "connect.php";
$sql="SELECT * FROM PLAYLIST WHERE MaNN = '$MaNN'";
$result = $connect->query($sql);
Echo "<table border='1'><tr><th>STT</th><th>Tên playlist</th><th>Chức năng</th></tr>";
$i = 1;
While($row = $result->fetch_row())
{
Echo "<tr><td>$i</td><td>$row[1]</td><td><a href='javascript:void(0)' class='delete-button'>Xóa</a><input type='hidden' class='MaPlayList' value='$row[0]'</td>";
$i = $i + 1;
}
Echo "<table>";
?>
