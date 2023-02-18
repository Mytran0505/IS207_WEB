<p>Thêm thông tin xe khách hàng</p>
<form action="ThemTTXe.php" method="post">
    <p>Họ tên khách hàng</p>
    <?php
        include "connect.php";
        $sql = "SELECT * FROM KHACHHANG;";
        echo '<select name ="MAKH" id="MAKH">';
        $result = $connect->query($sql);
        while ($col = $result->fetch_row()){
            echo "<option value=".$col[0].">".$col[1]."</option>";
        }
        echo '</select>';
    ?><br>
    <p>Số xe</p>
    <input type="text" name="SOXE"><br>
    <p>Hãng xe</p>
    <select name="HANGXE" multiple>
        <option value="Toyota">Toyota</option>
        <option value="BMW">BMW</option>
        <option value="Audi">Audi</option>
    </select><br>
    <p>Năm sản xuất</p>
    <input type="text" name="NAMSX"><br>
    <input type="submit" value="Thêm">
</form>