<?php
    session_start();
    require_once("../../connect.php");
    // Kiểm tra quyền, dữ liệu
    require_once("../../root/check_permission_admin.php");
    // Back to home page when data is empty
    if(
      empty($_POST['ma_hang']) || empty($_POST['ten_hang']) 
      || empty($_POST['gia_nhap']) || empty($_POST['gia_ban']) 
      || empty($_POST['so_luong_da_ban']) || empty($_POST['so_luong_ton']) 
      || empty($_POST['ma_nha_cung_cap']) || empty($_POST['ma_loai_hang'])
    
    ) {
        $_SESSION['info_title'] = "Có lỗi!";
        $_SESSION['info_message'] = "❌Cần điền đầy đủ thông tin!";
        $_SESSION['info_type'] = "error";

        header('Location: ../');
        exit;
    }
    // ----------------------------------------------------------------
    $ma_hang = addslashes($_POST['ma_hang']);
    $ten_hang = addslashes($_POST['ten_hang']);
    $gia_nhap = addslashes($_POST['gia_nhap']);
    $gia_ban = addslashes($_POST['gia_ban']);
    $so_luong_da_ban = addslashes($_POST['so_luong_da_ban']);
    $so_luong_ton = addslashes($_POST['so_luong_ton']);
    $ma_nha_cung_cap = addslashes($_POST['ma_nha_cung_cap']);
    $ma_loai_hang = addslashes($_POST['ma_loai_hang']);
   

    // Kiểm tra tên đăng nhập đã tồn tại trong DB chưa
    
    

    $sql = "update hang_hoa 
    set
     ten_hang = '$ten_hang', gia_nhap = '$gia_nhap', gia_ban ='$gia_ban', 
     so_luong_da_ban = '$so_luong_da_ban', so_luong_ton ='$so_luong_da_ban', 
     ma_nha_cung_cap='$ma_nha_cung_cap', ma_loai_hang='$ma_loai_hang'
    where ma = '$ma_hang'
    ";
    // die($sql);
    mysqli_query($conn, $sql);

    // Thông báo và điều hướng quay lại
    $_SESSION['info_title'] = "Thành công!";
    $_SESSION['info_message'] = "Bạn đã sửa thông tin hàng hóa thành công!";
    $_SESSION['info_type'] = "success";

    header('Location: ../search.php');

    mysqli_close($conn);
?>