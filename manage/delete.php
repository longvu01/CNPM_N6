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

    mysqli_close($conn);
?>

<!-- Start HTML -->
    <?php require_once ('../root/top.php')?>
    <?php top('Xóa nhân viên') ?>
</head>
<body>
    <div id="toast"></div>
    <?php require_once ('../root/header.php')?>
    <?php require_once ('../root/menu.php')?>

  

    <?php require_once ('../root/footer.php')?>
    <script src = "../assets/js/toast_msg.js"></script>
    <?php require_once ('../root/show_toast.php')?>

    <script type="module">
        import Validator from "../assets/js/validator.js"
        const formAdd = new Validator('#form-add')
    </script>
</body>
</html>