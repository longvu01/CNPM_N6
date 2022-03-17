<?php
session_start();
require_once("../connect.php");

/* Xử lý/ lấy dữ liệu... */

mysqli_close($conn);
?>

<!-- Start HTML -->
<?php require_once('../root/top.php') ?>
<!-- Viết tiêu đề của trang vào trong ('') -->
<?php top('') ?>
</head>

<body>
  <!-- div để show toast message -->
  <div id="toast"></div>
  <!-- link html hiển thị menu -->
  <?php require_once('../root/menu.php') ?>
  <!-- link html hiển thị header -->
  <?php require_once('../root/header.php') ?>


  <!-- Code xử lý -->


  <!-- link html hiển thị footer -->
  <?php require_once('../root/footer.php') ?>
  <!-- link file js hiển thị toast message -->
  <script src="../assets/js/toast_msg.js"></script>
  <!-- link file php gọi hàm show_toast khi có dữ liệu trả về -->
  <?php require_once('../root/show_toast.php') ?>

  <!-- link file js xử lý validator(kiểm tra hợp lệ) của form -->
  <script type="module">
    import Validator from "../assets/js/validator.js"
    /* Đặt id cho form và viết tương ứng vào trong ('#form-') */
    const formAdd = new Validator('#form-')
  </script>
</body>

</html>