<?php
    $MABD = $_GET["MABD"];
    include "connect.php";
    $sql =  "SELECT CV.MACV, TENCV, DONGIA 
            FROM CONGVIEC CV, CT_BD CT 
            WHERE CV.MACV = CT.MACV AND CT.MABD = '$MABD'";
    $result = $connect->query($sql);
    $output = "
        <table border =1 >
            <tr>
                <th>Tên công việc</th>
                <th>Đơn giá</th>
                <th>Chức năng</th>
            </tr>";
    while ( $row = $result->fetch_row()){
        $output .="
            <tr>
                <td>$row[1]</td>
                <td class='DonGia'>$row[2]</td>
                <td>
                    <button type='button'class='xoa_cv'>Xóa</button>
                    <input type='hidden' class='MACV' value ='$row[0]'>
                </td>
            </tr>";
    }
    $output.="</table>";
    $connect->close();
    echo $output;
?>