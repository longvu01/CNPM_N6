<?php
session_start();
require_once("../../connect.php");
// Kiểm tra quyền, dữ liệu
require_once("../../root/check_permission_admin.php");
// Back to home page when data is empty
// if (
//   empty($_POST['ten_dang_nhap']) || empty($_POST['ho_ten'])
//   || empty($_POST['sdt']) || empty($_POST['email'])
//   || empty($_POST['ngay_sinh']) || empty($_POST['dia_chi'])
//   || empty($_POST['gioi_tinh']) || empty($_POST['luong'])
//   || empty($_POST['mat_khau'])
// ) {
//   $_SESSION['info_title'] = "Có lỗi!";
//   $_SESSION['info_message'] = "❌Cần điền đầy đủ thông tin!";
//   $_SESSION['info_type'] = "error";

//   header('Location: ../');
//   exit;
// }
if (
  empty($_POST['user_name']) || empty($_POST['password'])
) {
  $_SESSION['info_title'] = "Có lỗi!";
  $_SESSION['info_message'] = "❌Cần điền đầy đủ thông tin!";
  $_SESSION['info_type'] = "error";

  header('Location: ../');
  exit;
}
// ----------------------------------------------------------------
// $ten_dang_nhap = addslashes($_POST['ten_dang_nhap']);
$user_name = addslashes($_POST['user_name']);
// $mat_khau = addslashes($_POST['mat_khau']);
$password = addslashes($_POST['password']);
// $ho_ten = addslashes($_POST['ho_ten']);
// $sdt = addslashes($_POST['sdt']);
// $email = addslashes($_POST['email']);
// $ngay_sinh = addslashes($_POST['ngay_sinh']);
// $dia_chi = addslashes($_POST['dia_chi']);
// $gioi_tinh = addslashes($_POST['gioi_tinh']);
// $luong = addslashes($_POST['luong']);

// Kiểm tra tên đăng nhập đã tồn tại trong DB chưa
$sql = "select count(*) from tai_khoan where user_name = '$user_name'";
$result = mysqli_query($conn, $sql);
$number_rows = mysqli_fetch_array($result)['count(*)'];
// Nếu đã tồn tại tên đăng nhập thì thông báo và điều hướng quay lại
if ($number_rows == 1) {
  $_SESSION['info_title'] = "Thông báo!";
  $_SESSION['info_message'] = "Tên đăng nhập này đã có người đặt!";
  $_SESSION['info_type'] = "info";

  header('Location: ../');
  exit;
}

// $sql = "insert into nhan_vien 
//     (ten_dang_nhap, ho_ten, sdt, email, ngay_sinh, dia_chi, gioi_tinh, luong, mat_khau)
//     values 
//     ('$ten_dang_nhap', '$ho_ten', '$sdt', '$email', '$ngay_sinh', '$dia_chi', '$gioi_tinh', '$luong', '$mat_khau')";
// // die($sql);
// mysqli_query($conn, $sql);
$sql = "insert into tai_khoan 
    (user_name, password)
    values 
    ('$user_name', '$password')";
// die($sql);
mysqli_query($conn, $sql);

// Thông báo và điều hướng quay lại
$_SESSION['info_title'] = "Thành công!";
$_SESSION['info_message'] = "Bạn đã thêm nhân viên mới thành công!";
$_SESSION['info_type'] = "success";

header('Location:/CNPM_N6/goods/staff.php');

mysqli_close($conn);
