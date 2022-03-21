<?php
session_start();
require_once("../../connect.php");
// Kiểm tra quyền, dữ liệu
require_once("../../root/check_permission_admin.php");

// Thông báo và điều hướng quay lại
$_SESSION['info_title'] = "Thành công!";
$_SESSION['info_message'] = "Bạn đã xóa nhân viên thành công!";
$_SESSION['info_type'] = "success";
$id = $_POST["id"];
$sql = "delete from nhan_vien where id_tai_khoan = '$id'";
mysqli_query($conn,$sql);
$sql1 = "delete from tai_khoan where id = '$id'";
mysqli_query($conn,$sql1);
header('Location: ../search.php');

mysqli_close($conn);
