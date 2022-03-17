<?php
session_start();
require_once("../connect.php");

/*  Cần có phần này để xử lý logic phần menu */
$sql = 'SELECT * FROM hang_hoa ORDER BY ma DESC LIMIT 1';
$resultLast = mysqli_query($conn, $sql);
$item = mysqli_fetch_array($resultLast);

$sql = 'SELECT * FROM nhan_vien ORDER BY ma DESC LIMIT 1';
$resultLast = mysqli_query($conn, $sql);
$user = mysqli_fetch_array($resultLast);

/* Xử lý/ lấy dữ liệu... */

mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang='en'>

<head>
  <meta charset='UTF-8'>
  <meta http-equiv='X-UA-Compatible' content='IE=edge'>
  <meta name='viewport' content='width=device-width, initial-scale=1.0'>
  <title>
    <!-- Viết tiêu đề ở đây -->
  </title>
  <!-- Link css chung cho các trang -->
  <link rel='stylesheet' href='../assets/css/addproduct2.css'>
  <link rel='stylesheet' href='../assets/css/grid.css'>
  <link rel='stylesheet' href='../assets/css/base.css'>
  <link rel='stylesheet' href='../assets/css/style.css'>
  <link rel='stylesheet' href='../assets/css/validation.css'>
  <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.15.2/css/all.css' />
  <link rel='preconnect' href='https://fonts.googleapis.com'>
  <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>
  <link href='https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,300;0,400;0,700;0,800;0,900;1,500&display=swap' rel='stylesheet'>
</head>

<body>
  <!-- div để show toast message -->
  <div id="toast"></div>
  <!-- Menu -->
  <nav class="sidebar close">
    <header>
      <div class="image-text">
        <span class="image">
          <!--<img src="logo.png" alt="">-->
        </span>

        <div class="text logo-text">
          <span class="name">Quản lý hàng hoá</span>
        </div>
      </div>

      <i class="bx bx-chevron-right toggle"></i>
    </header>

    <div class="menu-bar">
      <div class="menu">
        <ul class="menu-links">
          <li class="nav-link">
            <a href="#">
              <i class="bx bx-home-alt icon"></i>
              <span class="text nav-text">Trang chủ</span>
            </a>
          </li>

          <li class="nav-link" id="user-click">
            <a href="#" class="user-click" onclick="hien1()">
              <i class="bx bx-user icon"></i>
              <span class="text nav-text">Quản lý người dùng</span>
            </a>
          </li>
          <li class="nav-link hide-user">
            <a href="../manage">
              <span class="text nav-text">Thêm mới tài khoản</span>
            </a>
          </li>
          <li class="nav-link hide-user">
            <a href="../manage/search.php">
              <span class="text nav-text">Xem/ Tìm kiếm</span>
            </a>
          </li>
          <li class="nav-link hide-user">
            <a href="../manage/delete.php?ma=<?php echo $user['ma'] ?>">
              <span class="text nav-text">Xoá tài khoản</span>
            </a>
          </li>
          <li class="nav-link hide-user">
            <a href="../manage/update.php?ma=<?php echo $user['ma'] ?>">
              <span class="text nav-text">Sửa thông tin</span>
            </a>
          </li>
          <!-- Goods -->
          <li class="nav-link">
            <a href="#" onclick="hien2()">
              <i class="bx bx-bell icon"></i>
              <span class="text nav-text">Quản lý hàng hoá</span>
            </a>
          </li>
          <li class="nav-link hide-roots">
            <a href="../goods/">
              <span class="text nav-text">Thêm hàng hoá</span>
            </a>
          </li>
          <li class="nav-link hide-roots">
            <a href="../goods/search.php">
              <span class="text nav-text">Xem/ Tìm kiếm</span>
            </a>
          </li>
          <li class="nav-link hide-roots">
            <a href="../goods/update.php?ma=<?php echo $item['ma'] ?>">
              <span class="text nav-text">Chỉnh sửa thông tin</span>
            </a>
          </li>
          <li class="nav-link hide-roots">
            <a href="../goods/delete.php?ma=<?php echo $item['ma'] ?>">
              <span class="text nav-text">Xóa hàng</span>
            </a>
          </li>
          <li class="nav-link">
            <a href="#" onclick="hien3()">
              <i class="bx bx-pie-chart-alt icon"></i>
              <span class="text nav-text">Thống kê</span>
            </a>
          </li>
          <li class="nav-link hide-list">
            <a href="../charts">
              <span class="text nav-text">Thống kê số lượng</span>
            </a>
          </li>
          <li class="nav-link hide-list">
            <a href="#">
              <span class="text nav-text">Xem biểu đồ</span>
            </a>
          </li>
        </ul>
      </div>

      <div class="bottom-content">
        <li class="">
          <a href="#">
            <i class="bx bx-log-out icon"></i>
            <span class="text nav-text">Logout</span>
          </a>
        </li>
      </div>
    </div>
  </nav>
  <script>
    function hien1() {
      var a = document.querySelectorAll('.hide-user');
      var b = a[0].style.display;
      if (b == "" || b == "none") {
        a.forEach(item => {
          item.style.display = "block";
        })
      } else {
        a.forEach(item => {
          item.style.display = "none";
        })
      }

    };

    function hien2() {
      var a = document.querySelectorAll('.hide-roots');
      var b = a[0].style.display;
      if (b == "" || b == "none") {
        a.forEach(item => {
          item.style.display = "block";
        })
      } else {
        a.forEach(item => {
          item.style.display = "none";
        })
      }

    };

    function hien3() {
      var a = document.querySelectorAll('.hide-list');
      var b = a[0].style.display;
      if (b == "" || b == "none") {
        a.forEach(item => {
          item.style.display = "block";
        })
      } else {
        a.forEach(item => {
          item.style.display = "none";
        })
      }

    };
  </script>
  <!-- Header -->
  <section class="home">

    <div class="header-top">
      <div class="search">
        <input type="text" class="searchTerm" placeholder="What are you looking for?">
        <button type="submit" class="searchButton">
          <i class="fa fa-search"></i>
        </button>
        <div class="img-user"><span><img width="50" height="50" src="https://cdn-icons-png.flaticon.com/512/3135/3135768.png" alt=""></span></div>
      </div>

    </div>


    <!-- Code xử lý -->


    <!-- Footer -->
  </section>
  <script src='../assets/js/menu.js'></script>
  <!-- link file js hiển thị toast message -->
  <script src="../assets/js/toast_msg.js"></script>
  <!-- Gọi hàm show_toast khi có dữ liệu trả về -->
  <?php if (isset($_SESSION['info_title']) && isset($_SESSION['info_message']) && isset($_SESSION['info_type'])) { ?>
    <?php
    $info_title = $_SESSION['info_title'];
    $info_message = $_SESSION['info_message'];
    $info_type = $_SESSION['info_type'];
    unset($_SESSION['info_title']);
    unset($_SESSION['info_message']);
    unset($_SESSION['info_type']);
    echo "<script>showToast({
          title: '$info_title',
          message: '$info_message',
          type: '$info_type',
      })</script>";
    ?>
  <?php } ?>

  <!-- link file js xử lý validator(kiểm tra hợp lệ) của form -->
  <script type="module">
    import Validator from "../assets/js/validator.js"
    /* Đặt id cho form và viết tương ứng vào trong ('#form-') */
    const formAdd = new Validator('#form-')
  </script>
</body>

</html>