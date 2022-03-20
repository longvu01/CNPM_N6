<?php
    session_start();
    require_once("../connect.php");
    require_once("../lib_db.php");

    // $_SESSION['id'] = 1;
    // $id = $_SESSION['id'];
    
    // $id = $_GET['id'];
    $list = "select * from nhan_vien";
    // die($sql);
    $result = select_list($list);
    //echo $item['ho_ten'];
    //var_dump($item);
    //die();
    mysqli_close($conn);
?>
<!-- Start HTML -->
<html>
<head>
    <?php require_once ('../root/top.php')?>
    <?php top('Danh sách nhân viên') ?>
    
</head>
<body>
    <div id="toast"></div>
    <?php require_once ('../root/menu.php')?>
    <?php require_once ('../root/header.php')?>

    <div class="container-staff">
            <div class="hello-staff">
                <h2>Xin chào,</h2>
                <h2>USER NAME</h2>
            </div>
            <div class="title-container">
                <div class="title-staff">
                    <h2>Danh sách nhân viên</h2>
                </div>
                <div class="staff-search__form">
                    <input type="text" class="staff-search" id="search" placeholder="Tìm kiếm nhân viên?">
                    <button type="submit" class="button-search" id="button-search">
                    <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
            <div class="table-staff__container" id="output">
            </div>

    <?php require_once ('../root/footer.php')?>
    <script src = "../assets/js/toast_msg.js"></script>
    <?php require_once ('../root/show_toast.php')?>
    <script type="module">
        import Validator from "../assets/js/validator.js"
        const formAdd = new Validator('#form-add')
    </script>
    <!-- <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css'
    integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'> -->
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script>
    <script
        src='https://code.jquery.com/jquery-3.6.0.js'
        integrity='sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk='
        crossorigin='anonymous'>
    </script>
    <script type="text/javascript">
    $(document).ready(function(){
        function searchTable(name){
            $.ajax({
                url:"process/process_staffsearch.php",
                type:"POST",
                data:{name:name},
                success:function(data){
                $("#output").html(data);
                }
            });
        }
        searchTable();
        $(document).on("click","#button-search",function(e){
            e.preventDefault();
            var name = $("#search").val();
            searchTable(name);
        });
    });
    </script>

</body>
</html>
