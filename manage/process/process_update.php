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
$mail = $_POST["email"];
$date = $_POST["ngay_sinh"];
$place = $_POST["dia_chi"];
$luong = $_POST["luong"];
if($_POST["gioi_tinh"] == "female"){$sex = 0;}
else {$sex = 1;}

// Thông báo và điều hướng quay lại
$_SESSION['info_title'] = "Thành công!";
$_SESSION['info_message'] = "Bạn đã sửa thông tin nhân viên thành công!";
$_SESSION['info_type'] = "success";

if($_POST["add"] ==1){
    $sql = "update nhan_vien set ho_ten = '$name',sdt = '$std',ngay_sinh = '$date',
    dia_chi = '$place',luong = '$luong',gioi_tinh = $sex where id_tai_khoan = '$id'";}
else{
    $sql = "INSERT INTO nhan_vien (ma, ho_ten, sdt, email, ngay_sinh, dia_chi, gioi_tinh, luong, id_tai_khoan) VALUES (null, '$name','$std' , '$mail', '$date', '$place', $sex,'$luong' ,'$id' )";
}

mysqli_query($conn,$sql);
$sql1 = "update tai_khoan set user_name = '$ten_dang_nhap', password = '$pw'";
mysqli_query($conn,$sql1);
header('Location: ../search.php');

mysqli_close($conn);
