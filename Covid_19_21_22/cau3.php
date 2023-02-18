<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Liệt kê công dân</title>
</head>
<script src="jquery.js"></script>

<body>
    <table border=' 1' cellspacing='0'>
        <tr>
            <th>STT</th>
            <th>Tên công dân</th>
            <th>Giới tính</th>
            <th>Năm sinh</th>
            <th>Nước về</th>
            <th>Chức năng</th>
        </tr>
        <?php
            include "connect.php";
            $sql = "SELECT * FROM CONGDAN";
            $results = $connect->query($sql);
            $stt = 0;
                while($row=$results->fetch_row())
                {
                    $stt += 1;
                    echo "<tr>
                        <td>$stt</td>
                        <td>$row[1]</td>";
                        if($row[2] == 1){
                            $row[2] = 'Nam';
                        } else { 
                            $row[2] = 'Nữ';
                        }
                    echo"<td name='gioitinh'>$row[2]</td>
                        <td>$row[3]</td>
                        <td >$row[4]</td>";
                    echo "<td><button class='view' macd='$row[0]'>View</button>
                        <button class='delete' macd='$row[0]'>Delete</button>
                        </td></tr>";
                }
                $connect->close();
                ?>
    </table><br>
    <div class="formUpdate"></div>
</body>
<script>
$(document).ready(function() {
    //ver1
    $(".delete").click(function() {
        macd = $(this).attr('macd');
        $(this).parent().parent().remove();
        $.ajax({
            type: 'POST',
            url: 'cau3_deleteCD.php',
            data: {
                macd: macd
            },
            success: function(data, status) {}
        })
    })
    //ver2
    //     $('.delete').click(function() {
    //         macd = $(this).attr('macd');
    //         $(this).parent().parent().remove();
    //         $.post("cauC_deleteCD.php", {
    //                 macd: macd
    //             },
    //             function(data, status) {
    //                 if (status == "success") {}
    //             });
    //     });
    $('.view').click(function() {
        macd = $(this).attr('macd');
        $.ajax({
            type: 'POST',
            url: 'cau3_viewCD.php',
            data: {
                macd: macd
            },
            success: function(data) {
                $('.formUpdate').html(data);
            }
        })
    })
});
</script>

</html>