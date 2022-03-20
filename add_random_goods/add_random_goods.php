<?php
require_once("../connect.php");
require_once("../root/decode_ajax.php");

$ten_hang = addslashes($decoded['tenHang']);
$gia_nhap = addslashes($decoded['giaNhap']);
$gia_ban = addslashes($decoded['giaBan']);
$so_luong_da_ban = addslashes($decoded['slDaBan']);
$so_luong_ton = addslashes($decoded['slTon']);
$create_at = addslashes($decoded['createAt']);
$ma_nha_cung_cap = 1;
$ma_loai_hang = 1;

$sql = "insert into hang_hoa (ten_hang, gia_nhap,gia_ban, so_luong_da_ban, so_luong_ton, ma_nha_cung_cap, ma_loai_hang, create_at) values ('$ten_hang', '$gia_nhap','$gia_ban', '$so_luong_da_ban', '$so_luong_ton', '$ma_nha_cung_cap', '$ma_loai_hang', '$create_at')";

mysqli_query($conn, $sql);
