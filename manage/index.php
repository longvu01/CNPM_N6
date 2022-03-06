<?php
    session_start();
    require_once("../connect.php");
    // Kiểm tra quyền có phải quản trị viên ?
    // Fake trước khi làm chức năng đăng nhập
    $_SESSION['role'] = 1;
    $_SESSION['id'] = 1;
    // 
    $role = $_SESSION['role'];
    $id = $_SESSION['id'];
    require_once("../root/check_permission_admin.php");

    mysqli_close($conn);
?>

<!-- Start HTML -->
    <?php require_once ('../root/top.php')?>
    <?php top('Thêm nhân viên') ?>
</head>
<body>
    <div id="toast"></div>
    <?php require_once ('../root/header.php')?>
    <?php require_once ('../root/menu.php')?>

    <div class="wrapper">
        <form class="" id="form-add" method="POST" action="./process/process_insert.php">
            <legend class="">Thêm nhân viên</legend>
            <input name="id" type ="hidden" value="<?php echo $id ?>"/>
            <!--  -->
            <div class="form-group mt-4">
                <label>Tên đăng nhập</label>
                <input name="ten_dang_nhap" placeholder="Nhập họ đệm nhân viên" class="form-control" rules="required"/>
                <span class="form-message"></span>
            </div>

            <div class="form-group mt-4">
                <label>Mật khẩu</label>
                <input name="mat_khau" placeholder="Nhập mật khẩu nhân viên" class="form-control" rules="required"/>
                <span class="form-message"></span>
            </div>
            
            <div class="form-group mt-4">
                <label>Họ và tên</label>
                <input name="ho_ten" placeholder="Nhập họ và tên nhân viên" class="form-control" rules="required"/>
                <span class="form-message"></span>
            </div>
            
            <div class="form-group mt-4">
                <label>Số điện thoại</label>
                <input name="sdt" placeholder="Nhập số điện thoại nhân viên" class="form-control" rules="required"/>
                <span class="form-message"></span>
            </div>
            
            <div class="form-group mt-4">
                <label>Email</label>
                <input name="email" placeholder="Nhập email nhân viên" class="form-control" rules="required"/>
                <span class="form-message"></span>
            </div>
            
            <div class="form-group mt-4">
                <label>Ngày sinh</label>
                <input type="date" name="ngay_sinh"
                  min="2018-01-01" max="2018-12-31"
                  class="form-control" rules="required">
                <span class="form-message"></span>
            </div>

            <div class="form-group mt-4">
                <label>Địa chỉ</label>
                <input name="dia_chi" placeholder="Nhập địa chỉ nhân viên" class="form-control" rules="required"/>
                <span class="form-message"></span>
            </div>

            <div class="form-group mt-4">
              <label>Chọn giới tính nhân viên</label>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="gioi_tinh" value="male" id="male" checked>
                <label class="form-check-label" for="male">Nam</label>
              </div>

              <div class="form-check">
                <input class="form-check-input" type="radio" name="gioi_tinh" value="female" id="female">
                <label class="form-check-label" for="female">Nữ</label>
              </div>
            </div>


            <div class="form-group mt-4">
                <label>Lương</label>
                <input name="luong" placeholder="Nhập mức lương nhân viên" class="form-control" rules="required"/>
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