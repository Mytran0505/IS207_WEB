<?php
Include "connect.php";
$MaPlayList = $_GET['MaPlayList'];
$sql="DELETE FROM PLAYLIST_BAIHAT WHERE MaPlayList = '$MaPlayList'";
$connect->query($sql);
$sql="DELETE FROM PLAYLIST WHERE MaPlayList = '$MaPlayList'";
$connect->query($sql);
?>
