<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Thêm công dân</title>
</head>

<body>
    <form action="cau2_themCongDan.php" method="post">
        Mã công dân <input type="text" name="macd"><br>
        Tên công dân <input type="text" name="tencd"><br>
        Giới tính
        <input type="hidden" name="gioitinh" value="0">
        <input type="checkbox" name="gioitinh" value="1"><br>
        <!-- Giới tính<input type="checkbox" name="gioitinh"> -->
        Năm sinh <input type="date" name="nsinh"><br>
        Nước về <input type="text" name="nuocve"><br>
        Tên điểm cách ly <select name="madcl">
            <?php
                include "connect.php";
                $sql = "SELECT * FROM DIEMCACHLY";
                $result = $connect->query($sql);
                //or dùng fetch_assoc() nếu muốn lấy tên thuộc tính ".$row['tenThuocTinh'].
                while($row = $result->fetch_row()){
                    echo "<option value='$row[0]'>$row[1]</option>";
                }
            ?>
        </select><br>
        <input type="submit" name="submit" value="Thêm">
    </form>
</body>

</html>