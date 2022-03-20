<?php
include("../connect.php");
// ----------------------------------------------------------------
$sql = 'SELECT * FROM hang_hoa ORDER BY ma DESC LIMIT 1';
$resultLast = mysqli_query($conn, $sql);
$item = mysqli_fetch_array($resultLast);

$sql = 'SELECT * FROM nhan_vien ORDER BY ma DESC LIMIT 1';
$resultLast = mysqli_query($conn, $sql);
$user = mysqli_fetch_array($resultLast);

mysqli_close($conn);
?>

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
          <a href="../goods/staff.php">
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
          <a href="../goods/staff.php">
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