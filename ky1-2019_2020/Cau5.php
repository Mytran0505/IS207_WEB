<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    Tên khách <select id="MAKH">
    <?php
        include "connect.php";
        $sql = "SELECT * FROM khachhang";
        $result = $connect->query($sql);
        while($row = $result->fetch_row())
        {
            echo "<option value='$row[0]'>$row[1]</option>";
        }
    ?>
    </select>
    Mã hợp đồng <select id = "MAHD"></select>
    <div id="danhsachxe"></div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
    <script>
        $(document).ready(function(){
            $("#MAKH").change(function(){
                var MAKH = $("#MAKH").val();
                $.ajax({
                    method:"GET",
                    url:"loadhd.php",
                    data:{MAKH: MAKH},
                    success:function(data)
                    {
                        $("#MAHD").html(data);
                    }
                });
            });
            $('#MAHD').change(function(){
                var MAHD = $(this).val();
                $.ajax({
                    method: "GET",
                    url:"loadtablexe.php",
                    data: {MAHD:MAHD},
                    success:function(data)
                    {
                        $("#danhsachxe").html(data);
                    }
                });
            });
            $('body').on('click', '.xoa', function(){
                var parent = $(this).parents('tr');
                var MAXE = parent.find('.MAXE').val();
                var MAHD = parent.find('.MAHD').val();
                $.ajax({
                    method:"GET",
                    url:"deletecthd.php",
                    data:{MAXE:MAXE, MAHD:MAHD},
                    success:function(data)
                    {
                        parent.remove();
                    }
                });
            });
        });
    </script>
</body>
</html>