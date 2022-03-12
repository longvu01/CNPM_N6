<?php
    session_start();
    require_once("../connect.php");
    require_once("../lib_db.php");

    // $_SESSION['id'] = 1;
    // $id = $_SESSION['id'];
    
    // $id = $_GET['id'];
    $id = 2;
    $sql = "select * from hang_hoa where ma = '$id'";
    // die($sql);
    $item = select_one($sql);
    // die($item);
    // lay ten nha cc
    // lay ten loai hang

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
                <table>
                    <tr>
                        <th>Tên hàng</th>
                        <th>Mã hàng</th>
                        <th>Giá</th>
                        <th>Vị trí kho</th>
                        <th>Số lượng</th>
                        <th>Loại hàng</th>
                    </tr>
                    <tr>
                        <th><?php echo $item['ten_hang'] ?></th>
                        <th><?= $item['gia_nhap'] ?></th>
                        <th><?= $item['gia_ban'] ?></th>
                        <th><?= $item['so_luong_da_ban'] ?></th>
                        <th><?= $item['so_luong_ton'] ?></th>
                        <th>Ten loai hang</th>
                    </tr>
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