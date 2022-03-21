<?php
    session_start();
    require_once("../connect.php");
    require_once("../lib_db.php");
    $temp = isset($_POST['goods-search']) ? $_POST['goods-search'] : '';
    if(empty($temp)){
        $name = '';   
    }else
    {
        $name = "where ten_hang like '%{$temp}%'";
    }
    // $_SESSION['id'] = 1;
    // $id = $_SESSION['id'];
    
    // $id = $_GET['id'];
    $sql = "select * from hang_hoa $name";

    
    //die($sql);
    $array_loai_hang = array();
    $result = select_list($sql);

    for ($i=0; $i < count($result); $i++) { 
        $x = $result[$i]["ma_loai_hang"];
        $sql1 = "select * from loai_hang where ma = '$x'";
        $a  = select_one($sql1);
        $array_loai_hang[$i] = $a["ten_loai_hang"];
    }

    
    mysqli_close($conn);
?>

<!-- Start HTML -->
    <?php require_once ('../root/top.php')?>
    <?php top('Xem chi tiết') ?>
</head>
<body>
    <div id="toast"></div>
    <?php require_once ('../root/menu.php')?>
    <?php require_once ('../root/header.php')?>

    <div class="container">
            <div class="hello-user">
                <h2>Xin chào,</h2>
                <h2>USER NAME</h2>
            </div>
            <div class="button-add">
                <button type="button">
                    + Thêm hàng hoá
                </button>
            </div>
            <div class="title">
                <h2>Danh sách hàng hoá</h2>
            </div>

            <div class="table">
            <?php if(empty($result))
                    {
                        echo "<div class='staff-no'>Không có kết quả phù hợp</div>";
                    }
                    else{?>
                <table style="width:100%">
                    <tr>
                        <th>Tên hàng</th>
                        <th>Mã hàng</th>
                        <th>Giá</th>
                        <th>Vị trí kho</th>
                        <th>Số lượng</th>
                        <th>Loại hàng</th>
                        <th>Hành động</th>
                    </tr>
                    <?php 


                    for($i=0; $i < count($result); $i++){?>
                    <tr>
                        <th><?php echo $result[$i]['ten_hang'] ?></th>
                        <th><?= $result[$i]['gia_nhap'] ?></th>
                        <th><?= $result[$i]['gia_ban'] ?></th>
                        <th><?= $result[$i]['so_luong_da_ban'] ?></th>
                        <th><?= $result[$i]['so_luong_ton'] ?></th>
                        <th><?php echo $array_loai_hang[$i] ?></th>
                        <th>
                            <a href=""><i class='bx bx-edit-alt'></i></a>
                            <a href=""><i class='bx bx-trash'></i></a>
                            <a href=""><i class='bx bx-detail'></i></a>
                        </th>
                    </tr>
                    <?php }} ?>
                </table>
            </div>
        </div>

       <?php require_once ('../root/footer.php')?>
    <script src = "../assets/js/toast_msg.js"></script>
    <?php require_once ('../root/show_toast.php')?>

    <script type="module">
        import Validator from "../assets/js/validator.js"
        const formAdd = new Validator('#form-add')
    </script>
</body>
</html>