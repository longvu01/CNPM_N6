<?php
session_start();
// Number records / page
$_SESSION['nop'] = 5;
// Number buttons page display
$_SESSION['window'] = 5;
?>

<!-- Start HTML -->
<?php require_once('../root/top.php') ?>
<?php top('Sửa thông tin nhân viên') ?>
<link rel='stylesheet' href='./css/chart_full.css'>
<link rel='stylesheet' href='./css/chart_detail.css'>
<link rel='stylesheet' href='./css/table_charts.css'>
<script src="https://cdn.jsdelivr.net/gh/linways/table-to-excel@v1.0.4/dist/tableToExcel.js"></script>
<!-- Chart full -->
<script defer src="https://code.highcharts.com/highcharts.js"></script>
<script defer src="https://code.highcharts.com/modules/series-label.js"></script>
<script defer src="https://code.highcharts.com/modules/exporting.js"></script>
<script defer src="https://code.highcharts.com/modules/export-data.js"></script>
<script defer src="https://code.highcharts.com/modules/accessibility.js"></script>
<!-- Chart detail -->
<script defer src="https://code.highcharts.com/modules/data.js"></script>
<script defer src="https://code.highcharts.com/modules/drilldown.js"></script>
<script defer src="./js/get_quantity_full.js"></script>
<script defer src="./js/get_detail.js"></script>
<script defer src="./js/get_data_table.js"></script>

</head>

<body>
  <div id="toast"></div>
  <?php require_once('../root/menu.php') ?>
  <?php require_once('../root/header.php') ?>

  <div class="container">
    <div class="hello-user">
      <h2>Xin chào,</h2>
      <h2>USER NAME</h2>
    </div>

    <div class="button-add">

    </div>

    <div class="title">
      <h2>Thống kê số lượng</h2>
    </div>

    <div class="table">
      <div class="wrap">
        <!-- Chart Detail -->
        <div class="chart-container">
          <figure class="highcharts-figure">
            <div id="container_detail"></div>
          </figure>

          <figure class="highcharts-figure">
            <!-- Chart Full -->
            <label for="" class="chart__label">
              Chọn số ngày thống kê:
              <select name="" id="chart__select">
                <option value="7">7</option>
                <option value="30" selected>30</option>
                <option value="60">60</option>
              </select>
            </label>
            <div id="container"></div>
          </figure>
        </div>

        <!-- Table -->
        <table id="table">
          <tr>
            <th>Tên hàng hóa</th>
            <th>Ảnh</th>
            <th>Số lượng bán</th>
            <th>Số lượng tồn</th>
          <tr id="row">
          </tr>
        </table>

        <div class="pagination"></div>

        <button id="export_excel" onclick="exportReportToExcel(this);"> Xuất bảng này ra Excel </button>

        <h3 style="text-align: center; margin: 24px">Hoặc xuất nhiều data hơn</h3>

        <form method="POST" class="form-export" action="./excel/export.php">
          <label for="limit">Nhập số lượng cần xuất(tối đa):</label>
          <input name="limit" class="" id="limit">
          <input type="submit" id="submit" name="submit" class="btn btn-primary" value="Xuất ra Excel" />
        </form>

      </div>

      <?php require_once('../root/footer.php') ?>
      <script src="../assets/js/toast_msg.js"></script>
      <?php require_once('../root/show_toast.php') ?>

      <script>
        function exportReportToExcel() {
          let table = document.getElementsByTagName("table");
          TableToExcel.convert(table[0], {
            name: `export.xlsx`, // fileName 
            sheet: {
              name: 'Sheet 1' // sheetName
            }
          });
        }
      </script>

      <script type="module">
        import Validator from "../assets/js/validator.js"
        const formAdd = new Validator('#form-add')
      </script>
</body>

</html>