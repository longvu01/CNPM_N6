<?php
    session_start();
    require_once("../../connect.php");

    /* Kiểm tra đầy đủ dữ liệu ? */

    /* Code xóa dữ liệu */

    // Thông báo và điều hướng quay lại
    $_SESSION['info_title'] = "Thành công!";
    $_SESSION['info_message'] = "Bạn đã xóa hàng hóa thành công!";
    $_SESSION['info_type'] = "success";

    header('Location: ../search.php');

    mysqli_close($conn);
?>