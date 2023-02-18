<?php
    include "connect.php";
    $sqlDcl = "SELECT * FROM DIEMCACHLY";
    $rsDcl = $connect->query($sqlDcl);
    echo "Tên điểm cách ly ";
    echo "<select name='madcl' class='madcl'>
        <option name='tencd'>Tên điểm cách ly</option>";
        while($row=$rsDcl->fetch_row())
        {
            echo "<option value='$row[0]'>$row[1]</option>";
        }
    echo "<select><br><br>";
    echo "Tên công dân 
        <select name='macd' class='macd'>
        <option name='tencd'>Tên công dân</option>";
    echo "<select><br><br>";
    $connect->close();
?>
<div class="dstrieuchung"></div>
<script>
$(document).ready(function() {
    $('.madcl').change(function() {
        var madcl = $(this).val();
        //test lấy madcl
        // alert(madcl);
        $.ajax({
            type: "POST",
            url: "cau5_TenCD.php",
            data: {
                madcl: madcl
            },
            success: function(data) {
                $('.macd').html(data);
                $('.macd').change(function() {
                    var macd = $(this).val();
                    //test lấy macd
                    // alert(macd);
                    $.ajax({
                        type: 'POST',
                        url: "cau5_ListTC.php",
                        data: {
                            macd: macd
                        },
                        success: function(data) {
                            $('.dstrieuchung').html(data);
                        }
                    })
                })
            }
        })
    })
})
</script>