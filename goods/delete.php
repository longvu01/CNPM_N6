<?php
    session_start();
    require_once("../connect.php");

    // $_SESSION['id'] = 1;
    // $id = $_SESSION['id'];

    mysqli_close($conn);
?>

<!-- Start HTML -->
    <?php require_once ('../root/top.php')?>
    <?php top('Xóa hàng hóa') ?>
</head>
<body>
    <div id="toast"></div>
    <?php require_once ('../root/header.php')?>
    <?php require_once ('../root/menu.php')?>

    <!-- Code xóa hàng hóa-->

    <?php require_once ('../root/footer.php')?>
    <script src = "../assets/js/toast_msg.js"></script>
    <?php require_once ('../root/show_toast.php')?>

    <script type="module">
        import Validator from "../assets/js/validator.js"
        const formAdd = new Validator('#form-add')
    </script>
</body>
</html>