<?php
session_start();
require_once("../../connect.php");
// Kiểm tra quyền, dữ liệu
require_once("../../root/check_permission_admin.php");

$id = $_POST["id"];
$ten_dang_nhap = $_POST["ten_dang_nhap"];
$pw = $_POST["mat_khau"];
$name = $_POST["ho_ten"];
$std = $_POST["sdt"];
$date = $_POST["ngay_sinh"];
$place = $_POST["dia_chi"];
$luong = $_POST["luong"];
if($_POST["gioi_tinh"] == "female"){$sex = 0;}
else {$sex = 1;}

// Thông báo và điều hướng quay lại
$_SESSION['info_title'] = "Thành công!";
$_SESSION['info_message'] = "Bạn đã sửa thông tin nhân viên thành công!";
$_SESSION['info_type'] = "success";
$sql = "update nhan_vien set ten_dang_nhap = '$ten_dang_nhap', mat_khau = '$pw',ho_ten = '$name',sdt = '$std',ngay_sinh = '$date',
dia_chi = '$place',luong = '$luong',gioi_tinh = $sex where ma = '$id'";
mysqli_query($conn,$sql);
header('Location: ../search.php');

mysqli_close($conn);
