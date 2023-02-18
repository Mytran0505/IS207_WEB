<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    Tên người nghe <select id="MaNN" name="MaNN">
        <?php
            Include "connect.php";
            $sql = "SELECT * FROM NGUOINGHE";
            $result = $connect->query($sql);
            While($row = $result->fetch_row())
            {
                Echo "<option value='$row[0]'>$row[1]</option>";
            }
        ?>
    </select>
    <div id="tableplaylist"></div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        $("#MaNN").change(function(){
                    var MaNN = $(this).val();
                    $.ajax({
                            url: "lietkeplaylist.php",
                            method: "POST",
                            data: {MaNN : MaNN},
                            success:function(data)
                            {
                                    $("#tableplaylist").html(data);
                            }
                    });
            });            
        $('body').on("click", ".delete-button", function(){
            var parent = $(this).parents("tr");
            var MaPlayList = parent.find(".MaPlayList").val();
            $.ajax({
                url: "xoaplaylist.php",
                method:"GET",
                data:{MaPlayList: MaPlayList},
                success:function()
                {
                    parent.remove();
                }
            });
        });
    });
    </script>
</body>
</html>