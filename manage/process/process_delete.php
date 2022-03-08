<?php
    session_start();
    require_once("../../connect.php");
    // Kiểm tra quyền, dữ liệu
    require_once("../../root/check_permission_admin.php");

    // Thông báo và điều hướng quay lại
    $_SESSION['info_title'] = "Thành công!";
    $_SESSION['info_message'] = "Bạn đã xóa nhân viên thành công!";
    $_SESSION['info_type'] = "success";

    header('Location: ../search.php');

    mysqli_close($conn);
?>