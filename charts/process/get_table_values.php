<?php
session_start();
require_once("../../connect.php");
require_once("../../root/decode_ajax.php");

/// Variables
$page = addslashes($decoded['page']);

$nop = $_SESSION['nop'];
$window = $_SESSION['window'];


// Total records
$sql_total_records = "select count(*) from hang_hoa";
$arr_total = mysqli_query($conn, $sql_total_records);
$total_result = mysqli_fetch_array($arr_total);
$total_records = $total_result['count(*)'];
$num_records_novel = $total_records;

// Number records / page
$total_page = ceil($total_records / $nop);
if ($page > $total_page || $page < 1) $page = 1;
$offset = $nop * ($page - 1);

// Final condition
$arr = [];
$i = 0;

$sql = "select * from hang_hoa limit $nop offset $offset";

$result = mysqli_query($conn, $sql);

$arr_info['total_page'] = $total_page;
$arr_info['nop'] = $nop;
$arr_info['window'] = $window;

foreach ($result as $each) {
  $arr[$i]['ten_hang'] = $each['ten_hang'];
  $arr[$i]['so_luong_da_ban'] = $each['so_luong_da_ban'];
  $arr[$i]['so_luong_ton'] = $each['so_luong_ton'];
  $i++;
}

echo json_encode([$arr, $arr_info]);
