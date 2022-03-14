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
$ma_hang = $_GET['ma'];
// $ma_hang = 2;
// $sql = "select * from hang_hoa where ma = '$ma_hang'";

// $sql = "select ten_loai_hang from loai_hang";
// $ma_loai_hang = select_list($sql);

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

  <div>
    <h2>Sửa hàng hóa</h2>
  </div>
  <div class="wrap">
    <form id="form-edit" method="POST" action="./process/process_update.php">
      <input name="ma_hang" hidden value="<?php echo $ma_hang ?>">
      <div class="mb-3 form-group edit">
        <label for="exampleInputEmail1" class="form-label-1">Tên hàng</label>
        <input name="ten_hang" class="form-control form-style" rules="required" value="<?php echo $item['ten_hang'] ?>">
        <span class="form-message"></span>
      </div>
      <div class="mb-3 form-group edit">
        <label for="exampleInputEmail1" class="form-label-1">Giá nhập</label>
        <input name="gia_nhap" class="form-control form-style" rules="required" value="<?php echo $item['gia_nhap'] ?>">
        <span class="form-message"></span>
      </div>
      <div class="mb-3 form-group edit">
        <label for="exampleInputEmail1" class="form-label-1">Giá bán</label>
        <input name="gia_ban" class="form-control form-style" rules="required" value="<?php echo $item['gia_ban'] ?>">
        <span class="form-message"></span>
      </div>
      <div class="mb-3 form-group edit">
        <label for="exampleInputEmail1" class="form-label-1">Số lượng đã bán</label>
        <input name="so_luong_da_ban" class="form-control form-style" rules="required" value="<?php echo $item['so_luong_da_ban'] ?>">
        <span class="form-message"></span>
      </div>
      <div class="mb-3 form-group edit">
        <label for="exampleInputEmail1" class="form-label-1">Số lượng tồn</label>
        <input name="so_luong_ton" class="form-control form-style" rules="required" value="<?php echo $item['so_luong_ton'] ?>">
        <span class="form-message"></span>
      </div>
      <div class="mb-3 form-group edit">
        <label for="exampleInputEmail1" class="form-label-1">Mã nhà cung cấp</label>
        <input name="ma_nha_cung_cap" class="form-control form-style" rules="required" value="<?php echo $item['ma_nha_cung_cap'] ?>">
        <span class="form-message"></span>
      </div>
      <div class="mb-3 form-group edit">
        <label for="exampleInputEmail1" class="form-label-1">Mã loại hàng</label>
        <input name="ma_loai_hang" class="form-control form-style" rules="required" value="<?php echo $item['ma_loai_hang'] ?>">
        <span class="form-message"></span>
      </div>

      ------------------
      <button class="btn btn-primary mt-4 " type="submit">Sửa</button>
    </form>
  </div>


  <?php require_once('../root/footer.php') ?>
  <script src="../assets/js/toast_msg.js"></script>
  <?php require_once('../root/show_toast.php') ?>

  <script type="module">
    import Validator from "../assets/js/validator.js"
    const formEdit = new Validator('#form-edit')
  </script>
</body>

</html>