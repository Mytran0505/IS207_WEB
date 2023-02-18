<b>Thêm bão dường</b>
<form action="ThemBD.php" method="post">
    <p>Số xe</p>
    <input type="text" name="SOXE" id="SOXE"><br>
    <p>Họ tên khách hàng</p>
    <input type="text" name="HOTENKH" id="HOTENKH"><br>
    <p>Mã bảo dưỡng</p>
    <input type="text" name="MABD"><br>
    <p>Số KM</p>
    <input type="text" name="SOKM"><br>
    <p>Nội dung</p>
    <input type="text" name="NOIDUNG"><br>
    <input type="submit" value="Thêm">
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
<script>
    $(document).ready(function(){
        $('#SOXE').change(function(){
            var SOXE = $('#SOXE').val();
            $.ajax({
                url:"GetTenKH.php",
                type:"GET",
                data:{SOXE:SOXE},
                success:function(result){
                    $('#HOTENKH').val(result);
                }
            });
        });
    });
</script>
