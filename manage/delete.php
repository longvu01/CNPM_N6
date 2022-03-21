<?php
session_start();
require_once("../connect.php");
require_once("../lib_db.php");
// Kiểm tra quyền có phải quản trị viên ?
// Fake trước khi làm chức năng đăng nhập
$_SESSION['role'] = 1;
$_SESSION['id'] = 1;
// 
$role = $_SESSION['role'];
$id = $_SESSION['id'];
require_once("../root/check_permission_admin.php");
$current_year = date("Y");
$end_year = $current_year - 18;
$start_year = $current_year - 45;
$time_start = date("$start_year-m-d");
$time_end = date("$end_year-m-d");


if(isset($_GET["id"])){$id = $_GET["id"];}
$sql = "select * from nhan_vien where id_tai_khoan = '$id'";
$sql1 = "select * from tai_khoan where id = '$id'";
$nhanvien = select_one($sql);
$nhanvien1 = select_one($sql1);

mysqli_close($conn);
?>

<!-- Start HTML -->
<?php require_once('../root/top.php') ?>
<?php top('Xóa nhân viên') ?>
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
      <h2>Sửa thông tin nhân viên</h2>
    </div>

    <div class="table">

      <div class="wrap">
        <form class="form-edit" id="form-add" method="POST" action="./process/process_delete.php">

          <div class="form-group">
            <label class="form-label-1">Tên đăng nhập</label>
            <input name="ten_dang_nhap" disabled value = "<?php echo $nhanvien1["user_name"] ?>" placeholder="Nhập tên đăng nhập nhân viên" class="form-control form-style" rules="required" />
            <span class="form-message"></span>
          </div>

          <div class="form-group">
            <label class="form-label-1">Mật khẩu</label>
            <input name="mat_khau" disabled value = "<?php echo $nhanvien1["password"] ?>" placeholder="Nhập mật khẩu nhân viên" class="form-control form-style" rules="required" />
            <span class="form-message"></span>
          </div>

          <div class="form-group">
            <label class="form-label-1">Họ và tên</label>
            <input name="ho_ten" disabled value = "<?php if(empty($nhanvien)){echo '';}else{echo $nhanvien["ho_ten"];}  ?>" placeholder="Nhập họ và tên nhân viên" class="form-control form-style" rules="required" />
            <span class="form-message"></span>
          </div>

          <div class="form-group">
            <label class="form-label-1">Số điện thoại</label>
            <input name="sdt" disabled value = "<?php if(empty($nhanvien)){echo '';}else{echo $nhanvien["sdt"];} ?>" placeholder="Nhập số điện thoại nhân viên" class="form-control form-style" rules="required|number" />
            <span class="form-message"></span>
          </div>

          <div class="form-group">
            <label class="form-label-1">Email</label>
            <input name="email" disabled value = "<?php if(empty($nhanvien)){echo '';}else{echo $nhanvien["email"];} ?>" placeholder="Nhập email nhân viên" class="form-control form-style" rules="required|email" />
            <span class="form-message"></span>
          </div>

          <div class="form-group">
            <label class="form-label-1">Ngày sinh</label>
            <input type="date" disabled value = "<?php if(empty($nhanvien)){echo '';}else{echo $nhanvien["ngay_sinh"];} ?>" name="ngay_sinh" min=<?= $time_start ?> max=<?= $time_end ?> class="form-control form-style" rules="required">
            <span class="form-message"></span>
          </div>

          <div class="form-group">
            <label class="form-label-1">Địa chỉ</label>
            <input name="dia_chi" disabled value = "<?php if(empty($nhanvien)){echo '';} else{echo $nhanvien["dia_chi"];} ?>" placeholder="Nhập địa chỉ nhân viên" class="form-control form-style" rules="required" />
            <span class="form-message"></span>
          </div>

          <div class="form-group mt-4">
            <label class="form-label-1">Chọn giới tính nhân viên</label>
            <div class="form-check">
              <input class="form-check-input" disabled type="radio" name="gioi_tinh" value="male" id="male" <?php if(empty($nhanvien)){echo '';} elseif($nhanvien["gioi_tinh"] == 1) echo "checked" ?>>
              <label class="form-check-label" for="male">Nam</label>
            </div>

            <div class="form-check">
              <input class="form-check-input" disabled type="radio" name="gioi_tinh" value="female" id="female" <?php if(empty($nhanvien)){echo '';} elseif($nhanvien["gioi_tinh"] == 0) echo "checked" ?>>
              <label class="form-check-label" for="female">Nữ</label>
            </div>
          </div>

          <div class="form-group" id = "123">
            <label class="form-label-1">Lương</label>
            <input name="luong" disabled value = "<?php if(empty($nhanvien)){echo '';}else{echo $nhanvien["luong"];} ?>" placeholder="Nhập mức lương nnhân viên" class="form-control form-style" rules="required|number" />
            <span class="form-message"></span>
          </div>
          <div class="form-group" >
            <label class="form-label-1">Mã nhân viên</label>
            <input name="id" disabled value = "<?php echo $id ?>"  class="form-control form-style"/>
            <span class="form-message"></span>
          </div>
          
          
          <input name="add"  value = "<?php if(empty($nhanvien)){echo 0;} else{echo 1;} ?>" class = "hideid"/>
          
          <button class="btn-submit" type="submit" >Xoá</button>
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