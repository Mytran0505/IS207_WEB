<form action="UpdateBD.php" method="POST">
    <b>Thanh toán</b>
    Số xe <select name="MABD" id="SOXE">
    </select>
    Ngày nhận xe 
    <input type="date" name="NGAYNHAN" id="NGAYNHAN">
    Thành tiền 
    <input type="text" id="ThanhTien" name="THANHTIEN">
    <div class="listcv"></div>
    <input type="submit" value="Thanh toán">
</form>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script>
    $(document).ready(function(){
        $("#NGAYNHAN").change(function(){
            var NGAYNHAN = $(this).val();
            $.ajax({
                method:"GET",
                url: "loadsoxe.php",
                data:{NGAYNHAN: NGAYNHAN},
                success:function(data)
                {
                    $("#SOXE").html(data);
                }
            });
        });
        $("#SOXE").change(function(){
            var MABD = $(this).val();
            $.ajax({
                url:"loadcongviec.php",
                method:"GET",
                data:{MABD: MABD},
                success:function(data){
                    $(".listcv").html(data);
                    var sum =0;
                    $(".DonGia").each(function(){
                        sum += Number($(this).text());
                    });    
                    $("#ThanhTien").val(sum);
                }
            });
        });
        $("body").on("click", ".xoa_cv", function(){
            var parent = $(this).parents('tr');
            var MACV =parent.find(".MACV").val();
            var MABD =$("#SOXE").val();
            $.ajax({
                url:"XoaCTBD.php",
                method:"GET",
                data:{MABD: MABD, MACV:MACV},
                success:function(){
                    parent.remove();
                }
            });
        });
    });
</script>