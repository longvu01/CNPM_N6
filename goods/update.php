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
    // lay ten nha cc
    // lay ten loai hang

    mysqli_close($conn);
?>

<!-- Start HTML -->
    <?php require_once ('../root/top.php')?>
    <?php top('Sửa thông tin hàng hóa') ?>
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
                
            </div>
            <div class="title">
                <h2>Danh sách hàng hoá</h2>
            </div>
            
            <div class="table">

            <div class="wrap">
                <form class="form-edit" id="form-add" method="POST" action="./process/process_insert.php"> 
                    <legend class="">Thêm nhân viên</legend>
                    <input name="id" hidden value=<?= $id ?>/>

                    <div class="mb-3 form-group edit">
                        <label class="form-label-1">Tên đăng nhập</label>
                        <input name="ten_dang_nhap" placeholder="Nhập tên đăng nhập nhân viên" class="form-control form-style" rules="required" value=<?= $item['ma'] ?>/>
                        <span class="form-message"></span>
                    </div>

                    <div class="mb-3 form-group edit">
                        <label class="form-label-1">Mật khẩu</label>
                        <input name="mat_khau" placeholder="Nhập mật khẩu nhân viên" class="form-control form-style" rules="required"/>
                        <span class="form-message"></span>
                    </div>

                    <div class="mb-3 form-group edit">
                        <label class="form-label-1">Họ và tên</label>
                        <input name="mat_khau" placeholder="Nhập họ và tên nhân viên" class="form-control form-style" rules="required"/>
                        <span class="form-message"></span>
                    </div>

                    <div class="mb-3 form-group edit">
                        <label class="form-label-1">Số điện thoại</label>
                        <input name="mat_khau" placeholder="Nhập số điện thoại nhân viên" class="form-control form-style" rules="required"/>
                        <span class="form-message"></span>
                    </div>

                    <div class="mb-3 form-group edit">
                        <label class="form-label-1">Email</label>
                        <input name="email" placeholder="Nhập số email nhân viên" class="form-control form-style" rules="required"/>
                        <span class="form-message"></span>
                    </div>
                    
                    <div class="mb-3 form-group edit">
                        <label class="form-label-1">Địa chỉ</label>
                        <input name="email" placeholder="Nhập số email nhân viên" class="form-control form-style" rules="required"/>
                        <span class="form-message"></span>
                    </div>

                    <div class="form-group mt-4">
                        <label class="form-label-1">Chọn giới tính nhân viên</label>
                        <div class="form-check">
                            <input class="form-check-input form-style" type="radio" name="gioi_tinh" value="male" id="male" checked>
                            <label class="form-check-label" for="male">Nam</label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input form-style" type="radio" name="gioi_tinh" value="female" id="female">
                            <label class="form-check-label" for="female">Nữ</label>
                        </div>
                    </div>
                    
                    <div class="mb-3 form-group edit">
                        <label class="form-label-1">Lương</label>
                        <input name="email" placeholder="Nhập mức lương nnhân viên" class="form-control form-style" rules="required"/>
                        <span class="form-message"></span>
                    </div>
                    <button class="btn btn-primary mt-4 " type="submit">Thêm nhân viên</button>
            </form>
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