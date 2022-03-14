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

// Time for date picker
$current_year = date("Y");
$end_year = $current_year - 18;
$start_year = $current_year - 45;

$time_start = date("$start_year-m-d");
$time_end = date("$end_year-m-d");

mysqli_close($conn);
?>

<!-- Start HTML -->
<?php require_once('../root/top.php') ?>
<?php top('Thêm nhân viên') ?>
</head>

<body>
  <div id="toast"></div>
  <?php require_once('../root/menu.php') ?>
  <?php require_once('../root/header.php') ?>

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
          <legend class="form-title">Thêm nhân viên</legend>

          <div class="form-group">
            <label class="form-label-1">Tên đăng nhập</label>
            <input name="ten_dang_nhap" placeholder="Nhập tên đăng nhập nhân viên" class="form-control form-style" rules="required" />
            <span class="form-message"></span>
          </div>

          <div class="form-group">
            <label class="form-label-1">Mật khẩu</label>
            <input name="mat_khau" placeholder="Nhập mật khẩu nhân viên" class="form-control form-style" rules="required" />
            <span class="form-message"></span>
          </div>

          <div class="form-group">
            <label class="form-label-1">Họ và tên</label>
            <input name="ho_ten" placeholder="Nhập họ và tên nhân viên" class="form-control form-style" rules="required" />
            <span class="form-message"></span>
          </div>

          <div class="form-group">
            <label class="form-label-1">Số điện thoại</label>
            <input name="sdt" placeholder="Nhập số điện thoại nhân viên" class="form-control form-style" rules="required" />
            <span class="form-message"></span>
          </div>

          <div class="form-group">
            <label class="form-label-1">Email</label>
            <input name="email" placeholder="Nhập email nhân viên" class="form-control form-style" rules="required" />
            <span class="form-message"></span>
          </div>

          <div class="form-group">
            <label class="form-label-1">Ngày sinh</label>
            <input type="date" name="ngay_sinh" min=<?= $time_start ?> max=<?= $time_end ?> class="form-control form-style" rules="required">
            <span class="form-message"></span>
          </div>

          <div class="form-group">
            <label class="form-label-1">Địa chỉ</label>
            <input name="dia_chi" placeholder="Nhập địa chỉ nhân viên" class="form-control form-style" rules="required" />
            <span class="form-message"></span>
          </div>

          <div class="form-group mt-4">
            <label class="form-label-1">Chọn giới tính nhân viên</label>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="gioi_tinh" value="male" id="male" checked>
              <label class="form-check-label" for="male">Nam</label>
            </div>

            <div class="form-check">
              <input class="form-check-input" type="radio" name="gioi_tinh" value="female" id="female">
              <label class="form-check-label" for="female">Nữ</label>
            </div>
          </div>

          <div class="form-group">
            <label class="form-label-1">Lương</label>
            <input name="luong" placeholder="Nhập mức lương nnhân viên" class="form-control form-style" rules="required" />
            <span class="form-message"></span>
          </div>
          <button class="btn-submit" type="submit">Thêm nhân viên</button>
        </form>
      </div>

      <?php require_once('../root/footer.php') ?>
      <script src="../assets/js/toast_msg.js"></script>
      <?php require_once('../root/show_toast.php') ?>

      <script type="module">
        import Validator from "../assets/js/validator.js"
        const formAdd = new Validator('#form-add')
      </script>
</body>

</html>